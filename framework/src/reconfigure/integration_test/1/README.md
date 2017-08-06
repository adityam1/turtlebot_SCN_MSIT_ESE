#### this is a three node demo use case with service dependency
- demoNode1: 
    provides demoNode1TestService

- demoNode2: (will be used to replace demoNode1)
    provides demoNode1TestService

- demoNode3:
    uses demoNode1TestService

#### dependency graph
    3             3
   /      -->      \
  1 (old)           2 (new)

#### roservice call command to test userInterfaceService, this can be used to invoke the node switch
`rosservice call /userInterfaceService '{old_node: demoNode1, new_node: demoNode2, new_node_package: reconfigure}`
