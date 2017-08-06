#### this is a three node demo use case with topic dependency
- demoNode18: 
    publishes demoNode18TestPublisher

- demoNode19: (will be used to replace demoNode1)
    publisher demoNode18TestPublisher

- demoNode20:
    subscribes demoNode18TestPublisher

#### dependency graph
    20          20
   /    -->     /
  18 (old)     19 (new)

#### roservice call command to test userInterfaceService, this can be used to invoke the node switch
`rosservice call /userInterfaceService '{old_node: demoNode18, new_node: demoNode19, new_node_package: reconfigure}`
