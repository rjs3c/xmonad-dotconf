Config {
        font = "xft:Noto Sans LGC:size=11:style=Regular",
       , additionalFonts = ["xft:Noto Sans:size=10:style=Bold","xft:FontAwesome:style=Regular:size=13"]    
        --font = "xft:Zekton:size=11:bold:antialias=true"
       --, additionalFonts = [ "xft:FontAwesome:size=11" ]
       , allDesktops = True
       , bgColor = "#282c34"
       , fgColor = "#bbc2cf"
       , position = TopW L 95
       , commands = [ Run Cpu [ "--template", "<fc=#a9a1e1><fn=1>C</fn></fc> <total>%"
                              , "--Low","3"
                              , "--High","50"
                              , "--low","#bbc2cf"
                              , "--normal","#bbc2cf"
                              , "--high","#fb4934"] 50

                    , Run Memory ["-t","<fc=#51afef><fn=1>M</fn></fc> <usedratio>%"
                                 ,"-H","80"
                                 ,"-L","10"
                                 ,"-l","#bbc2cf"
                                 ,"-n","#bbc2cf"
                                 ,"-h","#fb4934"] 50

                    , Run Date "<fc=#ECBE7B><fn=1></fn></fc> %a %b %_d %T" "date" 300
                    , Run DynNetwork ["-t","<fc=#4db5bd><fn=1>D</fn></fc> <rx>, <fc=#c678dd><fn=1>U</fn></fc> <tx>"
                                     ,"-H","200"
                                     ,"-L","10"
                                     ,"-h","#bbc2cf"
                                     ,"-l","#bbc2cf"
                                     ,"-n","#bbc2cf"] 50

                    , Run CoreTemp ["-t", "<fc=#CDB464><fn=1>T</fn></fc> <core0>°"
                                   , "-L", "30"
                                   , "-H", "75"
                                   , "-l", "lightblue"
                                   , "-n", "#bbc2cf"
                                   , "-h", "#aa4450"] 50

                    , Run StdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "%StdinReader% }{ %cpu% | %coretemp% | %memory% | %dynnetwork% | %date%  |"   -- #69DFFA
       }
