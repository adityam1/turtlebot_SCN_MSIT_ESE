#### this is a five node demo use case with service dependency
- demoNode4: 
    provides demoNode4TestService

- demoNode5:
    provides demoNode5TestService
    uses demoNode4TestService

- demoNode6:
    provides demoNode6TestService
    uses demoNode5TestService

- demoNode7:
    provides demoNode7TestService
    uses demoNode6TestService

- demoNode8: (will be used to replace demoNode4)
    provides demoNode4TestService

#### dependency graph
        7                       7
       /                       /
      6                       6
     /           -->         /
    5                       5
   /                        \
  4 (old)                    8 (new)

#### roservice call command to test userInterfaceService, this can be used to invoke the node switch
`rosservice call /userInterfaceService '{reconType: 2, oldNode: demoNode4, oldNodePackage: reconfigure, newNode: demoNode8, newNodePackage: reconfigure}'`
