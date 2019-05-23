VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_7
        SIGNAL XLXN_1
        SIGNAL XLXN_2(7:0)
        SIGNAL PS2_Clk
        SIGNAL PS2_Data
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL Clk_50MHz
        SIGNAL XLXN_18
        SIGNAL BTN_SOUTH
        SIGNAL RS232_RxD
        SIGNAL RS232_TxD
        PORT Input PS2_Clk
        PORT Input PS2_Data
        PORT Input Clk_50MHz
        PORT Input BTN_SOUTH
        PORT Input RS232_RxD
        PORT Output RS232_TxD
        BEGIN BLOCKDEF PS2_Rx
            TIMESTAMP 2009 5 15 10 32 12
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF RS232
            TIMESTAMP 2008 9 23 11 16 17
            LINE N 64 32 0 32 
            LINE N 384 -288 320 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 64 -320 320 64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 PS2_Rx
            PIN PS2_Clk PS2_Clk
            PIN PS2_Data PS2_Data
            PIN Clk_50MHz Clk_50MHz
            PIN Clk_Sys Clk_50MHz
            PIN DO_Rdy XLXN_1
            PIN DO(7:0) XLXN_2(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 RS232
            PIN Clk_50MHz Clk_50MHz
            PIN Reset BTN_SOUTH
            PIN RS232_RxD RS232_RxD
            PIN TxStart XLXN_1
            PIN TxDI(7:0) XLXN_2(7:0)
            PIN TxBusy
            PIN RxRdy
            PIN RS232_TxD RS232_TxD
            PIN RxDO(7:0)
            PIN Clk_Sys Clk_50MHz
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN DISPLAY 3008 2528 TEXT Test_PS2Rx_RS
            FONT 56 "Arial"
        END DISPLAY
        BEGIN DISPLAY 3008 2608 TEXT "J. Sugier, 2009"
            FONT 56 "Arial"
        END DISPLAY
        BEGIN INSTANCE XLXI_1 1200 1344 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1584 1184 1936 1184
        END BRANCH
        BEGIN BRANCH XLXN_2(7:0)
            WIRE 1584 1120 1936 1120
        END BRANCH
        BEGIN INSTANCE XLXI_2 1936 1344 R0
        END INSTANCE
        BEGIN BRANCH PS2_Clk
            WIRE 784 1120 1184 1120
            WIRE 1184 1120 1200 1120
        END BRANCH
        BEGIN BRANCH PS2_Data
            WIRE 784 1184 1184 1184
            WIRE 1184 1184 1200 1184
        END BRANCH
        BEGIN BRANCH Clk_50MHz
            WIRE 784 1568 1184 1568
            WIRE 1184 1568 1920 1568
            WIRE 1184 1248 1200 1248
            WIRE 1184 1248 1184 1312
            WIRE 1184 1312 1200 1312
            WIRE 1184 1312 1184 1568
            WIRE 1920 1312 1936 1312
            WIRE 1920 1312 1920 1376
            WIRE 1920 1376 1936 1376
            WIRE 1920 1376 1920 1568
        END BRANCH
        BEGIN BRANCH BTN_SOUTH
            WIRE 784 1504 1840 1504
            WIRE 1840 1248 1936 1248
            WIRE 1840 1248 1840 1504
        END BRANCH
        BEGIN BRANCH RS232_RxD
            WIRE 2320 1056 2336 1056
            WIRE 2336 1056 2624 1056
        END BRANCH
        BEGIN BRANCH RS232_TxD
            WIRE 2320 1120 2336 1120
            WIRE 2336 1120 2624 1120
        END BRANCH
        IOMARKER 2624 1120 RS232_TxD R0 28
        IOMARKER 2624 1056 RS232_RxD R0 28
        IOMARKER 784 1120 PS2_Clk R180 28
        IOMARKER 784 1184 PS2_Data R180 28
        IOMARKER 784 1568 Clk_50MHz R180 28
        IOMARKER 784 1504 BTN_SOUTH R180 28
    END SHEET
END SCHEMATIC
