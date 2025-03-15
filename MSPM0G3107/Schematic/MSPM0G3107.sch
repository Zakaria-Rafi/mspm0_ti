<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="2025-01-31_14-30-48_Library">
<packages>
<package name="DGS0020A-IPC_A">
<smd name="1" x="-2.1505" y="2.25" dx="1.9052" dy="0.35" layer="1"/>
<smd name="2" x="-2.1505" y="1.75" dx="1.9052" dy="0.35" layer="1"/>
<smd name="3" x="-2.1505" y="1.25" dx="1.9052" dy="0.35" layer="1"/>
<smd name="4" x="-2.1505" y="0.75" dx="1.9052" dy="0.35" layer="1"/>
<smd name="5" x="-2.1505" y="0.25" dx="1.9052" dy="0.35" layer="1"/>
<smd name="6" x="-2.1505" y="-0.25" dx="1.9052" dy="0.35" layer="1"/>
<smd name="7" x="-2.1505" y="-0.75" dx="1.9052" dy="0.35" layer="1"/>
<smd name="8" x="-2.1505" y="-1.25" dx="1.9052" dy="0.35" layer="1"/>
<smd name="9" x="-2.1505" y="-1.75" dx="1.9052" dy="0.35" layer="1"/>
<smd name="10" x="-2.1505" y="-2.25" dx="1.9052" dy="0.35" layer="1"/>
<smd name="11" x="2.1505" y="-2.25" dx="1.9052" dy="0.35" layer="1"/>
<smd name="12" x="2.1505" y="-1.75" dx="1.9052" dy="0.35" layer="1"/>
<smd name="13" x="2.1505" y="-1.25" dx="1.9052" dy="0.35" layer="1"/>
<smd name="14" x="2.1505" y="-0.75" dx="1.9052" dy="0.35" layer="1"/>
<smd name="15" x="2.1505" y="-0.25" dx="1.9052" dy="0.35" layer="1"/>
<smd name="16" x="2.1505" y="0.25" dx="1.9052" dy="0.35" layer="1"/>
<smd name="17" x="2.1505" y="0.75" dx="1.9052" dy="0.35" layer="1"/>
<smd name="18" x="2.1505" y="1.25" dx="1.9052" dy="0.35" layer="1"/>
<smd name="19" x="2.1505" y="1.75" dx="1.9052" dy="0.35" layer="1"/>
<smd name="20" x="2.1505" y="2.25" dx="1.9052" dy="0.35" layer="1"/>
<wire x1="-1.5" y1="-2.55" x2="-1.5" y2="2.55" width="0.1524" layer="51"/>
<wire x1="-1.5" y1="-2.55" x2="1.5" y2="-2.55" width="0.1524" layer="51"/>
<wire x1="1.5" y1="-2.55" x2="1.5" y2="2.55" width="0.1524" layer="51"/>
<wire x1="-1.5" y1="2.55" x2="1.5" y2="2.55" width="0.1524" layer="51"/>
<wire x1="-0.6979" y1="-2.55" x2="-0.6979" y2="2.55" width="0.1524" layer="21"/>
<wire x1="-0.6979" y1="-2.55" x2="0.6979" y2="-2.55" width="0.1524" layer="21"/>
<wire x1="0.6979" y1="-2.55" x2="0.6979" y2="2.55" width="0.1524" layer="21"/>
<wire x1="-0.6979" y1="2.55" x2="0.6979" y2="2.55" width="0.1524" layer="21"/>
<wire x1="-3.4781" y1="2.25" x2="-3.7281" y2="2.25" width="0.25" layer="21" curve="-180"/>
<wire x1="-3.7281" y1="2.25" x2="-3.4781" y2="2.25" width="0.25" layer="21" curve="-180"/>
<text x="-3.6068" y="3.683" size="1.27" layer="21" ratio="6">Designator235</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
</package>
<package name="DGS0020A-IPC_B">
<smd name="1" x="-2.1005" y="2.25" dx="1.6052" dy="0.35" layer="1"/>
<smd name="2" x="-2.1005" y="1.75" dx="1.6052" dy="0.35" layer="1"/>
<smd name="3" x="-2.1005" y="1.25" dx="1.6052" dy="0.35" layer="1"/>
<smd name="4" x="-2.1005" y="0.75" dx="1.6052" dy="0.35" layer="1"/>
<smd name="5" x="-2.1005" y="0.25" dx="1.6052" dy="0.35" layer="1"/>
<smd name="6" x="-2.1005" y="-0.25" dx="1.6052" dy="0.35" layer="1"/>
<smd name="7" x="-2.1005" y="-0.75" dx="1.6052" dy="0.35" layer="1"/>
<smd name="8" x="-2.1005" y="-1.25" dx="1.6052" dy="0.35" layer="1"/>
<smd name="9" x="-2.1005" y="-1.75" dx="1.6052" dy="0.35" layer="1"/>
<smd name="10" x="-2.1005" y="-2.25" dx="1.6052" dy="0.35" layer="1"/>
<smd name="11" x="2.1005" y="-2.25" dx="1.6052" dy="0.35" layer="1"/>
<smd name="12" x="2.1005" y="-1.75" dx="1.6052" dy="0.35" layer="1"/>
<smd name="13" x="2.1005" y="-1.25" dx="1.6052" dy="0.35" layer="1"/>
<smd name="14" x="2.1005" y="-0.75" dx="1.6052" dy="0.35" layer="1"/>
<smd name="15" x="2.1005" y="-0.25" dx="1.6052" dy="0.35" layer="1"/>
<smd name="16" x="2.1005" y="0.25" dx="1.6052" dy="0.35" layer="1"/>
<smd name="17" x="2.1005" y="0.75" dx="1.6052" dy="0.35" layer="1"/>
<smd name="18" x="2.1005" y="1.25" dx="1.6052" dy="0.35" layer="1"/>
<smd name="19" x="2.1005" y="1.75" dx="1.6052" dy="0.35" layer="1"/>
<smd name="20" x="2.1005" y="2.25" dx="1.6052" dy="0.35" layer="1"/>
<wire x1="-1.5" y1="-2.55" x2="-1.5" y2="2.55" width="0.1524" layer="51"/>
<wire x1="-1.5" y1="-2.55" x2="1.5" y2="-2.55" width="0.1524" layer="51"/>
<wire x1="1.5" y1="-2.55" x2="1.5" y2="2.55" width="0.1524" layer="51"/>
<wire x1="-1.5" y1="2.55" x2="1.5" y2="2.55" width="0.1524" layer="51"/>
<wire x1="-0.7979" y1="-2.55" x2="-0.7979" y2="2.55" width="0.1524" layer="21"/>
<wire x1="-0.7979" y1="-2.55" x2="0.7979" y2="-2.55" width="0.1524" layer="21"/>
<wire x1="0.7979" y1="-2.55" x2="0.7979" y2="2.55" width="0.1524" layer="21"/>
<wire x1="-0.7979" y1="2.55" x2="0.7979" y2="2.55" width="0.1524" layer="21"/>
<wire x1="-3.2781" y1="2.25" x2="-3.5281" y2="2.25" width="0.25" layer="21" curve="-180"/>
<wire x1="-3.5281" y1="2.25" x2="-3.2781" y2="2.25" width="0.25" layer="21" curve="-180"/>
<text x="-3.4036" y="3.429" size="1.27" layer="21" ratio="6">Designator234</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
</package>
<package name="DGS0020A-IPC_C">
<smd name="1" x="-2.0505" y="2.25" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="2" x="-2.0505" y="1.75" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="3" x="-2.0505" y="1.25" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="4" x="-2.0505" y="0.75" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="5" x="-2.0505" y="0.25" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="6" x="-2.0505" y="-0.25" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="7" x="-2.0505" y="-0.75" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="8" x="-2.0505" y="-1.25" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="9" x="-2.0505" y="-1.75" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="10" x="-2.0505" y="-2.25" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="11" x="2.0505" y="-2.25" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="12" x="2.0505" y="-1.75" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="13" x="2.0505" y="-1.25" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="14" x="2.0505" y="-0.75" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="15" x="2.0505" y="-0.25" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="16" x="2.0505" y="0.25" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="17" x="2.0505" y="0.75" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="18" x="2.0505" y="1.25" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="19" x="2.0505" y="1.75" dx="1.3052" dy="0.3158" layer="1"/>
<smd name="20" x="2.0505" y="2.25" dx="1.3052" dy="0.3158" layer="1"/>
<wire x1="-1.5" y1="-2.55" x2="-1.5" y2="2.55" width="0.1524" layer="51"/>
<wire x1="-1.5" y1="-2.55" x2="1.5" y2="-2.55" width="0.1524" layer="51"/>
<wire x1="1.5" y1="-2.55" x2="1.5" y2="2.55" width="0.1524" layer="51"/>
<wire x1="-1.5" y1="2.55" x2="1.5" y2="2.55" width="0.1524" layer="51"/>
<wire x1="-0.8979" y1="-2.55" x2="-0.8979" y2="2.55" width="0.1524" layer="21"/>
<wire x1="-0.8979" y1="-2.55" x2="0.8979" y2="-2.55" width="0.1524" layer="21"/>
<wire x1="0.8979" y1="-2.55" x2="0.8979" y2="2.55" width="0.1524" layer="21"/>
<wire x1="-0.8979" y1="2.55" x2="0.8979" y2="2.55" width="0.1524" layer="21"/>
<wire x1="-3.0781" y1="2.25" x2="-3.3281" y2="2.25" width="0.25" layer="21" curve="-180"/>
<wire x1="-3.3281" y1="2.25" x2="-3.0781" y2="2.25" width="0.25" layer="21" curve="-180"/>
<text x="-3.2004" y="3.2766" size="1.27" layer="21" ratio="6">Designator232</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
</package>
<package name="DGS0020A-MFG">
<smd name="1" x="-2.2" y="2.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="2" x="-2.2" y="1.75" dx="1.45" dy="0.3" layer="1"/>
<smd name="3" x="-2.2" y="1.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="4" x="-2.2" y="0.75" dx="1.45" dy="0.3" layer="1"/>
<smd name="5" x="-2.2" y="0.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="6" x="-2.2" y="-0.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="7" x="-2.2" y="-0.75" dx="1.45" dy="0.3" layer="1"/>
<smd name="8" x="-2.2" y="-1.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="9" x="-2.2" y="-1.75" dx="1.45" dy="0.3" layer="1"/>
<smd name="10" x="-2.2" y="-2.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="11" x="2.2" y="-2.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="12" x="2.2" y="-1.75" dx="1.45" dy="0.3" layer="1"/>
<smd name="13" x="2.2" y="-1.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="14" x="2.2" y="-0.75" dx="1.45" dy="0.3" layer="1"/>
<smd name="15" x="2.2" y="-0.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="16" x="2.2" y="0.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="17" x="2.2" y="0.75" dx="1.45" dy="0.3" layer="1"/>
<smd name="18" x="2.2" y="1.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="19" x="2.2" y="1.75" dx="1.45" dy="0.3" layer="1"/>
<smd name="20" x="2.2" y="2.25" dx="1.45" dy="0.3" layer="1"/>
<wire x1="-1.55" y1="-2.6" x2="-1.55" y2="2.6" width="0.1524" layer="51"/>
<wire x1="-1.55" y1="-2.6" x2="1.55" y2="-2.6" width="0.1524" layer="51"/>
<wire x1="1.55" y1="-2.6" x2="1.55" y2="2.6" width="0.1524" layer="51"/>
<wire x1="-1.55" y1="2.6" x2="1.55" y2="2.6" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="-2.6" x2="1.1" y2="-2.6" width="0.1524" layer="21"/>
<wire x1="-1.1" y1="2.6" x2="1.1" y2="2.6" width="0.1524" layer="21"/>
<wire x1="-3.35" y1="2.25" x2="-3.6" y2="2.25" width="0.25" layer="21" curve="-180"/>
<wire x1="-3.6" y1="2.25" x2="-3.35" y2="2.25" width="0.25" layer="21" curve="-180"/>
<text x="-3.4798" y="3.4798" size="1.27" layer="21" ratio="6">Designator231</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="MSPM0G3107SDGS">
<pin name="PA26_A0_1" x="0" y="-48.26" length="middle"/>
<pin name="PA27_RTC_OUT_A0_0" x="0" y="-50.8" length="middle"/>
<pin name="VCORE" x="0" y="-2.54" length="middle" direction="pwr"/>
<pin name="RST_N" x="0" y="-7.62" length="middle" direction="in"/>
<pin name="VDD" x="0" y="0" length="middle" direction="pwr"/>
<pin name="VSS" x="60.96" y="-50.8" length="middle" direction="pwr" rot="R180"/>
<pin name="PA2_ROSC" x="0" y="-12.7" length="middle"/>
<pin name="PA5_HFXIN_FCC_IN" x="0" y="-15.24" length="middle"/>
<pin name="PA6_HFCLK_IN_HFXOUT" x="0" y="-17.78" length="middle"/>
<pin name="PA9_RTC_OUT_CLK_OUT" x="0" y="-20.32" length="middle"/>
<pin name="PA10_CLK_OUT" x="0" y="-22.86" length="middle"/>
<pin name="PA11" x="0" y="-25.4" length="middle"/>
<pin name="PA12_FCC_IN" x="0" y="-27.94" length="middle"/>
<pin name="PA17_A1_2" x="0" y="-30.48" length="middle"/>
<pin name="PA18_A1_3" x="0" y="-33.02" length="middle"/>
<pin name="PA19_SWDIO" x="0" y="-35.56" length="middle"/>
<pin name="PA20_SWCLK" x="0" y="-38.1" length="middle"/>
<pin name="PA22_CLK_OUT_A0_7" x="0" y="-40.64" length="middle"/>
<pin name="PA23_VREF+" x="0" y="-43.18" length="middle"/>
<pin name="PA24_A0_3" x="0" y="-45.72" length="middle"/>
<wire x1="5.08" y1="-53.34" x2="55.88" y2="-53.34" width="0.2032" layer="94"/>
<wire x1="55.88" y1="-53.34" x2="55.88" y2="5.08" width="0.2032" layer="94"/>
<wire x1="55.88" y1="5.08" x2="5.08" y2="5.08" width="0.2032" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="-53.34" width="0.2032" layer="94"/>
<text x="-4.7254" y="1.4986" size="2.083" layer="95" ratio="6">&gt;Name</text>
<text x="-5.3648" y="-1.0414" size="2.083" layer="96" ratio="6">&gt;Value</text>
<text x="-5.3648" y="-1.0414" size="2.083" layer="96" ratio="6">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MSPM0G3107SDGS20R" prefix="U">
<gates>
<gate name="A" symbol="MSPM0G3107SDGS" x="0" y="0"/>
</gates>
<devices>
<device name="DGS0020A-IPC_A" package="DGS0020A-IPC_A">
<connects>
<connect gate="A" pin="PA10_CLK_OUT" pad="11"/>
<connect gate="A" pin="PA11" pad="12"/>
<connect gate="A" pin="PA12_FCC_IN" pad="13"/>
<connect gate="A" pin="PA17_A1_2" pad="14"/>
<connect gate="A" pin="PA18_A1_3" pad="15"/>
<connect gate="A" pin="PA19_SWDIO" pad="16"/>
<connect gate="A" pin="PA20_SWCLK" pad="17"/>
<connect gate="A" pin="PA22_CLK_OUT_A0_7" pad="18"/>
<connect gate="A" pin="PA23_VREF+" pad="19"/>
<connect gate="A" pin="PA24_A0_3" pad="20"/>
<connect gate="A" pin="PA26_A0_1" pad="1"/>
<connect gate="A" pin="PA27_RTC_OUT_A0_0" pad="2"/>
<connect gate="A" pin="PA2_ROSC" pad="7"/>
<connect gate="A" pin="PA5_HFXIN_FCC_IN" pad="8"/>
<connect gate="A" pin="PA6_HFCLK_IN_HFXOUT" pad="9"/>
<connect gate="A" pin="PA9_RTC_OUT_CLK_OUT" pad="10"/>
<connect gate="A" pin="RST_N" pad="4"/>
<connect gate="A" pin="VCORE" pad="3"/>
<connect gate="A" pin="VDD" pad="5"/>
<connect gate="A" pin="VSS" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="MSPM0G3107SDGS20R" constant="no"/>
<attribute name="MFR_NAME" value="Texas Instruments" constant="no"/>
<attribute name="REFDES" value="RefDes" constant="no"/>
<attribute name="TYPE" value="TYPE" constant="no"/>
</technology>
</technologies>
</device>
<device name="DGS0020A-IPC_B" package="DGS0020A-IPC_B">
<connects>
<connect gate="A" pin="PA10_CLK_OUT" pad="11"/>
<connect gate="A" pin="PA11" pad="12"/>
<connect gate="A" pin="PA12_FCC_IN" pad="13"/>
<connect gate="A" pin="PA17_A1_2" pad="14"/>
<connect gate="A" pin="PA18_A1_3" pad="15"/>
<connect gate="A" pin="PA19_SWDIO" pad="16"/>
<connect gate="A" pin="PA20_SWCLK" pad="17"/>
<connect gate="A" pin="PA22_CLK_OUT_A0_7" pad="18"/>
<connect gate="A" pin="PA23_VREF+" pad="19"/>
<connect gate="A" pin="PA24_A0_3" pad="20"/>
<connect gate="A" pin="PA26_A0_1" pad="1"/>
<connect gate="A" pin="PA27_RTC_OUT_A0_0" pad="2"/>
<connect gate="A" pin="PA2_ROSC" pad="7"/>
<connect gate="A" pin="PA5_HFXIN_FCC_IN" pad="8"/>
<connect gate="A" pin="PA6_HFCLK_IN_HFXOUT" pad="9"/>
<connect gate="A" pin="PA9_RTC_OUT_CLK_OUT" pad="10"/>
<connect gate="A" pin="RST_N" pad="4"/>
<connect gate="A" pin="VCORE" pad="3"/>
<connect gate="A" pin="VDD" pad="5"/>
<connect gate="A" pin="VSS" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="MSPM0G3107SDGS20R" constant="no"/>
<attribute name="MFR_NAME" value="Texas Instruments" constant="no"/>
<attribute name="REFDES" value="RefDes" constant="no"/>
<attribute name="TYPE" value="TYPE" constant="no"/>
</technology>
</technologies>
</device>
<device name="DGS0020A-IPC_C" package="DGS0020A-IPC_C">
<connects>
<connect gate="A" pin="PA10_CLK_OUT" pad="11"/>
<connect gate="A" pin="PA11" pad="12"/>
<connect gate="A" pin="PA12_FCC_IN" pad="13"/>
<connect gate="A" pin="PA17_A1_2" pad="14"/>
<connect gate="A" pin="PA18_A1_3" pad="15"/>
<connect gate="A" pin="PA19_SWDIO" pad="16"/>
<connect gate="A" pin="PA20_SWCLK" pad="17"/>
<connect gate="A" pin="PA22_CLK_OUT_A0_7" pad="18"/>
<connect gate="A" pin="PA23_VREF+" pad="19"/>
<connect gate="A" pin="PA24_A0_3" pad="20"/>
<connect gate="A" pin="PA26_A0_1" pad="1"/>
<connect gate="A" pin="PA27_RTC_OUT_A0_0" pad="2"/>
<connect gate="A" pin="PA2_ROSC" pad="7"/>
<connect gate="A" pin="PA5_HFXIN_FCC_IN" pad="8"/>
<connect gate="A" pin="PA6_HFCLK_IN_HFXOUT" pad="9"/>
<connect gate="A" pin="PA9_RTC_OUT_CLK_OUT" pad="10"/>
<connect gate="A" pin="RST_N" pad="4"/>
<connect gate="A" pin="VCORE" pad="3"/>
<connect gate="A" pin="VDD" pad="5"/>
<connect gate="A" pin="VSS" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="MSPM0G3107SDGS20R" constant="no"/>
<attribute name="MFR_NAME" value="Texas Instruments" constant="no"/>
<attribute name="REFDES" value="RefDes" constant="no"/>
<attribute name="TYPE" value="TYPE" constant="no"/>
</technology>
</technologies>
</device>
<device name="DGS0020A-MFG" package="DGS0020A-MFG">
<connects>
<connect gate="A" pin="PA10_CLK_OUT" pad="11"/>
<connect gate="A" pin="PA11" pad="12"/>
<connect gate="A" pin="PA12_FCC_IN" pad="13"/>
<connect gate="A" pin="PA17_A1_2" pad="14"/>
<connect gate="A" pin="PA18_A1_3" pad="15"/>
<connect gate="A" pin="PA19_SWDIO" pad="16"/>
<connect gate="A" pin="PA20_SWCLK" pad="17"/>
<connect gate="A" pin="PA22_CLK_OUT_A0_7" pad="18"/>
<connect gate="A" pin="PA23_VREF+" pad="19"/>
<connect gate="A" pin="PA24_A0_3" pad="20"/>
<connect gate="A" pin="PA26_A0_1" pad="1"/>
<connect gate="A" pin="PA27_RTC_OUT_A0_0" pad="2"/>
<connect gate="A" pin="PA2_ROSC" pad="7"/>
<connect gate="A" pin="PA5_HFXIN_FCC_IN" pad="8"/>
<connect gate="A" pin="PA6_HFCLK_IN_HFXOUT" pad="9"/>
<connect gate="A" pin="PA9_RTC_OUT_CLK_OUT" pad="10"/>
<connect gate="A" pin="RST_N" pad="4"/>
<connect gate="A" pin="VCORE" pad="3"/>
<connect gate="A" pin="VDD" pad="5"/>
<connect gate="A" pin="VSS" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="MSPM0G3107SDGS20R" constant="no"/>
<attribute name="MFR_NAME" value="Texas Instruments" constant="no"/>
<attribute name="REFDES" value="RefDes" constant="no"/>
<attribute name="TYPE" value="TYPE" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Power_Symbols" urn="urn:adsk.eagle:library:16502351">
<description>&lt;B&gt;Supply &amp; Ground symbols</description>
<packages>
</packages>
<symbols>
<symbol name="VCC" urn="urn:adsk.eagle:symbol:18498256/2" library_version="22">
<description>Digital Ground (GND) Bar</description>
<wire x1="1.905" y1="2.54" x2="-1.905" y2="2.54" width="0.1524" layer="94"/>
<pin name="VCC" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
<text x="0" y="5.08" size="1.778" layer="96" align="top-center">&gt;VALUE</text>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:16502380/3" library_version="22">
<description>Ground (GND) Arrow</description>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
<text x="0" y="-2.54" size="1.778" layer="96" align="top-center">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" urn="urn:adsk.eagle:component:18498259/4" prefix="SUPPLY" uservalue="yes" library_version="22">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt; VCC Bar</description>
<gates>
<gate name="G$1" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="CATEGORY" value="Supply" constant="no"/>
<attribute name="VALUE" value="VCC" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:16502425/6" prefix="SUPPLY" uservalue="yes" library_version="22">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt; - Ground (GND) Arrow</description>
<gates>
<gate name="G$1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="CATEGORY" value="Supply" constant="no"/>
<attribute name="VALUE" value="GND" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Capacitor" urn="urn:adsk.eagle:library:16290819">
<description>&lt;B&gt;Capacitors - Fixed, Variable, Trimmers</description>
<packages>
<package name="CAPC1005X60" urn="urn:adsk.eagle:footprint:16290849/5" library_version="21">
<description>Chip, 1.00 X 0.50 X 0.60 mm body
&lt;p&gt;Chip package with body size 1.00 X 0.50 X 0.60 mm&lt;/p&gt;</description>
<wire x1="0.55" y1="0.6286" x2="-0.55" y2="0.6286" width="0.127" layer="21"/>
<wire x1="0.55" y1="-0.6286" x2="-0.55" y2="-0.6286" width="0.127" layer="21"/>
<wire x1="0.55" y1="-0.3" x2="-0.55" y2="-0.3" width="0.12" layer="51"/>
<wire x1="-0.55" y1="-0.3" x2="-0.55" y2="0.3" width="0.12" layer="51"/>
<wire x1="-0.55" y1="0.3" x2="0.55" y2="0.3" width="0.12" layer="51"/>
<wire x1="0.55" y1="0.3" x2="0.55" y2="-0.3" width="0.12" layer="51"/>
<smd name="1" x="-0.4846" y="0" dx="0.56" dy="0.6291" layer="1"/>
<smd name="2" x="0.4846" y="0" dx="0.56" dy="0.6291" layer="1"/>
<text x="0" y="1.2636" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.2636" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPC1110X102" urn="urn:adsk.eagle:footprint:16290845/5" library_version="21">
<description>Chip, 1.17 X 1.02 X 1.02 mm body
&lt;p&gt;Chip package with body size 1.17 X 1.02 X 1.02 mm&lt;/p&gt;</description>
<wire x1="0.66" y1="0.9552" x2="-0.66" y2="0.9552" width="0.127" layer="21"/>
<wire x1="0.66" y1="-0.9552" x2="-0.66" y2="-0.9552" width="0.127" layer="21"/>
<wire x1="0.66" y1="-0.635" x2="-0.66" y2="-0.635" width="0.12" layer="51"/>
<wire x1="-0.66" y1="-0.635" x2="-0.66" y2="0.635" width="0.12" layer="51"/>
<wire x1="-0.66" y1="0.635" x2="0.66" y2="0.635" width="0.12" layer="51"/>
<wire x1="0.66" y1="0.635" x2="0.66" y2="-0.635" width="0.12" layer="51"/>
<smd name="1" x="-0.5388" y="0" dx="0.6626" dy="1.2823" layer="1"/>
<smd name="2" x="0.5388" y="0" dx="0.6626" dy="1.2823" layer="1"/>
<text x="0" y="1.5902" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.5902" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPC1608X85" urn="urn:adsk.eagle:footprint:16290847/5" library_version="21">
<description>Chip, 1.60 X 0.80 X 0.85 mm body
&lt;p&gt;Chip package with body size 1.60 X 0.80 X 0.85 mm&lt;/p&gt;</description>
<wire x1="0.875" y1="0.7991" x2="-0.875" y2="0.7991" width="0.127" layer="21"/>
<wire x1="0.875" y1="-0.7991" x2="-0.875" y2="-0.7991" width="0.127" layer="21"/>
<wire x1="0.875" y1="-0.475" x2="-0.875" y2="-0.475" width="0.12" layer="51"/>
<wire x1="-0.875" y1="-0.475" x2="-0.875" y2="0.475" width="0.12" layer="51"/>
<wire x1="-0.875" y1="0.475" x2="0.875" y2="0.475" width="0.12" layer="51"/>
<wire x1="0.875" y1="0.475" x2="0.875" y2="-0.475" width="0.12" layer="51"/>
<smd name="1" x="-0.7746" y="0" dx="0.9209" dy="0.9702" layer="1"/>
<smd name="2" x="0.7746" y="0" dx="0.9209" dy="0.9702" layer="1"/>
<text x="0" y="1.4341" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.4341" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPC2012X110" urn="urn:adsk.eagle:footprint:16290848/5" library_version="21">
<description>Chip, 2.00 X 1.25 X 1.10 mm body
&lt;p&gt;Chip package with body size 2.00 X 1.25 X 1.10 mm&lt;/p&gt;</description>
<wire x1="1.1" y1="1.0467" x2="-1.1" y2="1.0467" width="0.127" layer="21"/>
<wire x1="1.1" y1="-1.0467" x2="-1.1" y2="-1.0467" width="0.127" layer="21"/>
<wire x1="1.1" y1="-0.725" x2="-1.1" y2="-0.725" width="0.12" layer="51"/>
<wire x1="-1.1" y1="-0.725" x2="-1.1" y2="0.725" width="0.12" layer="51"/>
<wire x1="-1.1" y1="0.725" x2="1.1" y2="0.725" width="0.12" layer="51"/>
<wire x1="1.1" y1="0.725" x2="1.1" y2="-0.725" width="0.12" layer="51"/>
<smd name="1" x="-0.8754" y="0" dx="1.1646" dy="1.4653" layer="1"/>
<smd name="2" x="0.8754" y="0" dx="1.1646" dy="1.4653" layer="1"/>
<text x="0" y="1.6817" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.6817" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPC3216X135" urn="urn:adsk.eagle:footprint:16290836/5" library_version="21">
<description>Chip, 3.20 X 1.60 X 1.35 mm body
&lt;p&gt;Chip package with body size 3.20 X 1.60 X 1.35 mm&lt;/p&gt;</description>
<wire x1="1.7" y1="1.2217" x2="-1.7" y2="1.2217" width="0.127" layer="21"/>
<wire x1="1.7" y1="-1.2217" x2="-1.7" y2="-1.2217" width="0.127" layer="21"/>
<wire x1="1.7" y1="-0.9" x2="-1.7" y2="-0.9" width="0.12" layer="51"/>
<wire x1="-1.7" y1="-0.9" x2="-1.7" y2="0.9" width="0.12" layer="51"/>
<wire x1="-1.7" y1="0.9" x2="1.7" y2="0.9" width="0.12" layer="51"/>
<wire x1="1.7" y1="0.9" x2="1.7" y2="-0.9" width="0.12" layer="51"/>
<smd name="1" x="-1.4754" y="0" dx="1.1646" dy="1.8153" layer="1"/>
<smd name="2" x="1.4754" y="0" dx="1.1646" dy="1.8153" layer="1"/>
<text x="0" y="1.8567" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.8567" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPC3225X135" urn="urn:adsk.eagle:footprint:16290843/5" library_version="21">
<description>Chip, 3.20 X 2.50 X 1.35 mm body
&lt;p&gt;Chip package with body size 3.20 X 2.50 X 1.35 mm&lt;/p&gt;</description>
<wire x1="1.7" y1="1.6717" x2="-1.7" y2="1.6717" width="0.127" layer="21"/>
<wire x1="1.7" y1="-1.6717" x2="-1.7" y2="-1.6717" width="0.12" layer="21"/>
<wire x1="1.7" y1="-1.35" x2="-1.7" y2="-1.35" width="0.12" layer="51"/>
<wire x1="-1.7" y1="-1.35" x2="-1.7" y2="1.35" width="0.12" layer="51"/>
<wire x1="-1.7" y1="1.35" x2="1.7" y2="1.35" width="0.12" layer="51"/>
<wire x1="1.7" y1="1.35" x2="1.7" y2="-1.35" width="0.12" layer="51"/>
<smd name="1" x="-1.4754" y="0" dx="1.1646" dy="2.7153" layer="1"/>
<smd name="2" x="1.4754" y="0" dx="1.1646" dy="2.7153" layer="1"/>
<text x="0" y="2.3067" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.3067" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPC4532X135" urn="urn:adsk.eagle:footprint:16290841/5" library_version="21">
<description>Chip, 4.50 X 3.20 X 1.35 mm body
&lt;p&gt;Chip package with body size 4.50 X 3.20 X 1.35 mm&lt;/p&gt;</description>
<wire x1="2.4" y1="2.0217" x2="-2.4" y2="2.0217" width="0.127" layer="21"/>
<wire x1="2.4" y1="-2.0217" x2="-2.4" y2="-2.0217" width="0.127" layer="21"/>
<wire x1="2.4" y1="-1.7" x2="-2.4" y2="-1.7" width="0.12" layer="51"/>
<wire x1="-2.4" y1="-1.7" x2="-2.4" y2="1.7" width="0.12" layer="51"/>
<wire x1="-2.4" y1="1.7" x2="2.4" y2="1.7" width="0.12" layer="51"/>
<wire x1="2.4" y1="1.7" x2="2.4" y2="-1.7" width="0.12" layer="51"/>
<smd name="1" x="-2.0565" y="0" dx="1.3973" dy="3.4153" layer="1"/>
<smd name="2" x="2.0565" y="0" dx="1.3973" dy="3.4153" layer="1"/>
<text x="0" y="2.6567" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.6567" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPM3216X180" urn="urn:adsk.eagle:footprint:16290835/5" library_version="21">
<description>Molded Body, 3.20 X 1.60 X 1.80 mm body
&lt;p&gt;Molded Body package with body size 3.20 X 1.60 X 1.80 mm&lt;/p&gt;</description>
<wire x1="-1.7" y1="0.9084" x2="1.7" y2="0.9084" width="0.127" layer="21"/>
<wire x1="-1.7" y1="-0.9084" x2="1.7" y2="-0.9084" width="0.127" layer="21"/>
<wire x1="1.7" y1="-0.9" x2="-1.7" y2="-0.9" width="0.12" layer="51"/>
<wire x1="-1.7" y1="-0.9" x2="-1.7" y2="0.9" width="0.12" layer="51"/>
<wire x1="-1.7" y1="0.9" x2="1.7" y2="0.9" width="0.12" layer="51"/>
<wire x1="1.7" y1="0.9" x2="1.7" y2="-0.9" width="0.12" layer="51"/>
<smd name="1" x="-1.3099" y="0" dx="1.7955" dy="1.1887" layer="1"/>
<smd name="2" x="1.3099" y="0" dx="1.7955" dy="1.1887" layer="1"/>
<text x="0" y="1.5434" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.5434" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPM3528X210" urn="urn:adsk.eagle:footprint:16290844/5" library_version="21">
<description>Molded Body, 3.50 X 2.80 X 2.10 mm body
&lt;p&gt;Molded Body package with body size 3.50 X 2.80 X 2.10 mm&lt;/p&gt;</description>
<wire x1="-1.85" y1="1.5" x2="1.85" y2="1.5" width="0.127" layer="21"/>
<wire x1="-1.85" y1="-1.5" x2="1.85" y2="-1.5" width="0.127" layer="21"/>
<wire x1="1.85" y1="-1.5" x2="-1.85" y2="-1.5" width="0.12" layer="51"/>
<wire x1="-1.85" y1="-1.5" x2="-1.85" y2="1.5" width="0.12" layer="51"/>
<wire x1="-1.85" y1="1.5" x2="1.85" y2="1.5" width="0.12" layer="51"/>
<wire x1="1.85" y1="1.5" x2="1.85" y2="-1.5" width="0.12" layer="51"/>
<smd name="1" x="-1.4599" y="0" dx="1.7955" dy="2.2036" layer="1"/>
<smd name="2" x="1.4599" y="0" dx="1.7955" dy="2.2036" layer="1"/>
<text x="0" y="2.135" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.135" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPM6032X280" urn="urn:adsk.eagle:footprint:16290839/5" library_version="21">
<description>Molded Body, 6.00 X 3.20 X 2.80 mm body
&lt;p&gt;Molded Body package with body size 6.00 X 3.20 X 2.80 mm&lt;/p&gt;</description>
<wire x1="-3.15" y1="1.75" x2="3.15" y2="1.75" width="0.127" layer="21"/>
<wire x1="-3.15" y1="-1.75" x2="3.15" y2="-1.75" width="0.127" layer="21"/>
<wire x1="3.15" y1="-1.75" x2="-3.15" y2="-1.75" width="0.12" layer="51"/>
<wire x1="-3.15" y1="-1.75" x2="-3.15" y2="1.75" width="0.12" layer="51"/>
<wire x1="-3.15" y1="1.75" x2="3.15" y2="1.75" width="0.12" layer="51"/>
<wire x1="3.15" y1="1.75" x2="3.15" y2="-1.75" width="0.12" layer="51"/>
<smd name="1" x="-2.4712" y="0" dx="2.368" dy="2.2036" layer="1"/>
<smd name="2" x="2.4712" y="0" dx="2.368" dy="2.2036" layer="1"/>
<text x="0" y="2.385" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.385" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPM7343X310" urn="urn:adsk.eagle:footprint:16290840/5" library_version="21">
<description>Molded Body, 7.30 X 4.30 X 3.10 mm body
&lt;p&gt;Molded Body package with body size 7.30 X 4.30 X 3.10 mm&lt;/p&gt;</description>
<wire x1="-3.8" y1="2.3" x2="3.8" y2="2.3" width="0.127" layer="21"/>
<wire x1="-3.8" y1="-2.3" x2="3.8" y2="-2.3" width="0.127" layer="21"/>
<wire x1="3.8" y1="-2.3" x2="-3.8" y2="-2.3" width="0.12" layer="51"/>
<wire x1="-3.8" y1="-2.3" x2="-3.8" y2="2.3" width="0.12" layer="51"/>
<wire x1="-3.8" y1="2.3" x2="3.8" y2="2.3" width="0.12" layer="51"/>
<wire x1="3.8" y1="2.3" x2="3.8" y2="-2.3" width="0.12" layer="51"/>
<smd name="1" x="-3.1212" y="0" dx="2.368" dy="2.4036" layer="1"/>
<smd name="2" x="3.1212" y="0" dx="2.368" dy="2.4036" layer="1"/>
<text x="0" y="2.935" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.935" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPC4564X110" urn="urn:adsk.eagle:footprint:16290837/5" library_version="21">
<description>Chip, 4.50 X 6.40 X 1.10 mm body
&lt;p&gt;Chip package with body size 4.50 X 6.40 X 1.10 mm&lt;/p&gt;</description>
<wire x1="2.4" y1="3.7179" x2="-2.4" y2="3.7179" width="0.127" layer="21"/>
<wire x1="2.4" y1="-3.7179" x2="-2.4" y2="-3.7179" width="0.127" layer="21"/>
<wire x1="2.4" y1="-3.4" x2="-2.4" y2="-3.4" width="0.12" layer="51"/>
<wire x1="-2.4" y1="-3.4" x2="-2.4" y2="3.4" width="0.12" layer="51"/>
<wire x1="-2.4" y1="3.4" x2="2.4" y2="3.4" width="0.12" layer="51"/>
<wire x1="2.4" y1="3.4" x2="2.4" y2="-3.4" width="0.12" layer="51"/>
<smd name="1" x="-2.0565" y="0" dx="1.3973" dy="6.8078" layer="1"/>
<smd name="2" x="2.0565" y="0" dx="1.3973" dy="6.8078" layer="1"/>
<text x="0" y="4.3529" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-4.3529" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPRD550W60D1025H1250B" urn="urn:adsk.eagle:footprint:16290829/5" library_version="21">
<description>Radial Non-Polarized Capacitor, 5.50 mm pitch, 10.25 mm body diameter, 12.50 mm body height
&lt;p&gt;Radial Non-Polarized Capacitor package with 5.50 mm pitch (lead spacing), 0.60 mm lead diameter, 10.25 mm body diameter and 12.50 mm body height&lt;/p&gt;</description>
<circle x="0" y="0" radius="5.25" width="0.127" layer="21"/>
<circle x="0" y="0" radius="5.25" width="0.12" layer="51"/>
<pad name="1" x="-2.75" y="0" drill="0.8" diameter="1.4"/>
<pad name="2" x="2.75" y="0" drill="0.8" diameter="1.4"/>
<text x="0" y="5.885" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-5.885" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="CAPRD2261W240D5080H5555B" urn="urn:adsk.eagle:footprint:16290850/5" library_version="21">
<description>Radial Non-Polarized Capacitor, 22.61 mm pitch, 50.80 mm body diameter, 55.55 mm body height
&lt;p&gt;Radial Non-Polarized Capacitor package with 22.61 mm pitch (lead spacing), 2.40 mm lead diameter, 50.80 mm body diameter and 55.55 mm body height&lt;/p&gt;</description>
<circle x="0" y="0" radius="25.79" width="0.127" layer="21"/>
<circle x="0" y="0" radius="25.79" width="0.12" layer="51"/>
<pad name="1" x="-11.305" y="0" drill="2.6" diameter="3.9"/>
<pad name="2" x="11.305" y="0" drill="2.6" diameter="3.9"/>
<text x="0" y="26.425" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-26.425" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="CAPC1005X60" urn="urn:adsk.eagle:package:16290895/5" type="model">
<description>Chip, 1.00 X 0.50 X 0.60 mm body
&lt;p&gt;Chip package with body size 1.00 X 0.50 X 0.60 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPC1005X60"/>
</packageinstances>
</package3d>
<package3d name="CAPC1110X102" urn="urn:adsk.eagle:package:16290904/5" type="model">
<description>Chip, 1.17 X 1.02 X 1.02 mm body
&lt;p&gt;Chip package with body size 1.17 X 1.02 X 1.02 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPC1110X102"/>
</packageinstances>
</package3d>
<package3d name="CAPC1608X85" urn="urn:adsk.eagle:package:16290898/5" type="model">
<description>Chip, 1.60 X 0.80 X 0.85 mm body
&lt;p&gt;Chip package with body size 1.60 X 0.80 X 0.85 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPC1608X85"/>
</packageinstances>
</package3d>
<package3d name="CAPC2012X110" urn="urn:adsk.eagle:package:16290897/5" type="model">
<description>Chip, 2.00 X 1.25 X 1.10 mm body
&lt;p&gt;Chip package with body size 2.00 X 1.25 X 1.10 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPC2012X110"/>
</packageinstances>
</package3d>
<package3d name="CAPC3216X135" urn="urn:adsk.eagle:package:16290893/5" type="model">
<description>Chip, 3.20 X 1.60 X 1.35 mm body
&lt;p&gt;Chip package with body size 3.20 X 1.60 X 1.35 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPC3216X135"/>
</packageinstances>
</package3d>
<package3d name="CAPC3225X135" urn="urn:adsk.eagle:package:16290903/5" type="model">
<description>Chip, 3.20 X 2.50 X 1.35 mm body
&lt;p&gt;Chip package with body size 3.20 X 2.50 X 1.35 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPC3225X135"/>
</packageinstances>
</package3d>
<package3d name="CAPC4532X135" urn="urn:adsk.eagle:package:16290900/5" type="model">
<description>Chip, 4.50 X 3.20 X 1.35 mm body
&lt;p&gt;Chip package with body size 4.50 X 3.20 X 1.35 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPC4532X135"/>
</packageinstances>
</package3d>
<package3d name="CAPM3216X180" urn="urn:adsk.eagle:package:16290894/5" type="model">
<description>Molded Body, 3.20 X 1.60 X 1.80 mm body
&lt;p&gt;Molded Body package with body size 3.20 X 1.60 X 1.80 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPM3216X180"/>
</packageinstances>
</package3d>
<package3d name="CAPM3528X210" urn="urn:adsk.eagle:package:16290902/5" type="model">
<description>Molded Body, 3.50 X 2.80 X 2.10 mm body
&lt;p&gt;Molded Body package with body size 3.50 X 2.80 X 2.10 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPM3528X210"/>
</packageinstances>
</package3d>
<package3d name="CAPM6032X280" urn="urn:adsk.eagle:package:16290896/5" type="model">
<description>Molded Body, 6.00 X 3.20 X 2.80 mm body
&lt;p&gt;Molded Body package with body size 6.00 X 3.20 X 2.80 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPM6032X280"/>
</packageinstances>
</package3d>
<package3d name="CAPM7343X310" urn="urn:adsk.eagle:package:16290891/5" type="model">
<description>Molded Body, 7.30 X 4.30 X 3.10 mm body
&lt;p&gt;Molded Body package with body size 7.30 X 4.30 X 3.10 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPM7343X310"/>
</packageinstances>
</package3d>
<package3d name="CAPC4564X110L" urn="urn:adsk.eagle:package:16290887/6" type="model">
<description>Chip, 4.50 X 6.40 X 1.10 mm body
&lt;p&gt;Chip package with body size 4.50 X 6.40 X 1.10 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPC4564X110"/>
</packageinstances>
</package3d>
<package3d name="CAPRD550W60D1025H1250B" urn="urn:adsk.eagle:package:16290858/5" type="model">
<description>Radial Non-Polarized Capacitor, 5.50 mm pitch, 10.25 mm body diameter, 12.50 mm body height
&lt;p&gt;Radial Non-Polarized Capacitor package with 5.50 mm pitch (lead spacing), 0.60 mm lead diameter, 10.25 mm body diameter and 12.50 mm body height&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPRD550W60D1025H1250B"/>
</packageinstances>
</package3d>
<package3d name="CAPRD2261W240D5080H5555B" urn="urn:adsk.eagle:package:16290864/5" type="model">
<description>Radial Non-Polarized Capacitor, 22.61 mm pitch, 50.80 mm body diameter, 55.55 mm body height
&lt;p&gt;Radial Non-Polarized Capacitor package with 22.61 mm pitch (lead spacing), 2.40 mm lead diameter, 50.80 mm body diameter and 55.55 mm body height&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="CAPRD2261W240D5080H5555B"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="C" urn="urn:adsk.eagle:symbol:16290820/1" library_version="21">
<description>Capacitor</description>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<text x="2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.778" layer="97">&gt;SPICEMODEL</text>
<text x="2.54" y="0" size="1.778" layer="96">&gt;VALUE</text>
<text x="2.54" y="-5.08" size="1.778" layer="97">&gt;SPICEEXTRA</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="C" urn="urn:adsk.eagle:component:16290909/10" prefix="C" uservalue="yes" library_version="21">
<description>&lt;B&gt;Capacitor - Generic</description>
<gates>
<gate name="G$1" symbol="C" x="0" y="0"/>
</gates>
<devices>
<device name="CHIP-0402(1005-METRIC)" package="CAPC1005X60">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290895/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="0402" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Ceramic Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="MLCC" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-0504(1310-METRIC)" package="CAPC1110X102">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290904/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="0504" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Ceramic Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="MLCC" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-0603(1608-METRIC)" package="CAPC1608X85">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290898/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="0603" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Ceramic Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="MLCC" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-0805(2012-METRIC)" package="CAPC2012X110">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290897/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="0805" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Ceramic Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="MLCC" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-1206(3216-METRIC)" package="CAPC3216X135">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290893/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="1206" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Ceramic Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="MLCC" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-1210(3225-METRIC)" package="CAPC3225X135">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290903/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="1210" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Ceramic Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="MLCC" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-1812(4532-METRIC)" package="CAPC4532X135">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290900/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="1812" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Ceramic Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="MLCC" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TANTALUM-1206(3216-METRIC)" package="CAPM3216X180">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290894/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="1206" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Tantalum Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="Polymer Capacitors" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TANTALUM-1411(3528-METRIC)" package="CAPM3528X210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290902/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="1411" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Tantalum Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="Polymer Capacitors" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TANTALUM-2412(6032-METRIC)" package="CAPM6032X280">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290896/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="2412" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Tantalum Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="Polymer Capacitors" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TANTALUM-2917(7343-METRIC)" package="CAPM7343X310">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290891/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="2917" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Tantalum Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="Polymer Capacitors" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-1825(4564-METRIC)" package="CAPC4564X110">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290887/6"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="1825" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Ceramic Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="MLCC" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="RADIAL-12.5MM-DIA" package="CAPRD550W60D1025H1250B">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290858/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="12.5MM-DIA" constant="no"/>
<attribute name="PACKAGE_TYPE" value="THT" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Aluminum Non-Polar Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="Radial Can" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="RADIAL-55.5MM-DIA" package="CAPRD2261W240D5080H5555B">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16290864/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Capacitor" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="55.5MM-DIA" constant="no"/>
<attribute name="PACKAGE_TYPE" value="THT" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="Aluminum Non-Polar Capacitors" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="Radian Can" constant="no"/>
<attribute name="VOLTAGE_RATING" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="C">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
</devicesets>
</library>
<library name="Resistor" urn="urn:adsk.eagle:library:16378527">
<description>&lt;B&gt;Resistors, Potentiometers, TrimPot</description>
<packages>
<package name="RESC1005X40" urn="urn:adsk.eagle:footprint:16378540/5" library_version="21">
<description>Chip, 1.05 X 0.54 X 0.40 mm body
&lt;p&gt;Chip package with body size 1.05 X 0.54 X 0.40 mm&lt;/p&gt;</description>
<wire x1="0.55" y1="0.636" x2="-0.55" y2="0.636" width="0.127" layer="21"/>
<wire x1="0.55" y1="-0.636" x2="-0.55" y2="-0.636" width="0.127" layer="21"/>
<wire x1="0.55" y1="-0.3" x2="-0.55" y2="-0.3" width="0.12" layer="51"/>
<wire x1="-0.55" y1="-0.3" x2="-0.55" y2="0.3" width="0.12" layer="51"/>
<wire x1="-0.55" y1="0.3" x2="0.55" y2="0.3" width="0.12" layer="51"/>
<wire x1="0.55" y1="0.3" x2="0.55" y2="-0.3" width="0.12" layer="51"/>
<smd name="1" x="-0.5075" y="0" dx="0.5351" dy="0.644" layer="1"/>
<smd name="2" x="0.5075" y="0" dx="0.5351" dy="0.644" layer="1"/>
<text x="0" y="1.271" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.271" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC1608X60" urn="urn:adsk.eagle:footprint:16378537/5" library_version="21">
<description>Chip, 1.60 X 0.82 X 0.60 mm body
&lt;p&gt;Chip package with body size 1.60 X 0.82 X 0.60 mm&lt;/p&gt;</description>
<wire x1="0.85" y1="0.8009" x2="-0.85" y2="0.8009" width="0.127" layer="21"/>
<wire x1="0.85" y1="-0.8009" x2="-0.85" y2="-0.8009" width="0.127" layer="21"/>
<wire x1="0.85" y1="-0.475" x2="-0.85" y2="-0.475" width="0.12" layer="51"/>
<wire x1="-0.85" y1="-0.475" x2="-0.85" y2="0.475" width="0.12" layer="51"/>
<wire x1="-0.85" y1="0.475" x2="0.85" y2="0.475" width="0.12" layer="51"/>
<wire x1="0.85" y1="0.475" x2="0.85" y2="-0.475" width="0.12" layer="51"/>
<smd name="1" x="-0.8152" y="0" dx="0.7987" dy="0.9739" layer="1"/>
<smd name="2" x="0.8152" y="0" dx="0.7987" dy="0.9739" layer="1"/>
<text x="0" y="1.4359" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.4359" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC2012X65" urn="urn:adsk.eagle:footprint:16378532/5" library_version="21">
<description>Chip, 2.00 X 1.25 X 0.65 mm body
&lt;p&gt;Chip package with body size 2.00 X 1.25 X 0.65 mm&lt;/p&gt;</description>
<wire x1="1.075" y1="1.0241" x2="-1.075" y2="1.0241" width="0.127" layer="21"/>
<wire x1="1.075" y1="-1.0241" x2="-1.075" y2="-1.0241" width="0.127" layer="21"/>
<wire x1="1.075" y1="-0.7" x2="-1.075" y2="-0.7" width="0.12" layer="51"/>
<wire x1="-1.075" y1="-0.7" x2="-1.075" y2="0.7" width="0.12" layer="51"/>
<wire x1="-1.075" y1="0.7" x2="1.075" y2="0.7" width="0.12" layer="51"/>
<wire x1="1.075" y1="0.7" x2="1.075" y2="-0.7" width="0.12" layer="51"/>
<smd name="1" x="-0.9195" y="0" dx="1.0312" dy="1.4202" layer="1"/>
<smd name="2" x="0.9195" y="0" dx="1.0312" dy="1.4202" layer="1"/>
<text x="0" y="1.6591" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.6591" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC3216X70" urn="urn:adsk.eagle:footprint:16378539/5" library_version="21">
<description>Chip, 3.20 X 1.60 X 0.70 mm body
&lt;p&gt;Chip package with body size 3.20 X 1.60 X 0.70 mm&lt;/p&gt;</description>
<wire x1="1.7" y1="1.2217" x2="-1.7" y2="1.2217" width="0.127" layer="21"/>
<wire x1="1.7" y1="-1.2217" x2="-1.7" y2="-1.2217" width="0.127" layer="21"/>
<wire x1="1.7" y1="-0.9" x2="-1.7" y2="-0.9" width="0.12" layer="51"/>
<wire x1="-1.7" y1="-0.9" x2="-1.7" y2="0.9" width="0.12" layer="51"/>
<wire x1="-1.7" y1="0.9" x2="1.7" y2="0.9" width="0.12" layer="51"/>
<wire x1="1.7" y1="0.9" x2="1.7" y2="-0.9" width="0.12" layer="51"/>
<smd name="1" x="-1.4754" y="0" dx="1.1646" dy="1.8153" layer="1"/>
<smd name="2" x="1.4754" y="0" dx="1.1646" dy="1.8153" layer="1"/>
<text x="0" y="1.8567" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.8567" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC3224X71" urn="urn:adsk.eagle:footprint:16378536/5" library_version="21">
<description>Chip, 3.20 X 2.49 X 0.71 mm body
&lt;p&gt;Chip package with body size 3.20 X 2.49 X 0.71 mm&lt;/p&gt;</description>
<wire x1="1.675" y1="1.6441" x2="-1.675" y2="1.6441" width="0.127" layer="21"/>
<wire x1="1.675" y1="-1.6441" x2="-1.675" y2="-1.6441" width="0.127" layer="21"/>
<wire x1="1.675" y1="-1.32" x2="-1.675" y2="-1.32" width="0.12" layer="51"/>
<wire x1="-1.675" y1="-1.32" x2="-1.675" y2="1.32" width="0.12" layer="51"/>
<wire x1="-1.675" y1="1.32" x2="1.675" y2="1.32" width="0.12" layer="51"/>
<wire x1="1.675" y1="1.32" x2="1.675" y2="-1.32" width="0.12" layer="51"/>
<smd name="1" x="-1.4695" y="0" dx="1.1312" dy="2.6602" layer="1"/>
<smd name="2" x="1.4695" y="0" dx="1.1312" dy="2.6602" layer="1"/>
<text x="0" y="2.2791" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.2791" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC5025X71" urn="urn:adsk.eagle:footprint:16378538/5" library_version="21">
<description>Chip, 5.00 X 2.50 X 0.71 mm body
&lt;p&gt;Chip package with body size 5.00 X 2.50 X 0.71 mm&lt;/p&gt;</description>
<wire x1="2.575" y1="1.6491" x2="-2.575" y2="1.6491" width="0.127" layer="21"/>
<wire x1="2.575" y1="-1.6491" x2="-2.575" y2="-1.6491" width="0.127" layer="21"/>
<wire x1="2.575" y1="-1.325" x2="-2.575" y2="-1.325" width="0.12" layer="51"/>
<wire x1="-2.575" y1="-1.325" x2="-2.575" y2="1.325" width="0.12" layer="51"/>
<wire x1="-2.575" y1="1.325" x2="2.575" y2="1.325" width="0.12" layer="51"/>
<wire x1="2.575" y1="1.325" x2="2.575" y2="-1.325" width="0.12" layer="51"/>
<smd name="1" x="-2.3195" y="0" dx="1.2312" dy="2.6702" layer="1"/>
<smd name="2" x="2.3195" y="0" dx="1.2312" dy="2.6702" layer="1"/>
<text x="0" y="2.2841" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.2841" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESC6332X71" urn="urn:adsk.eagle:footprint:16378533/5" library_version="21">
<description>Chip, 6.30 X 3.20 X 0.71 mm body
&lt;p&gt;Chip package with body size 6.30 X 3.20 X 0.71 mm&lt;/p&gt;</description>
<wire x1="3.225" y1="1.9991" x2="-3.225" y2="1.9991" width="0.127" layer="21"/>
<wire x1="3.225" y1="-1.9991" x2="-3.225" y2="-1.9991" width="0.127" layer="21"/>
<wire x1="3.225" y1="-1.675" x2="-3.225" y2="-1.675" width="0.12" layer="51"/>
<wire x1="-3.225" y1="-1.675" x2="-3.225" y2="1.675" width="0.12" layer="51"/>
<wire x1="-3.225" y1="1.675" x2="3.225" y2="1.675" width="0.12" layer="51"/>
<wire x1="3.225" y1="1.675" x2="3.225" y2="-1.675" width="0.12" layer="51"/>
<smd name="1" x="-2.9695" y="0" dx="1.2312" dy="3.3702" layer="1"/>
<smd name="2" x="2.9695" y="0" dx="1.2312" dy="3.3702" layer="1"/>
<text x="0" y="2.6341" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.6341" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESAD1176W63L850D250B" urn="urn:adsk.eagle:footprint:16378542/5" library_version="21">
<description>AXIAL Resistor, 11.76 mm pitch, 8.5 mm body length, 2.5 mm body diameter
&lt;p&gt;AXIAL Resistor package with 11.76 mm pitch, 0.63 mm lead diameter, 8.5 mm body length and 2.5 mm body diameter&lt;/p&gt;</description>
<wire x1="-4.25" y1="1.25" x2="-4.25" y2="-1.25" width="0.127" layer="21"/>
<wire x1="-4.25" y1="-1.25" x2="4.25" y2="-1.25" width="0.127" layer="21"/>
<wire x1="4.25" y1="-1.25" x2="4.25" y2="1.25" width="0.127" layer="21"/>
<wire x1="4.25" y1="1.25" x2="-4.25" y2="1.25" width="0.127" layer="21"/>
<wire x1="-4.25" y1="0" x2="-4.911" y2="0" width="0.127" layer="21"/>
<wire x1="4.25" y1="0" x2="4.911" y2="0" width="0.127" layer="21"/>
<wire x1="4.25" y1="-1.25" x2="-4.25" y2="-1.25" width="0.12" layer="51"/>
<wire x1="-4.25" y1="-1.25" x2="-4.25" y2="1.25" width="0.12" layer="51"/>
<wire x1="-4.25" y1="1.25" x2="4.25" y2="1.25" width="0.12" layer="51"/>
<wire x1="4.25" y1="1.25" x2="4.25" y2="-1.25" width="0.12" layer="51"/>
<pad name="1" x="-5.88" y="0" drill="0.83" diameter="1.43"/>
<pad name="2" x="5.88" y="0" drill="0.83" diameter="1.43"/>
<text x="0" y="1.885" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.885" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESMELF3515" urn="urn:adsk.eagle:footprint:16378534/5" library_version="21">
<description>MELF, 3.50 mm length, 1.52 mm diameter
&lt;p&gt;MELF Resistor package with 3.50 mm length and 1.52 mm diameter&lt;/p&gt;</description>
<wire x1="1.105" y1="1.1825" x2="-1.105" y2="1.1825" width="0.127" layer="21"/>
<wire x1="-1.105" y1="-1.1825" x2="1.105" y2="-1.1825" width="0.127" layer="21"/>
<wire x1="1.85" y1="-0.8" x2="-1.85" y2="-0.8" width="0.12" layer="51"/>
<wire x1="-1.85" y1="-0.8" x2="-1.85" y2="0.8" width="0.12" layer="51"/>
<wire x1="-1.85" y1="0.8" x2="1.85" y2="0.8" width="0.12" layer="51"/>
<wire x1="1.85" y1="0.8" x2="1.85" y2="-0.8" width="0.12" layer="51"/>
<smd name="1" x="-1.6813" y="0" dx="1.1527" dy="1.7371" layer="1"/>
<smd name="2" x="1.6813" y="0" dx="1.1527" dy="1.7371" layer="1"/>
<text x="0" y="1.8175" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.8175" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESMELF2014" urn="urn:adsk.eagle:footprint:16378535/5" library_version="21">
<description>MELF, 2.00 mm length, 1.40 mm diameter
&lt;p&gt;MELF Resistor package with 2.00 mm length and 1.40 mm diameter&lt;/p&gt;</description>
<wire x1="0.5189" y1="1.114" x2="-0.5189" y2="1.114" width="0.127" layer="21"/>
<wire x1="-0.5189" y1="-1.114" x2="0.5189" y2="-1.114" width="0.127" layer="21"/>
<wire x1="1.05" y1="-0.725" x2="-1.05" y2="-0.725" width="0.12" layer="51"/>
<wire x1="-1.05" y1="-0.725" x2="-1.05" y2="0.725" width="0.12" layer="51"/>
<wire x1="-1.05" y1="0.725" x2="1.05" y2="0.725" width="0.12" layer="51"/>
<wire x1="1.05" y1="0.725" x2="1.05" y2="-0.725" width="0.12" layer="51"/>
<smd name="1" x="-0.9918" y="0" dx="0.9456" dy="1.6" layer="1"/>
<smd name="2" x="0.9918" y="0" dx="0.9456" dy="1.6" layer="1"/>
<text x="0" y="1.749" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.749" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESMELF5924" urn="urn:adsk.eagle:footprint:16378541/5" library_version="21">
<description>MELF, 5.90 mm length, 2.45 mm diameter
&lt;p&gt;MELF Resistor package with 5.90 mm length and 2.45 mm diameter&lt;/p&gt;</description>
<wire x1="2.1315" y1="1.639" x2="-2.1315" y2="1.639" width="0.127" layer="21"/>
<wire x1="-2.1315" y1="-1.639" x2="2.1315" y2="-1.639" width="0.127" layer="21"/>
<wire x1="3.05" y1="-1.25" x2="-3.05" y2="-1.25" width="0.12" layer="51"/>
<wire x1="-3.05" y1="-1.25" x2="-3.05" y2="1.25" width="0.12" layer="51"/>
<wire x1="-3.05" y1="1.25" x2="3.05" y2="1.25" width="0.12" layer="51"/>
<wire x1="3.05" y1="1.25" x2="3.05" y2="-1.25" width="0.12" layer="51"/>
<smd name="1" x="-2.7946" y="0" dx="1.3261" dy="2.65" layer="1"/>
<smd name="2" x="2.7946" y="0" dx="1.3261" dy="2.65" layer="1"/>
<text x="0" y="2.274" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-2.274" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESMELF3218" urn="urn:adsk.eagle:footprint:16378531/5" library_version="21">
<description>MELF, 3.20 mm length, 1.80 mm diameter
&lt;p&gt;MELF Resistor package with 3.20 mm length and 1.80 mm diameter&lt;/p&gt;</description>
<wire x1="0.8815" y1="1.314" x2="-0.8815" y2="1.314" width="0.127" layer="21"/>
<wire x1="-0.8815" y1="-1.314" x2="0.8815" y2="-1.314" width="0.127" layer="21"/>
<wire x1="1.7" y1="-0.925" x2="-1.7" y2="-0.925" width="0.12" layer="51"/>
<wire x1="-1.7" y1="-0.925" x2="-1.7" y2="0.925" width="0.12" layer="51"/>
<wire x1="-1.7" y1="0.925" x2="1.7" y2="0.925" width="0.12" layer="51"/>
<wire x1="1.7" y1="0.925" x2="1.7" y2="-0.925" width="0.12" layer="51"/>
<smd name="1" x="-1.4946" y="0" dx="1.2261" dy="2" layer="1"/>
<smd name="2" x="1.4946" y="0" dx="1.2261" dy="2" layer="1"/>
<text x="0" y="1.949" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.949" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="RESAD724W46L381D178B" urn="urn:adsk.eagle:footprint:16378530/5" library_version="21">
<description>Axial Resistor, 7.24 mm pitch, 3.81 mm body length, 1.78 mm body diameter
&lt;p&gt;Axial Resistor package with 7.24 mm pitch (lead spacing), 0.46 mm lead diameter, 3.81 mm body length and 1.78 mm body diameter&lt;/p&gt;</description>
<wire x1="-2.16" y1="1.015" x2="-2.16" y2="-1.015" width="0.127" layer="21"/>
<wire x1="-2.16" y1="-1.015" x2="2.16" y2="-1.015" width="0.127" layer="21"/>
<wire x1="2.16" y1="-1.015" x2="2.16" y2="1.015" width="0.127" layer="21"/>
<wire x1="2.16" y1="1.015" x2="-2.16" y2="1.015" width="0.127" layer="21"/>
<wire x1="-2.16" y1="0" x2="-2.736" y2="0" width="0.127" layer="21"/>
<wire x1="2.16" y1="0" x2="2.736" y2="0" width="0.127" layer="21"/>
<wire x1="2.16" y1="-1.015" x2="-2.16" y2="-1.015" width="0.12" layer="51"/>
<wire x1="-2.16" y1="-1.015" x2="-2.16" y2="1.015" width="0.12" layer="51"/>
<wire x1="-2.16" y1="1.015" x2="2.16" y2="1.015" width="0.12" layer="51"/>
<wire x1="2.16" y1="1.015" x2="2.16" y2="-1.015" width="0.12" layer="51"/>
<pad name="1" x="-3.62" y="0" drill="0.66" diameter="1.26"/>
<pad name="2" x="3.62" y="0" drill="0.66" diameter="1.26"/>
<text x="0" y="1.65" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.65" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="RESC1005X40" urn="urn:adsk.eagle:package:16378568/5" type="model">
<description>Chip, 1.05 X 0.54 X 0.40 mm body
&lt;p&gt;Chip package with body size 1.05 X 0.54 X 0.40 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC1005X40"/>
</packageinstances>
</package3d>
<package3d name="RESC1608X60" urn="urn:adsk.eagle:package:16378565/5" type="model">
<description>Chip, 1.60 X 0.82 X 0.60 mm body
&lt;p&gt;Chip package with body size 1.60 X 0.82 X 0.60 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC1608X60"/>
</packageinstances>
</package3d>
<package3d name="RESC2012X65" urn="urn:adsk.eagle:package:16378559/5" type="model">
<description>Chip, 2.00 X 1.25 X 0.65 mm body
&lt;p&gt;Chip package with body size 2.00 X 1.25 X 0.65 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC2012X65"/>
</packageinstances>
</package3d>
<package3d name="RESC3216X70" urn="urn:adsk.eagle:package:16378566/5" type="model">
<description>Chip, 3.20 X 1.60 X 0.70 mm body
&lt;p&gt;Chip package with body size 3.20 X 1.60 X 0.70 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC3216X70"/>
</packageinstances>
</package3d>
<package3d name="RESC3224X71" urn="urn:adsk.eagle:package:16378563/7" type="model">
<description>Chip, 3.20 X 2.49 X 0.71 mm body
&lt;p&gt;Chip package with body size 3.20 X 2.49 X 0.71 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC3224X71"/>
</packageinstances>
</package3d>
<package3d name="RESC5025X71" urn="urn:adsk.eagle:package:16378564/5" type="model">
<description>Chip, 5.00 X 2.50 X 0.71 mm body
&lt;p&gt;Chip package with body size 5.00 X 2.50 X 0.71 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC5025X71"/>
</packageinstances>
</package3d>
<package3d name="RESC6332X71L" urn="urn:adsk.eagle:package:16378557/6" type="model">
<description>Chip, 6.30 X 3.20 X 0.71 mm body
&lt;p&gt;Chip package with body size 6.30 X 3.20 X 0.71 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESC6332X71"/>
</packageinstances>
</package3d>
<package3d name="RESAD1176W63L850D250B" urn="urn:adsk.eagle:package:16378560/5" type="model">
<description>AXIAL Resistor, 11.76 mm pitch, 8.5 mm body length, 2.5 mm body diameter
&lt;p&gt;AXIAL Resistor package with 11.76 mm pitch, 0.63 mm lead diameter, 8.5 mm body length and 2.5 mm body diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESAD1176W63L850D250B"/>
</packageinstances>
</package3d>
<package3d name="RESMELF3515" urn="urn:adsk.eagle:package:16378562/5" type="model">
<description>MELF, 3.50 mm length, 1.52 mm diameter
&lt;p&gt;MELF Resistor package with 3.50 mm length and 1.52 mm diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESMELF3515"/>
</packageinstances>
</package3d>
<package3d name="RESMELF2014" urn="urn:adsk.eagle:package:16378558/5" type="model">
<description>MELF, 2.00 mm length, 1.40 mm diameter
&lt;p&gt;MELF Resistor package with 2.00 mm length and 1.40 mm diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESMELF2014"/>
</packageinstances>
</package3d>
<package3d name="RESMELF5924" urn="urn:adsk.eagle:package:16378567/6" type="model">
<description>MELF, 5.90 mm length, 2.45 mm diameter
&lt;p&gt;MELF Resistor package with 5.90 mm length and 2.45 mm diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESMELF5924"/>
</packageinstances>
</package3d>
<package3d name="RESMELF3218" urn="urn:adsk.eagle:package:16378556/5" type="model">
<description>MELF, 3.20 mm length, 1.80 mm diameter
&lt;p&gt;MELF Resistor package with 3.20 mm length and 1.80 mm diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESMELF3218"/>
</packageinstances>
</package3d>
<package3d name="RESAD724W46L381D178B" urn="urn:adsk.eagle:package:16378561/5" type="model">
<description>Axial Resistor, 7.24 mm pitch, 3.81 mm body length, 1.78 mm body diameter
&lt;p&gt;Axial Resistor package with 7.24 mm pitch (lead spacing), 0.46 mm lead diameter, 3.81 mm body length and 1.78 mm body diameter&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="RESAD724W46L381D178B"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="R" urn="urn:adsk.eagle:symbol:16378529/5" library_version="21">
<description>RESISTOR</description>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.1524" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="0" y="2.54" size="1.778" layer="95" align="center">&gt;NAME</text>
<text x="0" y="-5.08" size="1.778" layer="95" align="center">&gt;SPICEMODEL</text>
<text x="0" y="-2.54" size="1.778" layer="96" align="center">&gt;VALUE</text>
<text x="0" y="-7.62" size="1.778" layer="95" align="center">&gt;SPICEEXTRA</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" urn="urn:adsk.eagle:component:16378570/12" prefix="R" uservalue="yes" library_version="21">
<description>Resistor Fixed - Generic</description>
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="CHIP-0402(1005-METRIC)" package="RESC1005X40">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378568/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistors" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Chip Resistor 1.05 X 0.54 X 0.40 mm body 0402(1005-METRIC) Package" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="0402" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="" constant="no"/>
<attribute name="TEMPERATURE_COEFFICIENT" value="" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-0603(1608-METRIC)" package="RESC1608X60">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378565/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistors" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Chip Resistor 1.60 X 0.82 X 0.60 mm body 0603(1608-METRIC) Package" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="0603" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="" constant="no"/>
<attribute name="TEMPERATURE_COEFFICIENT" value="" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-0805(2012-METRIC)" package="RESC2012X65">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378559/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistors" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Chip Resistor 2.00 X 1.25 X 0.65 mm body 0805(2012-METRIC) Package" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="0805" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="" constant="no"/>
<attribute name="TEMPERATURE_COEFFICIENT" value="" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-1206(3216-METRIC)" package="RESC3216X70">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378566/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistors" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Chip Resistor 3.20 X 1.60 X 0.70 mm body 1206(3216-METRIC) Package" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="1206" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="" constant="no"/>
<attribute name="TEMPERATURE_COEFFICIENT" value="" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-1210(3225-METRIC)" package="RESC3224X71">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378563/7"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistors" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Chip Resistor 3.20 X 2.49 X 0.71 mm body 1210(3225-METRIC) Package" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="1210" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="" constant="no"/>
<attribute name="TEMPERATURE_COEFFICIENT" value="" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-2010(5025-METRIC)" package="RESC5025X71">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378564/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistors" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Chip Resistor 5.00 X 2.50 X 0.71 mm body 2010(5025-METRIC) Package" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="2010" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="" constant="no"/>
<attribute name="TEMPERATURE_COEFFICIENT" value="" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-2512(6332-METRIC)" package="RESC6332X71">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378557/6"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistors" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Chip Resistor 6.30 X 3.20 X 0.71 mm body 2512(6332-METRIC) Package" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="2512" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="" constant="no"/>
<attribute name="TEMPERATURE_COEFFICIENT" value="" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="AXIAL-11.7MM-PITCH" package="RESAD1176W63L850D250B">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378560/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistors" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Axial Resistor 11.76 mm pitch 8.5 mm body length 2.5 mm body diameter" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="AXIAL" constant="no"/>
<attribute name="PACKAGE_TYPE" value="THT" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="" constant="no"/>
<attribute name="TEMPERATURE_COEFFICIENT" value="" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF(3515-METRIC)" package="RESMELF3515">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378562/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistors" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="MELF Resistor 3.50 mm length Resistor 1.52 mm diameter 3515-METRIC Package" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="MELF" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="" constant="no"/>
<attribute name="TEMPERATURE_COEFFICIENT" value="" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF(2014-METRIC)" package="RESMELF2014">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378558/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistors" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="MELF Resistor 2.00 mm length Resistor 1.40 mm diameter 2014-METRIC Package" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="MELF" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="" constant="no"/>
<attribute name="TEMPERATURE_COEFFICIENT" value="" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF(5924-METRIC)" package="RESMELF5924">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378567/6"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistors" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="MELF Resistor 5.90 mm length Resistor 2.45 mm diameter 5924-METRIC Package" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="MELF" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="" constant="no"/>
<attribute name="TEMPERATURE_COEFFICIENT" value="" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF(3218-METRIC)" package="RESMELF3218">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378556/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistors" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="MELF Resistor 3.20 mm length Resistor 1.80 mm diameter 3218-METRIC Package" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="MELF" constant="no"/>
<attribute name="PACKAGE_TYPE" value="SMD" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="" constant="no"/>
<attribute name="TEMPERATURE_COEFFICIENT" value="" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="AXIAL-7.2MM-PITCH" package="RESAD724W46L381D178B">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:16378561/5"/>
</package3dinstances>
<technologies>
<technology name="_">
<attribute name="CATEGORY" value="Resistors" constant="no"/>
<attribute name="DATASHEET" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Axial Resistor 7.24 mm pitch 3.81 mm body length 1.78 mm body diameter" constant="no"/>
<attribute name="MANUFACTURER" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OPERATING_TEMPERATURE" value="" constant="no"/>
<attribute name="PACKAGE_SIZE" value="AXIAL" constant="no"/>
<attribute name="PACKAGE_TYPE" value="THT" constant="no"/>
<attribute name="PART_STATUS" value="" constant="no"/>
<attribute name="ROHS" value="" constant="no"/>
<attribute name="SERIES" value="" constant="no"/>
<attribute name="SUBCATEGORY" value="" constant="no"/>
<attribute name="TEMPERATURE_COEFFICIENT" value="" constant="no"/>
<attribute name="THERMALLOSS" value="" constant="no"/>
<attribute name="TOLERANCE" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="R">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
</devicesets>
</library>
<library name="Switches" urn="urn:adsk.eagle:library:14854419">
<description>This library contains various switch types such as DIP,Tactile,Toggle Push Button etc.

