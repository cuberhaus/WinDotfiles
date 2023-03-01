[MeterShowFeed1]
Meter=String
MeterStyle=FeedStyle
X=7
Y=185
LeftMouseDownAction=!Execute #Show1##Hide2##Hide3##Hide4##Hide5##Hide6##Hide7##Hide8##Hide9##Hide10#[!RainmeterRedraw]
MouseOverAction=!Execute [!RainmeterShowMeter MeterShowFeed1Name][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterShowFeed1Name][!RainmeterRedraw]

[MeterShowFeed2]
Meter=String
MeterStyle=FeedStyle
LeftMouseDownAction=!Execute #Hide1##Show2##Hide3##Hide4##Hide5##Hide6##Hide7##Hide8##Hide9##Hide10#[!RainmeterRedraw]
MouseOverAction=!Execute [!RainmeterShowMeter MeterShowFeed2Name][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterShowFeed2Name][!RainmeterRedraw]

[MeterShowFeed3]
Meter=String
MeterStyle=FeedStyle
LeftMouseDownAction=!Execute #Hide1##Hide2##Show3##Hide4##Hide5##Hide6##Hide7##Hide8##Hide9##Hide10#[!RainmeterRedraw]
MouseOverAction=!Execute [!RainmeterShowMeter MeterShowFeed3Name][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterShowFeed3Name][!RainmeterRedraw]

[MeterShowFeed4]
Meter=String
MeterStyle=FeedStyle
LeftMouseDownAction=!Execute #Hide1##Hide2##Hide3##Show4##Hide5##Hide6##Hide7##Hide8##Hide9##Hide10#[!RainmeterRedraw]
MouseOverAction=!Execute [!RainmeterShowMeter MeterShowFeed4Name][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterShowFeed4Name][!RainmeterRedraw]

[MeterShowFeed5]
Meter=String
MeterStyle=FeedStyle
LeftMouseDownAction=!Execute #Hide1##Hide2##Hide3##Hide4##Show5##Hide6##Hide7##Hide8##Hide9##Hide10#[!RainmeterRedraw]
MouseOverAction=!Execute [!RainmeterShowMeter MeterShowFeed5Name][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterShowFeed5Name][!RainmeterRedraw]

[MeterShowFeed6]
Meter=String
MeterStyle=FeedStyle
LeftMouseDownAction=!Execute #Hide1##Hide2##Hide3##Hide4##Hide5##Show6##Hide7##Hide8##Hide9##Hide10#[!RainmeterRedraw]
MouseOverAction=!Execute [!RainmeterShowMeter MeterShowFeed6Name][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterShowFeed6Name][!RainmeterRedraw]

[MeterShowFeed7]
Meter=String
MeterStyle=FeedStyle
LeftMouseDownAction=!Execute #Hide1##Hide2##Hide3##Hide4##Hide5##Hide6##Show7##Hide8##Hide9##Hide10#[!RainmeterRedraw]
MouseOverAction=!Execute [!RainmeterShowMeter MeterShowFeed7Name][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterShowFeed7Name][!RainmeterRedraw]

[MeterShowFeed8]
Meter=String
MeterStyle=FeedStyle
LeftMouseDownAction=!Execute #Hide1##Hide2##Hide3##Hide4##Hide5##Hide6##Hide7##Show8##Hide9##Hide10#[!RainmeterRedraw]
MouseOverAction=!Execute [!RainmeterShowMeter MeterShowFeed8Name][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterShowFeed8Name][!RainmeterRedraw]

[MeterShowFeed9]
Meter=String
MeterStyle=FeedStyle
LeftMouseDownAction=!Execute #Hide1##Hide2##Hide3##Hide4##Hide5##Hide6##Hide7##Hide8##Show9##Hide10#[!RainmeterRedraw]
MouseOverAction=!Execute [!RainmeterShowMeter MeterShowFeed9Name][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterShowFeed9Name][!RainmeterRedraw]

[MeterShowFeed10]
Meter=String
MeterStyle=FeedStyle
LeftMouseDownAction=!Execute #Hide1##Hide2##Hide3##Hide4##Hide5##Hide6##Hide7##Hide8##Hide9##Show10#[!RainmeterRedraw]
MouseOverAction=!Execute [!RainmeterShowMeter MeterShowFeed10Name][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterShowFeed10Name][!RainmeterRedraw]

; ---- Feed Names

[MeterShowFeed1Name]
Meter=String
MeterStyle=ItemStyle
X=327
Y=182
FontSize=7
Text=#Feed1#
StringAlign=Right
Hidden=1

[MeterShowFeed2Name]
Meter=String
MeterStyle=ItemStyle
X=327
Y=182
FontSize=7
Text=#Feed2#
StringAlign=Right
Hidden=1

[MeterShowFeed3Name]
Meter=String
MeterStyle=ItemStyle
X=327
Y=182
FontSize=7
Text=#Feed3#
StringAlign=Right
Hidden=1

[MeterShowFeed4Name]
Meter=String
MeterStyle=ItemStyle
X=327
Y=182
FontSize=7
Text=#Feed4#
StringAlign=Right
Hidden=1

[MeterShowFeed5Name]
Meter=String
MeterStyle=ItemStyle
X=327
Y=182
FontSize=7
Text=#Feed5#
StringAlign=Right
Hidden=1

[MeterShowFeed6Name]
Meter=String
MeterStyle=ItemStyle
X=327
Y=182
FontSize=7
Text=#Feed6#
StringAlign=Right
Hidden=1

[MeterShowFeed7Name]
Meter=String
MeterStyle=ItemStyle
X=327
Y=182
FontSize=7
Text=#Feed7#
StringAlign=Right
Hidden=1

[MeterShowFeed8Name]
Meter=String
MeterStyle=ItemStyle
X=327
Y=182
FontSize=7
Text=#Feed8#
StringAlign=Right
Hidden=1

[MeterShowFeed9Name]
Meter=String
MeterStyle=ItemStyle
X=327
Y=182
FontSize=7
Text=#Feed9#
StringAlign=Right
Hidden=1

[MeterShowFeed10Name]
Meter=String
MeterStyle=ItemStyle
X=327
Y=182
FontSize=7
Text=#Feed10#
StringAlign=Right
Hidden=1