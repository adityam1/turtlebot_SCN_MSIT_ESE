#### this is a five node demo use case with service dependency
- demoNode9:
    provides demoNode9TestService

- demoNode10:
    provides demoNode10TestService
    uses demoNode9TestService

- demoNode11:
    provides demoNode11TestService
    uses demoNode10TestService

- demoNode12:
    provides demoNode12TestService
    uses demoNode10TestService

- demoNode13:
    provides demoNode13TestService
    uses demoNode11TestService

- demoNode14:
    uses demoNode12TestService
    uses demoNode16TestService

- demoNode15:
    uses demoNode12TestService

- demoNode16:
    provides demoNode16TestService
    uses demoNode9TestService

- demoNode17: (will be used to replace demoNode10)
    provides demoNode10TestService
    uses demoNode9TestService

#### dependency graph

       13   15  14                   13   15  14 
        \    \ / \                    \    \ / \ 
        11   12   16                  11   12   16
         \  /    /       -->           \  /    / 
    (old) 10    /                 (new) 17    /
           \  /                          \  /     
            9                             9      

#### nodes 9 and 16 should not experience any disruption due to reconfiguration 

#### roservice call command to test userInterfaceService, this can be used to invoke the node switch
`rosservice call /userInterfaceService '{reconType: 2, oldNode: demoNode10, oldNodePackage: reconfigure, newNode: demoNode17, newNodePackage: reconfigure}'`

