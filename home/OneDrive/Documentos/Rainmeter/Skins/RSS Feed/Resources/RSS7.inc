; =======================================================
; ---- RSS7 Measures
; =======================================================

; ---- Title

[MeasureRSS7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=#RSS7#
RegExp=#ReguExp#
UpdateRate=600
Substitute=#Substitute#
StringIndex=1

[MeasureRSS7Link]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=2

; ---- Item 1

[MeasureRSS7Item1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=3

[MeasureRSS7Link1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=4

; ---- Item 2

[MeasureRSS7Item2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=5

[MeasureRSS7Link2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=6

; ---- Item 3

[MeasureRSS7Item3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=7

[MeasureRSS7Link3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=8

; ---- Item 4

[MeasureRSS7Item4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=9

[MeasureRSS7Link4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=10

; ---- Item 5

[MeasureRSS7Item5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=11

[MeasureRSS7Link5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=12

; ---- Item 6

[MeasureRSS7Item6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=13

[MeasureRSS7Link6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=14

; ---- Item 7

[MeasureRSS7Item7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=15

[MeasureRSS7Link7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=16

; ---- Item 8

[MeasureRSS7Item8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=17

[MeasureRSS7Link8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=18

; ---- Item 9

[MeasureRSS7Item9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=19

[MeasureRSS7Link9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS7]
Substitute=#Substitute#
StringIndex=20

; =======================================================
; ---- RSS7 Meters
; =======================================================

; ---- Title

[MeterRSS7Title]
Meter=String
MeasureName=MeasureRSS7
MeterStyle=ItemStyle
X=27
Y=7
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS7LinkTitle][!RainmeterHideMeter MeterRSS7Title][!RainmeterRedraw]

[MeterRSS7LinkTitle]
Meter=String
MeasureName=MeasureRSS7
MeterStyle=LinkStyle
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS7Link]][!RainmeterShowMeter MeterRSS7Title][!RainmeterHideMeter MeterRSS7LinkTitle][!RainmeterRedraw]

; ---- Item 1

[MeterRSS7Item1]
Meter=String
MeasureName=MeasureRSS7Item1
MeterStyle=ItemStyle
Y=26
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS7Link1][!RainmeterHideMeter MeterRSS7Item1][!RainmeterRedraw]

[MeterRSS7Link1]
Meter=String
MeasureName=MeasureRSS7Item1
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS7Link1]][!RainmeterShowMeter MeterRSS7Item1][!RainmeterHideMeter MeterRSS7Link1][!RainmeterRedraw]

; ---- Item 2

[MeterRSS7Item2]
Meter=String
MeasureName=MeasureRSS7Item2
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS7Link2][!RainmeterHideMeter MeterRSS7Item2][!RainmeterRedraw]

[MeterRSS7Link2]
Meter=String
MeasureName=MeasureRSS7Item2
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS7Link2]][!RainmeterShowMeter MeterRSS7Item2][!RainmeterHideMeter MeterRSS7Link2][!RainmeterRedraw]

; ---- Item 3

[MeterRSS7Item3]
Meter=String
MeasureName=MeasureRSS7Item3
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS7Link3][!RainmeterHideMeter MeterRSS7Item3][!RainmeterRedraw]

[MeterRSS7Link3]
Meter=String
MeasureName=MeasureRSS7Item3
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS7Link3]][!RainmeterShowMeter MeterRSS7Item3][!RainmeterHideMeter MeterRSS7Link3][!RainmeterRedraw]

; ---- Item 4

[MeterRSS7Item4]
Meter=String
MeasureName=MeasureRSS7Item4
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS7Link4][!RainmeterHideMeter MeterRSS7Item4][!RainmeterRedraw]

[MeterRSS7Link4]
Meter=String
MeasureName=MeasureRSS7Item4
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS7Link4]][!RainmeterShowMeter MeterRSS7Item4][!RainmeterHideMeter MeterRSS7Link4][!RainmeterRedraw]

; ---- Item 5

[MeterRSS7Item5]
Meter=String
MeasureName=MeasureRSS7Item5
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS7Link5][!RainmeterHideMeter MeterRSS7Item5][!RainmeterRedraw]

[MeterRSS7Link5]
Meter=String
MeasureName=MeasureRSS7Item5
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS7Link5]][!RainmeterShowMeter MeterRSS7Item5][!RainmeterHideMeter MeterRSS7Link5][!RainmeterRedraw]

; ---- Item 6

[MeterRSS7Item6]
Meter=String
MeasureName=MeasureRSS7Item6
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS7Link6][!RainmeterHideMeter MeterRSS7Item6][!RainmeterRedraw]

[MeterRSS7Link6]
Meter=String
MeasureName=MeasureRSS7Item6
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS7Link6]][!RainmeterShowMeter MeterRSS7Item6][!RainmeterHideMeter MeterRSS7Link6][!RainmeterRedraw]

; ---- Item 7

[MeterRSS7Item7]
Meter=String
MeasureName=MeasureRSS7Item7
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS7Link7][!RainmeterHideMeter MeterRSS7Item7][!RainmeterRedraw]

[MeterRSS7Link7]
Meter=String
MeasureName=MeasureRSS7Item7
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS7Link7]][!RainmeterShowMeter MeterRSS7Item7][!RainmeterHideMeter MeterRSS7Link7][!RainmeterRedraw]

; ---- Item 8

[MeterRSS7Item8]
Meter=String
MeasureName=MeasureRSS7Item8
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS7Link8][!RainmeterHideMeter MeterRSS7Item8][!RainmeterRedraw]

[MeterRSS7Link8]
Meter=String
MeasureName=MeasureRSS7Item8
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS7Link8]][!RainmeterShowMeter MeterRSS7Item8][!RainmeterHideMeter MeterRSS7Link8][!RainmeterRedraw]

; ---- Item 9

[MeterRSS7Item9]
Meter=String
MeasureName=MeasureRSS7Item9
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS7Link9][!RainmeterHideMeter MeterRSS7Item9][!RainmeterRedraw]

[MeterRSS7Link9]
Meter=String
MeasureName=MeasureRSS7Item9
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS7Link9]][!RainmeterShowMeter MeterRSS7Item9][!RainmeterHideMeter MeterRSS7Link9][!RainmeterRedraw]

