@echo off
color 0a
set DNS1=103.85.204.222
set DNS2=1.1.1.1
set INTERFACE=Ethernet

netsh int ipv4 set dns name="%INTERFACE%" static %DNS1% primary validate=no
netsh int ipv4 add dns name="%INTERFACE%" %DNS2% index=2

ipconfig /flushdns

pause
echo.
echo.
echo.
echo.
echo.
echo  `:////////////:.              .//.               `+o/       .://////:-.               .:/+++/-`         
echo  ydddddddddddddddho.           /ss/               oddd:     `dddddddddddhs-         :sddddddddddy+`      
echo  ydddo++++++++oydddd+          y++s      .:-      oddd:      -+++++++osddddy`     .ydddds+///oydddd+     
echo  yddd-          .yddd/         dddh     -ddd+     oddd:    `------``` `+dddy`     .dddd+`       .yddds    
echo  yddd-           -dddy  hdddh  dddh     :dddo     oddd:   /hdddddd+/yy+  yddd-    yddd:           yddd-   
echo  yddd-           oddd+  +sss+  dddd`    :ddds     sddd:  odddyssss+.:/. -dddd:    dddh`           /ddd:   
echo  ysoy-  `------:+hdddy`         odddy:../hddddo-.-odddh`  yddd+--------/sddddd:    dddh`           /yos:   
echo  -ss+  /dddddddddddh/           +dddddddddhddddddddds`   .hdddddddddddddddddd:    dddh`           `oso`   
echo  .++:  `osssssss+/.              `:ossss+- ./ossso/.       -+osssssssso+:-oso`    /ss/             /+/`   
echo.
echo. 
echo.
echo by justin                                                                                                    


pause
