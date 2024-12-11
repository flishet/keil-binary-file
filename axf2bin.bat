
set KEIL_BIN_PATH=D:\Keil_v5\ARM\ARMCC\bin
set AXF_PATH=C:\Users\RayanRoshd\Desktop\mohsen\Joystick\Objects
set TARGET_DIR=C:\Users\RayanRoshd\Desktop\mohsen\Joystick\Objects
set CURRENT_PATH=%cd%
set OUTPUT_FILE=out.bin
set FINAL_NAME=firmware.bin
cd /d "%KEIL_BIN_PATH%"
fromelf --bin --output="%AXF_PATH%\%OUTPUT_FILE%" "%AXF_PATH%\*.axf"
cd /d "%AXF_PATH%\%OUTPUT_FILE%"
ren "ER_IROM1" "%FINAL_NAME%"
copy "%FINAL_NAME%" "%TARGET_DIR%" /y
copy "%FINAL_NAME%" "%CURRENT_PATH%" /y
cd /d "%AXF_PATH%
rd /s /q "%OUTPUT_FILE%"

