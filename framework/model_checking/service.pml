/**
  * Define mtypes for different message types
  * - INIT, before SCN sends the "INIT" message, other nodes should spin
  * - NOR, normal operation mode
  * - ES, "enter safe mode" message sent from SCN to nodes
  * - LS, "leave safe mode" message sent from SCN to nodes
  * - TP, topics
  * - RES, response given from other nodes 0 - success, 1 - fail


  Model assumptions:
  *Node A is the server/publisher
  *Node B is the client/subscriber
  *Node SCN is the system control node
  *Safe mode implies reconfiguration mode

  */


mtype {NULL, INIT, NOR, ES, LS, TP, RES, 
      /* response status message */
      OK_A, OK_B, ERR_A, ERR_B, OK_SCN, ERR_SCN };


chan SCN2A = [3] of { mtype, int };    // SCN2A channel with defined message, int can be 0(normal), 1(safe), -1(X, intermediate)
chan SCN2B = [3] of { mtype, int };    // SCN2B channel with defined message, int can be 0(normal), 1(safe), -1(X, intermediate)
chan A2SCN = [3] of { mtype, int };    // A2SCN channel with defined message, int can be 0(normal), 1(safe), -1(X, intermediate)
chan B2SCN = [3] of { mtype, int };    // B2SCN channel with defined message, int can be 0(normal), 1(safe), -1(X, intermediate)

chan A2B = [3] of { mtype };      // message sent from A to B
chan B2A = [3] of { mtype };      // message sent froom B to A

int nextStep  = INIT;
int lastFeedbackRecv = NULL;

bool inited = false;  // mutex for INIT to make sure SCN inited before other nodes
int gSafeMode = 0;    // safe mode flag: 0 - normal, 1 - safe 
int PRT_FREQ = 200000;  // print frequency

bool isA2SCN = false;
bool isSCN2A = false;
bool isB2SCN = false;
bool isSCN2B = false;

bool ASafeMode = false;
bool BSafeMode = false;
bool SCNSafeMode = false;

bool AExists = false;
bool BExists = false;
bool SCNExists = false;

bool AESReqReceived = false;
bool ALSReqReceived = false;
bool BESReqReceived = false;
bool BLSReqReceived = false;
bool SCNESReqReceived = false;
bool SCNLSReqReceived = false;

bool AServiceCallPossible = true;
bool BServiceCallPossible = true;

#define AInSafeMode (ASafeMode == true)
#define BInSafeMode (BSafeMode == true)
#define SCNInSafeMode (SCNSafeMode == true)

#define AInExists (AExists == true)
#define BInExists (BExists == true)
#define SCNInExists (SCNExists == true)

/**
 * property1: A node providing a service to another node shall not enter recon mode until the other node is in recon mode.
 */
ltl property1 { [] ((!AInSafeMode) U BInSafeMode) }

/**
 * property2: If SCN node is in normal mode, any other node shall be in normal mode.
 */
ltl property2 { [] ((!SCNInSafeMode) -> (!AInSafeMode) ) }

/**
 * property3: If a node is in reconfiguration mode implies the SCN is in reconfiguration mode.
 */
ltl property3 { [] ((AInSafeMode) -> (SCNInSafeMode)) }

/**
 * property4: If the SCN is reconfiguration mode, it will eventually exit reconfiguration mode.
 */
ltl property4 { [] ( (SCNInSafeMode) -> (<> (!SCNInSafeMode)) ) }

/**
 * property5: If a node enters reconfiguration mode, it will eventually either exit reconfiguration mode or not exist.
 */
ltl property5 { [] ( (AInSafeMode) -> (<> ( (!AInSafeMode) || (!AInExists) ) ) ) }

/**
 * property6: If the first node is calling a service of the second node, 
 * the second node shall always exit reconfiguration mode before the first node
 */
ltl property6 { [] ( (BInSafeMode) U (!AInSafeMode) )}

/**
 * property7: All nodes shall be in normal mode until they receive a request to enter recon mode.
 */
ltl property7 { [] ( (!AInSafeMode) U (AESReqReceived == true))}

/**
 * property8: A node making a service call always implies it is in normal mode.
 */
ltl property8 { [] ((AServiceCallPossible == true) -> (!AInSafeMode)) }

/**
 * property9: When a recon request is received, all nodes that have dependencies with respect 
 * to the nodes present in the request shall eventually enter recon mode
 */
ltl property9 { [] ( (isSCN2A) -> (<> (AInSafeMode)) ) }

/**
  * Node B's process - uses service provided by A
  * - B2SCN out
  * - B2A out
  * - SCN2B in
  * - A2B in
  * state changes:
  *     - before "INIT" spin and do nothing
  *     - between "INIT" and "ES" normal working mode, receive message sent from Node A
  *     - in "ES", stop receive message from Node A, do reconfigure work and sends feedback to SCN
  *     - in "LS", do reconfigure work and sends feedback to SCN
  */
