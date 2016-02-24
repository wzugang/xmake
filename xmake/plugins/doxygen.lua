-- define task
task("doxygen")

    -- set category
    set_task_category("plugin")

    -- set menu
    set_task_menu({
                    -- usage
                    usage = "xmake doxygen [options] [name] [arguments]"

                    -- description
                ,   description = "Generate the doxygen document for the given name"

                    -- options
                ,   options = 
                    {
                        {'f', "file",       "kv", nil,          "Read a given xmake.lua file."                                  }
                    ,   {'P', "project",    "kv", nil,          "Change to the given project directory."
                                                              , "Search priority:"
                                                              , "    1. The Given Command Argument"
                                                              , "    2. The Envirnoment Variable: XMAKE_PROJECT_DIR"
                                                              , "    3. The Current Directory"                                  }

                    ,   {}
                    ,   {'v', "verbose",    "k",  nil,          "Print lots of verbose information."                            }
                    ,   {nil, "version",    "k",  nil,          "Print the version number and exit."                            }
                    ,   {'h', "help",       "k",  nil,          "Print this help message and exit."                             }
                    
                    ,   {}
                    ,   {nil, "name",       "v",  "all",        "Configure for the given document name."                               }

                    }
                })


