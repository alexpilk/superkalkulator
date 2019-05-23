<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_45(7:0)" />
        <signal name="XLXN_46" />
        <signal name="XLXN_49" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_74(7:0)" />
        <signal name="XLXN_75" />
        <signal name="XLXN_78" />
        <signal name="XLXN_81" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="XLXN_106" />
        <signal name="RS232_RxD" />
        <signal name="RS232_TxD" />
        <signal name="XLXN_3(7:0)" />
        <signal name="XLXN_111(7:0)" />
        <signal name="XLXN_112" />
        <signal name="XLXN_4" />
        <signal name="XLXN_115" />
        <signal name="PS2_Data" />
        <signal name="BTN_SOUTH" />
        <signal name="XLXN_118" />
        <signal name="XLXN_119" />
        <signal name="XLXN_120" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_15" />
        <signal name="aaa(63:0)" />
        <signal name="SF_CE" />
        <signal name="LCD_D(3:0)" />
        <signal name="LCD_RW" />
        <signal name="LCD_RS" />
        <signal name="LCD_E" />
        <signal name="aaa(39:32)" />
        <signal name="aaa(31:0)" />
        <signal name="XLXN_40(15:0)" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_105" />
        <signal name="XLXN_107" />
        <signal name="XLXN_144" />
        <signal name="XLXN_147(7:0)" />
        <signal name="XLXN_148(7:0)" />
        <signal name="XLXN_150" />
        <signal name="aaa(51:44)" />
        <signal name="XLXN_152(7:0)" />
        <signal name="aaa(63:56)" />
        <signal name="XLXN_155(7:0)" />
        <signal name="XLXN_157" />
        <signal name="XLXN_158" />
        <signal name="XLXN_159" />
        <signal name="PS2_Clk" />
        <signal name="XLXN_166" />
        <port polarity="Input" name="RS232_RxD" />
        <port polarity="Output" name="RS232_TxD" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="BTN_SOUTH" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="XLXN_15" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Input" name="PS2_Clk" />
        <blockdef name="RS232">
            <timestamp>2017-4-3T7:6:42</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="320" y1="-288" y2="-288" x1="384" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <blockdef name="Calculator">
            <timestamp>2019-5-16T10:35:20</timestamp>
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="448" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2008-9-19T11:10:6</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="VGAtxt48x20">
            <timestamp>2019-5-16T8:22:22</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="FSM_SendByte">
            <timestamp>2019-5-16T10:12:57</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ps2_keyboard">
            <timestamp>2019-5-16T12:12:24</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="RS232" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="BTN_SOUTH" name="Reset" />
            <blockpin signalname="RS232_RxD" name="RS232_RxD" />
            <blockpin signalname="XLXN_166" name="TxStart" />
            <blockpin signalname="XLXN_3(7:0)" name="TxDI(7:0)" />
            <blockpin name="TxBusy" />
            <blockpin name="RxRdy" />
            <blockpin signalname="RS232_TxD" name="RS232_TxD" />
            <blockpin name="RxDO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="Calculator" name="XLXI_3">
            <blockpin signalname="XLXN_166" name="DI_Rdy" />
            <blockpin signalname="BTN_SOUTH" name="RST" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_3(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_15" name="y" />
            <blockpin signalname="XLXN_159" name="DO_Rdy" />
            <blockpin signalname="aaa(63:56)" name="ARG1(7:0)" />
            <blockpin signalname="aaa(51:44)" name="ARG2(7:0)" />
            <blockpin signalname="aaa(39:32)" name="DO(7:0)" />
            <blockpin signalname="XLXN_155(7:0)" name="PRINT(7:0)" />
        </block>
        <block symbolname="LCD1x64" name="XLXI_4">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="BTN_SOUTH" name="Reset" />
            <blockpin signalname="aaa(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_40(15:0)" name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="constant" name="XLXI_8">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="aaa(31:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_9">
            <attr value="24FF" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_40(15:0)" name="O" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_10">
            <blockpin signalname="XLXN_147(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_107" name="Home" />
            <blockpin name="NewLine" />
            <blockpin name="Goto00" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="CursorOn" />
            <blockpin name="ScrollEn" />
            <blockpin name="ScrollClear" />
            <blockpin name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_105" name="VGA_RGB" />
            <blockpin signalname="XLXN_144" name="Char_WE" />
        </block>
        <block symbolname="buf" name="XLXI_25">
            <blockpin signalname="XLXN_105" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_26">
            <blockpin signalname="XLXN_105" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_27">
            <blockpin signalname="XLXN_105" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_28">
            <blockpin signalname="XLXN_107" name="G" />
        </block>
        <block symbolname="FSM_SendByte" name="XLXI_29">
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_150" name="Reset" />
            <blockpin signalname="XLXN_159" name="DIRdy" />
            <blockpin name="TxBusy" />
            <blockpin signalname="XLXN_155(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_144" name="DORdy" />
            <blockpin name="Busy" />
            <blockpin signalname="XLXN_147(7:0)" name="DO(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_42">
            <blockpin signalname="XLXN_150" name="G" />
        </block>
        <block symbolname="ps2_keyboard" name="XLXI_43">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="PS2_Clk" name="ps2_clk" />
            <blockpin signalname="PS2_Data" name="ps2_data" />
            <blockpin signalname="XLXN_166" name="ps2_code_new" />
            <blockpin signalname="XLXN_3(7:0)" name="ps2_code(8:1)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1344" y="832" name="XLXI_1" orien="R0">
        </instance>
        <branch name="RS232_RxD">
            <wire x2="2016" y1="544" y2="544" x1="1728" />
        </branch>
        <branch name="RS232_TxD">
            <wire x2="2016" y1="608" y2="608" x1="1728" />
        </branch>
        <branch name="XLXN_3(7:0)">
            <wire x2="1024" y1="416" y2="416" x1="736" />
            <wire x2="1024" y1="416" y2="592" x1="1024" />
            <wire x2="1184" y1="592" y2="592" x1="1024" />
            <wire x2="1184" y1="592" y2="608" x1="1184" />
            <wire x2="1344" y1="608" y2="608" x1="1184" />
            <wire x2="1184" y1="560" y2="560" x1="1152" />
            <wire x2="1184" y1="560" y2="592" x1="1184" />
            <wire x2="1152" y1="560" y2="1472" x1="1152" />
            <wire x2="1168" y1="1472" y2="1472" x1="1152" />
        </branch>
        <branch name="BTN_SOUTH">
            <wire x2="832" y1="928" y2="928" x1="288" />
            <wire x2="1104" y1="928" y2="928" x1="832" />
            <wire x2="832" y1="928" y2="1344" x1="832" />
            <wire x2="1168" y1="1344" y2="1344" x1="832" />
            <wire x2="832" y1="1344" y2="1696" x1="832" />
            <wire x2="2400" y1="1696" y2="1696" x1="832" />
            <wire x2="1104" y1="736" y2="928" x1="1104" />
            <wire x2="1344" y1="736" y2="736" x1="1104" />
        </branch>
        <instance x="1168" y="1504" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_15">
            <wire x2="1584" y1="1280" y2="1280" x1="1552" />
        </branch>
        <instance x="2400" y="1792" name="XLXI_4" orien="R0">
        </instance>
        <branch name="aaa(63:0)">
            <wire x2="2320" y1="896" y2="976" x1="2320" />
            <wire x2="2320" y1="976" y2="1120" x1="2320" />
            <wire x2="2320" y1="1120" y2="1248" x1="2320" />
            <wire x2="2320" y1="1248" y2="1376" x1="2320" />
            <wire x2="2320" y1="1376" y2="1504" x1="2320" />
            <wire x2="2400" y1="1504" y2="1504" x1="2320" />
        </branch>
        <branch name="SF_CE">
            <wire x2="2848" y1="1760" y2="1760" x1="2816" />
        </branch>
        <branch name="LCD_D(3:0)">
            <wire x2="2848" y1="1696" y2="1696" x1="2816" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="2848" y1="1632" y2="1632" x1="2816" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="2848" y1="1568" y2="1568" x1="2816" />
        </branch>
        <branch name="LCD_E">
            <wire x2="2848" y1="1504" y2="1504" x1="2816" />
        </branch>
        <bustap x2="2224" y1="976" y2="976" x1="2320" />
        <bustap x2="2224" y1="1120" y2="1120" x1="2320" />
        <bustap x2="2224" y1="1248" y2="1248" x1="2320" />
        <branch name="aaa(39:32)">
            <wire x2="1968" y1="1472" y2="1472" x1="1552" />
            <wire x2="1968" y1="1248" y2="1472" x1="1968" />
            <wire x2="2224" y1="1248" y2="1248" x1="1968" />
        </branch>
        <bustap x2="2224" y1="1376" y2="1376" x1="2320" />
        <branch name="aaa(31:0)">
            <wire x2="2224" y1="1376" y2="1376" x1="2144" />
        </branch>
        <instance x="2000" y="1344" name="XLXI_8" orien="R0">
        </instance>
        <instance x="2000" y="1536" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_40(15:0)">
            <wire x2="2400" y1="1568" y2="1568" x1="2144" />
        </branch>
        <instance x="2528" y="1136" name="XLXI_10" orien="R0">
        </instance>
        <branch name="Clk_50MHz">
            <wire x2="2528" y1="1136" y2="1136" x1="2496" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="2528" y1="1200" y2="1200" x1="2496" />
        </branch>
        <instance x="3120" y="688" name="XLXI_25" orien="R0" />
        <instance x="3120" y="752" name="XLXI_26" orien="R0" />
        <instance x="3120" y="816" name="XLXI_27" orien="R0" />
        <branch name="VGA_R">
            <wire x2="3376" y1="656" y2="656" x1="3344" />
        </branch>
        <branch name="VGA_G">
            <wire x2="3376" y1="720" y2="720" x1="3344" />
        </branch>
        <branch name="VGA_B">
            <wire x2="3376" y1="784" y2="784" x1="3344" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2992" y1="528" y2="528" x1="2960" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="2992" y1="592" y2="592" x1="2960" />
        </branch>
        <branch name="XLXN_105">
            <wire x2="3104" y1="656" y2="656" x1="2960" />
            <wire x2="3120" y1="656" y2="656" x1="3104" />
            <wire x2="3104" y1="656" y2="720" x1="3104" />
            <wire x2="3120" y1="720" y2="720" x1="3104" />
            <wire x2="3104" y1="720" y2="784" x1="3104" />
            <wire x2="3120" y1="784" y2="784" x1="3104" />
        </branch>
        <instance x="2192" y="624" name="XLXI_28" orien="R90" />
        <branch name="XLXN_107">
            <wire x2="2528" y1="688" y2="688" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2016" y="608" name="RS232_TxD" orien="R0" />
        <iomarker fontsize="28" x="2016" y="544" name="RS232_RxD" orien="R0" />
        <iomarker fontsize="28" x="288" y="928" name="BTN_SOUTH" orien="R180" />
        <iomarker fontsize="28" x="288" y="1040" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="1584" y="1280" name="XLXN_15" orien="R0" />
        <iomarker fontsize="28" x="2848" y="1696" name="LCD_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2848" y="1760" name="SF_CE" orien="R0" />
        <iomarker fontsize="28" x="2848" y="1632" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="2848" y="1568" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="2848" y="1504" name="LCD_E" orien="R0" />
        <iomarker fontsize="28" x="2496" y="1136" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="2496" y="1200" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="3376" y="656" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="3376" y="720" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="3376" y="784" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="2992" y="528" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2992" y="592" name="VGA_VS" orien="R0" />
        <instance x="1840" y="464" name="XLXI_29" orien="R0">
        </instance>
        <branch name="XLXN_144">
            <wire x2="2352" y1="176" y2="176" x1="2224" />
            <wire x2="2352" y1="176" y2="592" x1="2352" />
            <wire x2="2528" y1="592" y2="592" x1="2352" />
        </branch>
        <branch name="XLXN_147(7:0)">
            <wire x2="2368" y1="432" y2="432" x1="2224" />
            <wire x2="2368" y1="432" y2="528" x1="2368" />
            <wire x2="2528" y1="528" y2="528" x1="2368" />
        </branch>
        <instance x="1696" y="176" name="XLXI_42" orien="R90" />
        <branch name="Clk_50MHz">
            <wire x2="1840" y1="176" y2="176" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1808" y="176" name="Clk_50MHz" orien="R180" />
        <branch name="XLXN_150">
            <wire x2="1840" y1="240" y2="240" x1="1824" />
        </branch>
        <branch name="aaa(51:44)">
            <wire x2="1888" y1="1600" y2="1600" x1="1552" />
            <wire x2="1888" y1="1120" y2="1600" x1="1888" />
            <wire x2="2224" y1="1120" y2="1120" x1="1888" />
        </branch>
        <branch name="aaa(63:56)">
            <wire x2="1872" y1="1536" y2="1536" x1="1552" />
            <wire x2="1872" y1="976" y2="1536" x1="1872" />
            <wire x2="2224" y1="976" y2="976" x1="1872" />
        </branch>
        <branch name="XLXN_155(7:0)">
            <wire x2="1776" y1="1664" y2="1664" x1="1552" />
            <wire x2="1776" y1="432" y2="1664" x1="1776" />
            <wire x2="1840" y1="432" y2="432" x1="1776" />
        </branch>
        <branch name="XLXN_159">
            <wire x2="1760" y1="1376" y2="1376" x1="1552" />
            <wire x2="1760" y1="304" y2="1376" x1="1760" />
            <wire x2="1840" y1="304" y2="304" x1="1760" />
        </branch>
        <instance x="352" y="448" name="XLXI_43" orien="R0">
        </instance>
        <branch name="PS2_Clk">
            <wire x2="352" y1="352" y2="352" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="352" name="PS2_Clk" orien="R180" />
        <branch name="PS2_Data">
            <wire x2="352" y1="416" y2="416" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="416" name="PS2_Data" orien="R180" />
        <branch name="XLXN_166">
            <wire x2="880" y1="288" y2="288" x1="736" />
            <wire x2="880" y1="288" y2="656" x1="880" />
            <wire x2="1184" y1="656" y2="656" x1="880" />
            <wire x2="1184" y1="656" y2="672" x1="1184" />
            <wire x2="1344" y1="672" y2="672" x1="1184" />
            <wire x2="1184" y1="672" y2="1184" x1="1184" />
            <wire x2="1120" y1="1184" y2="1280" x1="1120" />
            <wire x2="1168" y1="1280" y2="1280" x1="1120" />
            <wire x2="1184" y1="1184" y2="1184" x1="1120" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="128" y1="208" y2="848" x1="128" />
            <wire x2="528" y1="848" y2="848" x1="128" />
            <wire x2="528" y1="848" y2="1040" x1="528" />
            <wire x2="1088" y1="1040" y2="1040" x1="528" />
            <wire x2="1216" y1="1040" y2="1040" x1="1088" />
            <wire x2="528" y1="1040" y2="1408" x1="528" />
            <wire x2="1168" y1="1408" y2="1408" x1="528" />
            <wire x2="528" y1="1408" y2="1760" x1="528" />
            <wire x2="2400" y1="1760" y2="1760" x1="528" />
            <wire x2="320" y1="208" y2="208" x1="128" />
            <wire x2="320" y1="208" y2="288" x1="320" />
            <wire x2="352" y1="288" y2="288" x1="320" />
            <wire x2="528" y1="1040" y2="1040" x1="288" />
            <wire x2="1344" y1="800" y2="800" x1="1088" />
            <wire x2="1088" y1="800" y2="1040" x1="1088" />
            <wire x2="1344" y1="864" y2="864" x1="1216" />
            <wire x2="1216" y1="864" y2="1040" x1="1216" />
        </branch>
    </sheet>
</drawing>