proctype NodeB(chan _B2SCN, _B2A, _SCN2B, _A2B) {
    printf("[NodeB] Enter Node B\n");
    int msgType, msgText, dataMsg;
    inited == true;
    _SCN2B ? msgType, msgText;
    if
    :: (msgType == INIT) ->
      printf("[NodeB] Recv INIT message from SCN\n");
      _B2SCN ! RES, OK_B;
      printf("[NodeB] Send OK message to SCN\n");
    :: (msgType != INIT) -> 
      printf("[NodeB] Recv INIT message from SCN\n");
      _B2SCN ! RES, ERR_B;
      printf("[NodeB] Send OK message to SCN fail\n");
    fi

    do
      :: (nextStep == NOR) -> atomic {
        printf("[NodeB] start of normal operation of B\n");
        BServiceCallPossible = true;
        do
          :: (gSafeMode == 0) ->
            //_A2B ? dataMsg;
            printf(" ... B\n");
          :: (gSafeMode == 1) -> 
            break;
        od
        printf("[NodeB] end of normal operation of B\n");
      }
      :: (nextStep == ES && isSCN2B == true) -> atomic {
        _SCN2B ? msgType, msgText;
        BServiceCallPossible = false;
        isSCN2B = false;
        if
          :: (msgType == ES) -> 
            printf("[NodeB] Recv ES for B ...\n");
            BSafeMode = true;
            _B2SCN ! RES, OK_B;
            printf("[NodeB] Recv ES for B done\n");
            isB2SCN = true;
          :: (msgType != ES) -> 
            printf("[NodeB] Recv ES for B ...\n");
            _B2SCN ! RES, ERR_B;
            printf("[NodeB] Recv ES for B fail\n");
            isB2SCN = true;
        fi
      }
      :: (nextStep == LS && isSCN2B == true) -> atomic {
        _SCN2B ? msgType, msgText;
        isSCN2B = false;
        if
        :: (msgType == LS) ->
          printf("[NodeB] Recv LS for B...\n");
          _B2SCN ! RES, OK_B;
          BSafeMode = false;
          printf("[NodeB] Recv LS for B done\n");
          isB2SCN = true;
        :: (msgType != LS) ->
          printf("[NodeB] Recv LS for B...\n");
          _B2SCN ! RES, ERR_B;
          printf("[NodeB] Recv LS for B fail\n");
          isB2SCN = true;
        fi
        break;
      }
    od
    printf("[NodeB] Leave Node B\n");
}

/**
  * Node A's process - provides service that B uses
  * - A2SCN out,
  * - A2B out
  * - SCN2A in
  * - B2A in
  * state changes:
  *     - before "INIT" spin and do nothing
  *     - between "INIT" and "ES" normal working mode, send message to Node B
  *     - in "ES", stop publish message, do reconfigure work and sends feedback to SCN
  *     - in "LS", do reconfigure work and sends feedback to SCN
  */
proctype NodeA(chan _A2SCN, _A2B, _SCN2A, _B2A) {
    printf("[NodeA] Enter Node A\n");
    int msgType, msgText;

    inited == true;
    _SCN2A ? msgType, msgText;
    if 
      :: (msgType == INIT) ->
        printf("[NodeA] Recv INIT message from SCN\n");
        _A2SCN ! RES, OK_A;
        printf("[NodeA] Send OK message to SCN\n");
      :: (msgType != INIT) ->
        printf("[NodeA] Recv INIT message from SCN\n");
        _A2SCN ! RES, ERR_A;
        printf("[NodeA] Send OK message to SCN fail\n");
    fi
   
    do
    :: (nextStep == NOR) -> atomic {
        printf("[NodeA] begin normal operation of A\n");
        int i = 0;
        AServiceCallPossible = true;
        do
          :: (gSafeMode == 0 && i < 0) -> 
            //_A2B ! TP;
            i++;
          :: (gSafeMode == 0 && i >= 0) -> 
            i--;
            printf("A ... \n");
          :: (gSafeMode == 1) -> break;
        od
        
        printf("[NodeA] end of normal operation of A\n");
    }
    :: (nextStep == ES && isSCN2A == true) -> atomic {
        AServiceCallPossible = false;
        _SCN2A ? msgType, msgText;
        if
        :: (msgType == ES) -> 
            printf("[NodeA] Recv ES for A ...\n");
            AESReqReceived = true;
            ASafeMode = true;
            _A2SCN ! RES, OK_A;
            printf("[NodeA] Recv ES for A done\n");
        :: (msgType != ES) -> 
            printf("[NodeA] Recv ES for A ...\n");
            _A2SCN ! RES, ERR_A;
            printf("[NodeA] Recv ES for A fail\n");
        fi
        isA2SCN = true;
        isSCN2A = false;
    }
    :: (nextStep == LS && isSCN2A == true) -> atomic {
        _SCN2A ? msgType, msgText;
        AESReqReceived = false;
        if 
        :: (msgType == LS) ->
          printf("[NodeA] Recv LS for A ...\n");
          _A2SCN ! RES, OK_A;
          ASafeMode = false;
          printf("[NodeA] Recv LS for A done\n");
        :: (msgType != LS) ->
          printf("[NodeA] Recv LS for A ...\n");
          _A2SCN ! RES, ERR_A;
          printf("[NodeA] Recv LS for A fail\n");
        fi
        isA2SCN = true;
        isSCN2A = false;
        break;
      }
    od
    
    printf("[NodeA] Leave Node A\n");
}