&lt;br&gt;
&lt;br&gt;If you would like to purchase any of our product please visit, &lt;a href="https://www.te.com/usa-en/home.html?te_bu=Cor&amp;te_type=disp&amp;te_campaign=ult_glo_cor-ult-global-disp-autodesk-models_sma-299_1&amp;elqCampaignId=84950"&gt;TE.com&lt;/a&gt;
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Terms and Conditions Disclaimer:&lt;/b&gt;
&lt;br&gt;
By using any of these models, you agree that this information has been provided to you free of charge for your use but remains the sole property of TE Connectivity Corporation (''TE'') or SnapEDA,  Inc. or Ultra Librarian/EMA Design Automation, Inc. (collectively, "Company"). While Company has used reasonable efforts to ensure its accuracy, Company does not guarantee that it is error-free, not makes any other representation, warranty, or guarantee that the information is completely accurate or up-to-date. In many cases, the CAD data has been simplified to remove proprietary detail while maintaining critical interface geometric detail for use by customers. Company expressly disclaims all implied warranties regarding this information, including but not limited to any implied warranties or merchantability or fitness for a particular purpose.</description>
<packages>
<package name="SW2_1825027-E" urn="urn:adsk.eagle:footprint:14854489/1" library_version="5">
<pad name="1" x="0" y="0" drill="0.9906" diameter="1.4986"/>
<pad name="2" x="4.4958" y="0" drill="0.9906" diameter="1.4986"/>
<pad name="3" x="-1.2446" y="2.4892" drill="1.2954" diameter="1.8034"/>
<pad name="4" x="5.7658" y="2.4892" drill="1.2954" diameter="1.8034"/>
<wire x1="4.0132" y1="-3.3528" x2="4.0132" y2="-6.9088" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-3.3528" x2="0.508" y2="-6.9088" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-6.9088" x2="4.0132" y2="-6.9088" width="0.1524" layer="51"/>
<wire x1="-1.2954" y1="-3.3528" x2="5.8166" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="5.8166" y1="-3.3528" x2="5.8166" y2="4.0132" width="0.1524" layer="51"/>
<wire x1="5.8166" y1="4.0132" x2="-1.2954" y2="4.0132" width="0.1524" layer="51"/>
<wire x1="-1.2954" y1="4.0132" x2="-1.2954" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="-3.4798" x2="5.9436" y2="-3.4798" width="0.1524" layer="21"/>
<wire x1="5.9436" y1="-3.4798" x2="5.9436" y2="1.143" width="0.1524" layer="21"/>
<wire x1="5.9436" y1="4.1402" x2="-1.4224" y2="4.1402" width="0.1524" layer="21"/>
<wire x1="-1.4224" y1="4.1402" x2="-1.4224" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-1.4224" y1="1.143" x2="-1.4224" y2="-3.4798" width="0.1524" layer="21"/>
<wire x1="5.9436" y1="3.683" x2="5.9436" y2="4.1402" width="0.1524" layer="21"/>
<text x="0.6858" y="-0.635" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-2.3622" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="0.5334" y="2.6162" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Value</text>
<text x="-1.016" y="2.6162" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
</packages>
<packages3d>
<package3d name="SW2_1825027-E" urn="urn:adsk.eagle:package:14854601/2" type="model">
<packageinstances>
<packageinstance name="SW2_1825027-E"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="SW2_1825027-A" urn="urn:adsk.eagle:symbol:14854440/2" library_version="5">
<pin name="1" x="-7.62" y="0" visible="pad" length="short" direction="pas"/>
<pin name="2" x="7.62" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="3" x="-5.08" y="-2.54" visible="pad" length="short" direction="pas"/>
<pin name="4" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" rot="R180"/>
<wire x1="-5.08" y1="0" x2="-3.81" y2="0" width="0.2032" layer="94"/>
<wire x1="5.08" y1="0" x2="3.81" y2="0" width="0.2032" layer="94"/>
<wire x1="-3.175" y1="0" x2="3.81" y2="1.905" width="0.2032" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-3.81" width="0.2032" layer="94"/>
<wire x1="-0.889" y1="-3.81" x2="0.889" y2="-3.81" width="0.2032" layer="94"/>
<wire x1="-0.635" y1="-4.191" x2="0.635" y2="-4.191" width="0.2032" layer="94"/>
<wire x1="-0.381" y1="-4.572" x2="0.381" y2="-4.572" width="0.2032" layer="94"/>
<wire x1="-0.127" y1="-4.953" x2="0.127" y2="-4.953" width="0.2032" layer="94"/>
<wire x1="3.81" y1="0" x2="2.54" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="2.54" y1="0" x2="3.81" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="-3.81" y1="0" x2="-2.54" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="-2.54" y1="0" x2="-3.81" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="-2.54" width="0.2032" layer="94"/>
<wire x1="0" y1="-2.54" x2="2.54" y2="-2.54" width="0.2032" layer="94"/>
<text x="-7.8994" y="2.0828" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;Value</text>
<text x="-7.8994" y="7.1628" size="3.4798" layer="95" ratio="10" rot="SR0">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="1-1825027-4" urn="urn:adsk.eagle:component:14854724/3" prefix="SW" library_version="5">
<gates>
<gate name="A" symbol="SW2_1825027-A" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SW2_1825027-E">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14854601/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="BUILT_BY" value="EMA_UL_Team" constant="no"/>
<attribute name="CATEGORY" value="Tactile Switches" constant="no"/>
<attribute name="CONFIGURATION__POLE-THROW_" value="Single Pole - Single Throw" constant="no"/>
<attribute name="CONTACT_CURRENT_RATING" value="50" constant="no"/>
<attribute name="COPYRIGHT" value="Copyright (C) 2016 Accelerated Designs. All rights reserved" constant="no"/>
<attribute name="DESCRIPTION" value="FSMRA5JH04=R/A,TACT PB SW,160G" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="1-1825027-4" constant="no"/>
<attribute name="MAX_SWITCHING_CURRENT" value="-" constant="no"/>
<attribute name="MAX_SWITCHING_VOLTAGE_AC_" value="-" constant="no"/>
<attribute name="PART_STATUS" value="active" constant="no"/>
<attribute name="PRODUCT_TYPE" value="Switch" constant="no"/>
<attribute name="SERIES" value="Unknown" constant="no"/>
<attribute name="SWITCH_TYPE" value="Tactile Switches" constant="no"/>
<attribute name="TE_INTERNAL_NUMBER" value="1-1825027-4" constant="no"/>
<attribute name="TE_PART_NUMBER" value="1-1825027-4" constant="no"/>
<attribute name="VENDOR" value="TE Connectivity" constant="no"/>
<attribute name="VOLTAGE_RATING" value="-" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="2025-01-31_14-30-48_Library" deviceset="MSPM0G3107SDGS20R" device="DGS0020A-MFG"/>
<part name="SUPPLY1" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="VCC" device="" value="3.3V"/>
<part name="SUPPLY2" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND" device="" value="GND"/>
<part name="SUPPLY3" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND" device="" value="GND"/>
<part name="C1" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0805(2012-METRIC)" package3d_urn="urn:adsk.eagle:package:16290897/5" technology="_" value="10uF"/>
<part name="C2" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0805(2012-METRIC)" package3d_urn="urn:adsk.eagle:package:16290897/5" technology="_" value="0.1uF"/>
<part name="C3" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0805(2012-METRIC)" package3d_urn="urn:adsk.eagle:package:16290897/5" technology="_" value="0.47uF"/>
<part name="SUPPLY4" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND" device="" value="GND"/>
<part name="SUPPLY5" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="VCC" device="" value="3.3V"/>
<part name="C4" library="Capacitor" library_urn="urn:adsk.eagle:library:16290819" deviceset="C" device="CHIP-0805(2012-METRIC)" package3d_urn="urn:adsk.eagle:package:16290897/5" technology="_" value="0.1uF"/>
<part name="R1" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="47kohm"/>
<part name="SUPPLY6" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND" device="" value="GND"/>
<part name="SW1" library="Switches" library_urn="urn:adsk.eagle:library:14854419" deviceset="1-1825027-4" device="" package3d_urn="urn:adsk.eagle:package:14854601/2"/>
<part name="SUPPLY7" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND" device="" value="GND"/>
<part name="SW2" library="Switches" library_urn="urn:adsk.eagle:library:14854419" deviceset="1-1825027-4" device="" package3d_urn="urn:adsk.eagle:package:14854601/2"/>
<part name="SUPPLY8" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="VCC" device="" value="3.3V"/>
<part name="R2" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="47kohm"/>
<part name="SUPPLY9" library="Power_Symbols" library_urn="urn:adsk.eagle:library:16502351" deviceset="GND" device="" value="GND"/>
<part name="R3" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="33ohm"/>
<part name="R4" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="33ohm"/>
<part name="R5" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="470ohm"/>
<part name="R6" library="Resistor" library_urn="urn:adsk.eagle:library:16378527" deviceset="R" device="CHIP-0603(1608-METRIC)" package3d_urn="urn:adsk.eagle:package:16378565/5" technology="_" value="470ohm"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="A" x="10.16" y="45.72" smashed="yes">
<attribute name="NAME" x="18.1346" y="59.9186" size="2.083" layer="95" ratio="6"/>
<attribute name="VALUE" x="14.9552" y="54.8386" size="2.083" layer="96" ratio="6"/>
<attribute name="VALUE" x="14.9552" y="52.2986" size="2.083" layer="96" ratio="6"/>
</instance>
<instance part="SUPPLY1" gate="G$1" x="-96.52" y="50.8" smashed="yes">
<attribute name="VALUE" x="-96.52" y="55.88" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="SUPPLY2" gate="G$1" x="-91.44" y="27.94" smashed="yes">
<attribute name="VALUE" x="-91.44" y="25.4" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="SUPPLY3" gate="G$1" x="76.2" y="-10.16" smashed="yes">
<attribute name="VALUE" x="76.2" y="-12.7" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="C1" gate="G$1" x="-96.52" y="43.18" smashed="yes">
<attribute name="NAME" x="-93.98" y="45.72" size="1.778" layer="95"/>
<attribute name="VALUE" x="-93.98" y="43.18" size="1.778" layer="96"/>
</instance>
<instance part="C2" gate="G$1" x="-83.82" y="43.18" smashed="yes">
<attribute name="NAME" x="-81.28" y="45.72" size="1.778" layer="95"/>
<attribute name="VALUE" x="-81.28" y="43.18" size="1.778" layer="96"/>
</instance>
<instance part="C3" gate="G$1" x="-71.12" y="38.1" smashed="yes">
<attribute name="NAME" x="-68.58" y="40.64" size="1.778" layer="95"/>
<attribute name="VALUE" x="-68.58" y="38.1" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY4" gate="G$1" x="-71.12" y="27.94" smashed="yes">
<attribute name="VALUE" x="-71.12" y="25.4" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="SUPPLY5" gate="G$1" x="-45.72" y="27.94" smashed="yes">
<attribute name="VALUE" x="-45.72" y="33.02" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="C4" gate="G$1" x="-45.72" y="5.08" smashed="yes">
<attribute name="NAME" x="-43.18" y="7.62" size="1.778" layer="95"/>
<attribute name="VALUE" x="-43.18" y="5.08" size="1.778" layer="96"/>
</instance>
<instance part="R1" gate="G$1" x="-45.72" y="17.78" smashed="yes" rot="R90">
<attribute name="NAME" x="-48.26" y="17.78" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="-43.18" y="17.78" size="1.778" layer="96" rot="R90" align="center"/>
</instance>
<instance part="SUPPLY6" gate="G$1" x="-45.72" y="-7.62" smashed="yes">
<attribute name="VALUE" x="-45.72" y="-10.16" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="SW1" gate="A" x="-60.96" y="10.16" smashed="yes">
<attribute name="VALUE" x="-76.4794" y="-15.6972" size="3.4798" layer="96" ratio="10" rot="SR0"/>
<attribute name="NAME" x="-66.3194" y="14.7828" size="3.4798" layer="95" ratio="10" rot="SR0"/>
</instance>
<instance part="SUPPLY7" gate="G$1" x="-73.66" y="0" smashed="yes">
<attribute name="VALUE" x="-73.66" y="-2.54" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="SW2" gate="A" x="-15.24" y="-15.24" smashed="yes">
<attribute name="VALUE" x="-20.5994" y="-30.9372" size="3.4798" layer="96" ratio="10" rot="SR0"/>
<attribute name="NAME" x="-20.5994" y="-10.6172" size="3.4798" layer="95" ratio="10" rot="SR0"/>
</instance>
<instance part="SUPPLY8" gate="G$1" x="0" y="-12.7" smashed="yes">
<attribute name="VALUE" x="0" y="-7.62" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="R2" gate="G$1" x="-27.94" y="-22.86" smashed="yes" rot="R90">
<attribute name="NAME" x="-30.48" y="-22.86" size="1.778" layer="95" rot="R90" align="center"/>
<attribute name="VALUE" x="-25.4" y="-22.86" size="1.778" layer="96" rot="R90" align="center"/>
</instance>
<instance part="SUPPLY9" gate="G$1" x="-27.94" y="-33.02" smashed="yes">
<attribute name="VALUE" x="-27.94" y="-35.56" size="1.778" layer="96" align="top-center"/>
</instance>
<instance part="R3" gate="G$1" x="-2.54" y="10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="-2.54" y="7.62" size="1.778" layer="95" rot="R180" align="center"/>
<attribute name="VALUE" x="-2.54" y="12.7" size="1.778" layer="96" rot="R180" align="center"/>
</instance>
<instance part="R4" gate="G$1" x="-5.08" y="2.54" smashed="yes" rot="R180">
<attribute name="NAME" x="-5.08" y="0" size="1.778" layer="95" rot="R180" align="center"/>
<attribute name="VALUE" x="-5.08" y="5.08" size="1.778" layer="96" rot="R180" align="center"/>
</instance>
<instance part="R5" gate="G$1" x="-7.62" y="20.32" smashed="yes" rot="R180">
<attribute name="NAME" x="-7.62" y="17.78" size="1.778" layer="95" rot="R180" align="center"/>
<attribute name="VALUE" x="-7.62" y="22.86" size="1.778" layer="96" rot="R180" align="center"/>
</instance>
<instance part="R6" gate="G$1" x="-7.62" y="27.94" smashed="yes" rot="R180">
<attribute name="NAME" x="-7.62" y="25.4" size="1.778" layer="95" rot="R180" align="center"/>
<attribute name="VALUE" x="-7.62" y="30.48" size="1.778" layer="96" rot="R180" align="center"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="U1" gate="A" pin="VSS"/>
<wire x1="71.12" y1="-5.08" x2="76.2" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-5.08" x2="76.2" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="SUPPLY3" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SUPPLY2" gate="G$1" pin="GND"/>
<wire x1="-91.44" y1="30.48" x2="-91.44" y2="35.56" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="-96.52" y1="38.1" x2="-96.52" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-96.52" y1="35.56" x2="-91.44" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="35.56" x2="-83.82" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="35.56" x2="-83.82" y2="38.1" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="2"/>
<junction x="-91.44" y="35.56"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="2"/>
<wire x1="-71.12" y1="33.02" x2="-71.12" y2="30.48" width="0.1524" layer="91"/>
<pinref part="SUPPLY4" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="-45.72" y1="0" x2="-45.72" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="SUPPLY6" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SW1" gate="A" pin="1"/>
<wire x1="-68.58" y1="10.16" x2="-73.66" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="10.16" x2="-73.66" y2="2.54" width="0.1524" layer="91"/>
<pinref part="SUPPLY7" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="-27.94" y1="-27.94" x2="-27.94" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="SUPPLY9" gate="G$1" pin="GND"/>
</segment>
</net>
<net name="3.3V" class="0">
<segment>
<pinref part="SUPPLY1" gate="G$1" pin="VCC"/>
<wire x1="-96.52" y1="50.8" x2="-96.52" y2="45.72" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="-96.52" y1="45.72" x2="-83.82" y2="45.72" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="-83.82" y1="45.72" x2="10.16" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="VDD"/>
<junction x="-96.52" y="45.72"/>
<junction x="-83.82" y="45.72"/>
</segment>
<segment>
<pinref part="SUPPLY5" gate="G$1" pin="VCC"/>
<wire x1="-45.72" y1="27.94" x2="-45.72" y2="22.86" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="SUPPLY8" gate="G$1" pin="VCC"/>
<wire x1="0" y1="-12.7" x2="0" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="0" y1="-15.24" x2="-7.62" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="SW2" gate="A" pin="2"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U1" gate="A" pin="VCORE"/>
<wire x1="10.16" y1="43.18" x2="-71.12" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="43.18" x2="-71.12" y2="40.64" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U1" gate="A" pin="RST_N"/>
<wire x1="10.16" y1="38.1" x2="-50.8" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="38.1" x2="-50.8" y2="10.16" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="-45.72" y1="12.7" x2="-45.72" y2="10.16" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="-45.72" y1="10.16" x2="-45.72" y2="7.62" width="0.1524" layer="91"/>
<pinref part="SW1" gate="A" pin="2"/>
<wire x1="-53.34" y1="10.16" x2="-50.8" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="10.16" x2="-45.72" y2="10.16" width="0.1524" layer="91"/>
<junction x="-50.8" y="10.16"/>
<junction x="-45.72" y="10.16"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="SW2" gate="A" pin="1"/>
<wire x1="-22.86" y1="-15.24" x2="-27.94" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-15.24" x2="-27.94" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="-27.94" y1="-15.24" x2="-33.02" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="-15.24" x2="-33.02" y2="12.7" width="0.1524" layer="91"/>
<junction x="-27.94" y="-15.24"/>
<pinref part="U1" gate="A" pin="PA18_A1_3"/>
<wire x1="10.16" y1="12.7" x2="-33.02" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U1" gate="A" pin="PA19_SWDIO"/>
<wire x1="10.16" y1="10.16" x2="2.54" y2="10.16" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
</segment>
</net>
<net name="XDS_TMS_SWDIO" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="-7.62" y1="10.16" x2="-25.4" y2="10.16" width="0.1524" layer="91"/>
<label x="-30.48" y="7.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="XDS_TCK_SWDCLK" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="-10.16" y1="2.54" x2="-25.4" y2="2.54" width="0.1524" layer="91"/>
<label x="-30.48" y="0" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U1" gate="A" pin="PA11"/>
<wire x1="10.16" y1="20.32" x2="-2.54" y2="20.32" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
</segment>
</net>
<net name="UART_TX" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="-12.7" y1="20.32" x2="-30.48" y2="20.32" width="0.1524" layer="91"/>
<label x="-27.94" y="22.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="UART_RX" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="-12.7" y1="27.94" x2="-30.48" y2="27.94" width="0.1524" layer="91"/>
<label x="-27.94" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U1" gate="A" pin="PA10_CLK_OUT"/>
<wire x1="10.16" y1="22.86" x2="5.08" y2="22.86" width="0.1524" layer="91"/>
<wire x1="5.08" y1="22.86" x2="5.08" y2="27.94" width="0.1524" layer="91"/>
<wire x1="5.08" y1="27.94" x2="-2.54" y2="27.94" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U1" gate="A" pin="PA20_SWCLK"/>
<wire x1="10.16" y1="7.62" x2="5.08" y2="7.62" width="0.1524" layer="91"/>
<wire x1="5.08" y1="7.62" x2="5.08" y2="2.54" width="0.1524" layer="91"/>
<wire x1="5.08" y1="2.54" x2="0" y2="2.54" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="1"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
<note version="8.4" severity="warning">
Since Version 8.4, EAGLE supports properties for SPICE simulation. 
Probes in schematics and SPICE mapping objects found in parts and library devices
will not be understood with this version. Update EAGLE to the latest version
for full support of SPICE simulation. 
</note>
</compatibility>
</eagle>
