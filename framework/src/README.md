experiments/     -- WORKSPACE
  src/                  -- SOURCE SPACE
    README.md            -- this file
    CMakeLists.txt        -- 'Toplevel' CMake file, provided by catkin

    scn_library/           -- scn_library folder to hold system configuration node library [built as library]
        CMakeLists.txt     -- CMakeLists.txt file for scn_library package
        package.xml        -- Package manifest for scn_library package

    reconfigure/           -- reconfigure folder to add reconfigure node and dependencies [built as executable]
        CMakeLists.txt     -- CMakeLists.txt file for reconfigure package
        package.xml        -- Package manifest for reconfigure package