/**
  * SystemControlNode's process
  * - SCN2A out
  * - SCN2B out
  * - A2SCN in
  * - B2SCN in
  */
proctype SystemControlNode(chan _SCN2A, _SCN2B, _A2SCN, _B2SCN) {
    printf("[SCN] Enter SystemControlNode\n");
    int msg, msg_A = -1, msg_B = -1;
    int loop = 0;

    printf("INIT: %d, NOR: %d, ES: %d, LS: %d\n", INIT, NOR, ES, LS);

    // INIT the system and do normal operations
    (nextStep == INIT) -> 
      atomic {
        _SCN2A ! INIT, 0;
        printf("[SCN] send INIT message to A\n");
        _SCN2B ! INIT, 0;
        printf("[SCN] send INIT message to B\n");
        inited = true;
  
        _A2SCN ? RES, msg;
        if 
          :: (msg == OK_A) -> 
            lastFeedbackRecv = OK_A;
            printf("[SCN] recv OK message from A\n");
          :: (msg == ERR_A) -> goto error;
            printf("[SCN] recv ERR message from A\n");
        fi
        
        _B2SCN ? RES, msg;
        if 
          :: (msg == OK_B) -> 
            lastFeedbackRecv = OK_B;
            printf("[SCN] recv OK message from B\n");
          :: (msg == ERR_B) -> 
            goto error;
            printf("[SCN] recv ERR message from B\n");
        fi
        nextStep = NOR;
        printf("[SCN] End of system init !!!\n");
    }

    // main loop of SCN
    do
      // put the system to safe mode
      :: (nextStep == NOR) -> 
        atomic {
          if 
            :: (loop == 1) -> goto error;
            :: (loop != 1) -> printf("[SCN] enter normal mode started\n");
          fi
          int count = 0;
          do
          //:: (count < 0) -> count = count + 1;
          //:: (count >= 0) -> count = count - 1;
          :: (count == 0) -> break;
          od
          loop++;
          nextStep = ES;
          printf("[SCN] enter normal mode done\n");
        }
      :: (nextStep == ES) -> 
          atomic {
            printf("[SCN] enter safe mode started\n");
            gSafeMode = 1;
            SCNSafeMode = true;
            _SCN2B ! ES, 0;
            printf("[SCN] send ES message to B\n"); 
            isSCN2B = true;

            (isB2SCN == true) -> 
              _B2SCN ? RES, msg_B;
              if 
                :: (msg_B == OK_B) -> 
                  lastFeedbackRecv = OK_B;
                  printf("[SCN] recv OK message from B for ES\n");
                :: (msg_B == ERR_B) -> goto error;
                  printf("[SCN] recv ERR message from B for ES\n");
              fi
            isB2SCN = false;

            _SCN2A ! ES, 0;
            printf("[SCN] send ES message to A\n");
            isSCN2A = true;
            
            (isA2SCN == true) ->  
              _A2SCN ? RES, msg_A;
              if 
                :: (msg_A == OK_A) -> 
                  lastFeedbackRecv = OK_A;
                  printf("[SCN] recv OK message from A for ES\n");
                :: (msg_A == ERR_A) -> goto error;
                  printf("[SCN] recv ERR message from A for ES\n");
              fi
            isA2SCN = false;
       
            nextStep = LS;
            printf("[SCN] enter safe mode done\n");
          }
      // put the system back to normal mode
      :: (nextStep == LS) ->
        atomic {
          printf("[SCN] leave safe mode started\n");
          _SCN2A ! LS, 0;
          printf("[SCN] send LS message to A\n");
          isSCN2A = true;

          (isA2SCN == true) ->  
            _A2SCN ? RES, msg;
            if 
              :: (msg == OK_A) -> 
                lastFeedbackRecv = OK_A;
                printf("[SCN] recv OK message from A for LS\n");
              :: (msg == ERR_A) -> goto error;
                printf("[SCN] recv ERR message from A for LS\n");
            fi
          isA2SCN = false;

          _SCN2B ! LS, 0;
          printf("[SCN] send LS message to B\n");
          isSCN2B = true;

          (isB2SCN == true) -> 
            _B2SCN ? RES, msg;
            if 
              :: (msg == OK_B) -> 
                  lastFeedbackRecv = OK_B;
                printf("[SCN] recv OK message from B for LS\n");
              :: (msg == ERR_B) -> goto error;
                printf("[SCN] recv ERR message from B for LS\n");
            fi
          isB2SCN = false;

          gSafeMode = 0;
          SCNSafeMode = false;
          printf("[SCN] leave safe mode done\n");
          nextStep = NOR;
          break;
        }
    od
        
error:
    printf("[SCN] Leave SystemControlNode\n");
}

init {
    run SystemControlNode(SCN2A, SCN2B, A2SCN, B2SCN);  // out, out, in, in
    run NodeA(A2SCN, A2B, SCN2A, B2A);  // out, out, in, in
    run NodeB(B2SCN, B2A, SCN2B, A2B);  // out, out, in, in
}
  