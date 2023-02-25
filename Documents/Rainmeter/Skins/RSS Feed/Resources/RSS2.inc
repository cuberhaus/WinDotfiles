; =======================================================
; ---- RSS2 Measures
; =======================================================

; ---- Title

[MeasureRSS2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=#RSS2#
RegExp=#ReguExp#
UpdateRate=600
Substitute=#Substitute#
StringIndex=1

[MeasureRSS2Link]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=2

; ---- Item 1

[MeasureRSS2Item1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=3

[MeasureRSS2Link1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=4

; ---- Item 2

[MeasureRSS2Item2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=5

[MeasureRSS2Link2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=6

; ---- Item 3

[MeasureRSS2Item3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=7

[MeasureRSS2Link3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=8

; ---- Item 4

[MeasureRSS2Item4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=9

[MeasureRSS2Link4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=10

; ---- Item 5

[MeasureRSS2Item5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=11

[MeasureRSS2Link5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=12

; ---- Item 6

[MeasureRSS2Item6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=13

[MeasureRSS2Link6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=14

; ---- Item 7

[MeasureRSS2Item7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=15

[MeasureRSS2Link7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=16

; ---- Item 8

[MeasureRSS2Item8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=17

[MeasureRSS2Link8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=18

; ---- Item 9

[MeasureRSS2Item9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=19

[MeasureRSS2Link9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS2]
Substitute=#Substitute#
StringIndex=20

; =======================================================
; ---- RSS2 Meters
; =======================================================

; ---- Title

[MeterRSS2Title]
Meter=String
MeasureName=MeasureRSS2
MeterStyle=ItemStyle
X=27
Y=7
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS2LinkTitle][!RainmeterHideMeter MeterRSS2Title][!RainmeterRedraw]

[MeterRSS2LinkTitle]
Meter=String
MeasureName=MeasureRSS2
MeterStyle=LinkStyle
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS2Link]][!RainmeterShowMeter MeterRSS2Title][!RainmeterHideMeter MeterRSS2LinkTitle][!RainmeterRedraw]

; ---- Item 1

[MeterRSS2Item1]
Meter=String
MeasureName=MeasureRSS2Item1
MeterStyle=ItemStyle
Y=26
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS2Link1][!RainmeterHideMeter MeterRSS2Item1][!RainmeterRedraw]

[MeterRSS2Link1]
Meter=String
MeasureName=MeasureRSS2Item1
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS2Link1]][!RainmeterShowMeter MeterRSS2Item1][!RainmeterHideMeter MeterRSS2Link1][!RainmeterRedraw]

; ---- Item 2

[MeterRSS2Item2]
Meter=String
MeasureName=MeasureRSS2Item2
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS2Link2][!RainmeterHideMeter MeterRSS2Item2][!RainmeterRedraw]

[MeterRSS2Link2]
Meter=String
MeasureName=MeasureRSS2Item2
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS2Link2]][!RainmeterShowMeter MeterRSS2Item2][!RainmeterHideMeter MeterRSS2Link2][!RainmeterRedraw]

; ---- Item 3

[MeterRSS2Item3]
Meter=String
MeasureName=MeasureRSS2Item3
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS2Link3][!RainmeterHideMeter MeterRSS2Item3][!RainmeterRedraw]

[MeterRSS2Link3]
Meter=String
MeasureName=MeasureRSS2Item3
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS2Link3]][!RainmeterShowMeter MeterRSS2Item3][!RainmeterHideMeter MeterRSS2Link3][!RainmeterRedraw]

; ---- Item 4

[MeterRSS2Item4]
Meter=String
MeasureName=MeasureRSS2Item4
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS2Link4][!RainmeterHideMeter MeterRSS2Item4][!RainmeterRedraw]

[MeterRSS2Link4]
Meter=String
MeasureName=MeasureRSS2Item4
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS2Link4]][!RainmeterShowMeter MeterRSS2Item4][!RainmeterHideMeter MeterRSS2Link4][!RainmeterRedraw]

; ---- Item 5

[MeterRSS2Item5]
Meter=String
MeasureName=MeasureRSS2Item5
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS2Link5][!RainmeterHideMeter MeterRSS2Item5][!RainmeterRedraw]

[MeterRSS2Link5]
Meter=String
MeasureName=MeasureRSS2Item5
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS2Link5]][!RainmeterShowMeter MeterRSS2Item5][!RainmeterHideMeter MeterRSS2Link5][!RainmeterRedraw]

; ---- Item 6

[MeterRSS2Item6]
Meter=String
MeasureName=MeasureRSS2Item6
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS2Link6][!RainmeterHideMeter MeterRSS2Item6][!RainmeterRedraw]

[MeterRSS2Link6]
Meter=String
MeasureName=MeasureRSS2Item6
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS2Link6]][!RainmeterShowMeter MeterRSS2Item6][!RainmeterHideMeter MeterRSS2Link6][!RainmeterRedraw]

; ---- Item 7

[MeterRSS2Item7]
Meter=String
MeasureName=MeasureRSS2Item7
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS2Link7][!RainmeterHideMeter MeterRSS2Item7][!RainmeterRedraw]

[MeterRSS2Link7]
Meter=String
MeasureName=MeasureRSS2Item7
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS2Link7]][!RainmeterShowMeter MeterRSS2Item7][!RainmeterHideMeter MeterRSS2Link7][!RainmeterRedraw]

; ---- Item 8

[MeterRSS2Item8]
Meter=String
MeasureName=MeasureRSS2Item8
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS2Link8][!RainmeterHideMeter MeterRSS2Item8][!RainmeterRedraw]

[MeterRSS2Link8]
Meter=String
MeasureName=MeasureRSS2Item8
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS2Link8]][!RainmeterShowMeter MeterRSS2Item8][!RainmeterHideMeter MeterRSS2Link8][!RainmeterRedraw]

; ---- Item 9

[MeterRSS2Item9]
Meter=String
MeasureName=MeasureRSS2Item9
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS2Link9][!RainmeterHideMeter MeterRSS2Item9][!RainmeterRedraw]

[MeterRSS2Link9]
Meter=String
MeasureName=MeasureRSS2Item9
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS2Link9]][!RainmeterShowMeter MeterRSS2Item9][!RainmeterHideMeter MeterRSS2Link9][!RainmeterRedraw]

