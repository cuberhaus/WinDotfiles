; =======================================================
; ---- RSS1 Measures
; =======================================================

; ---- Title

[MeasureRSS1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=#RSS1#
RegExp=#ReguExp#
UpdateRate=600
Substitute=#Substitute#
StringIndex=1

[MeasureRSS1Link]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=2

; ---- Item 1

[MeasureRSS1Item1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=3

[MeasureRSS1Link1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=4

; ---- Item 2

[MeasureRSS1Item2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=5

[MeasureRSS1Link2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=6

; ---- Item 3

[MeasureRSS1Item3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=7

[MeasureRSS1Link3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=8

; ---- Item 4

[MeasureRSS1Item4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=9

[MeasureRSS1Link4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=10

; ---- Item 5

[MeasureRSS1Item5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=11

[MeasureRSS1Link5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=12

; ---- Item 6

[MeasureRSS1Item6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=13

[MeasureRSS1Link6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=14

; ---- Item 7

[MeasureRSS1Item7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=15

[MeasureRSS1Link7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=16

; ---- Item 8

[MeasureRSS1Item8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=17

[MeasureRSS1Link8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=18

; ---- Item 9

[MeasureRSS1Item9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=19

[MeasureRSS1Link9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS1]
Substitute=#Substitute#
StringIndex=20

; =======================================================
; ---- RSS1 Meters
; =======================================================

; ---- Title

[MeterRSS1Title]
Meter=String
MeasureName=MeasureRSS1
MeterStyle=ItemStyle
X=27
Y=7
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS1LinkTitle][!RainmeterHideMeter MeterRSS1Title][!RainmeterRedraw]

[MeterRSS1LinkTitle]
Meter=String
MeasureName=MeasureRSS1
MeterStyle=LinkStyle
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS1Link]][!RainmeterShowMeter MeterRSS1Title][!RainmeterHideMeter MeterRSS1LinkTitle][!RainmeterRedraw]

; ---- Item 1

[MeterRSS1Item1]
Meter=String
MeasureName=MeasureRSS1Item1
MeterStyle=ItemStyle
Y=26
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS1Link1][!RainmeterHideMeter MeterRSS1Item1][!RainmeterRedraw]

[MeterRSS1Link1]
Meter=String
MeasureName=MeasureRSS1Item1
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS1Link1]][!RainmeterShowMeter MeterRSS1Item1][!RainmeterHideMeter MeterRSS1Link1][!RainmeterRedraw]

; ---- Item 2

[MeterRSS1Item2]
Meter=String
MeasureName=MeasureRSS1Item2
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS1Link2][!RainmeterHideMeter MeterRSS1Item2][!RainmeterRedraw]

[MeterRSS1Link2]
Meter=String
MeasureName=MeasureRSS1Item2
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS1Link2]][!RainmeterShowMeter MeterRSS1Item2][!RainmeterHideMeter MeterRSS1Link2][!RainmeterRedraw]

; ---- Item 3

[MeterRSS1Item3]
Meter=String
MeasureName=MeasureRSS1Item3
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS1Link3][!RainmeterHideMeter MeterRSS1Item3][!RainmeterRedraw]

[MeterRSS1Link3]
Meter=String
MeasureName=MeasureRSS1Item3
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS1Link3]][!RainmeterShowMeter MeterRSS1Item3][!RainmeterHideMeter MeterRSS1Link3][!RainmeterRedraw]

; ---- Item 4

[MeterRSS1Item4]
Meter=String
MeasureName=MeasureRSS1Item4
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS1Link4][!RainmeterHideMeter MeterRSS1Item4][!RainmeterRedraw]

[MeterRSS1Link4]
Meter=String
MeasureName=MeasureRSS1Item4
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS1Link4]][!RainmeterShowMeter MeterRSS1Item4][!RainmeterHideMeter MeterRSS1Link4][!RainmeterRedraw]

; ---- Item 5

[MeterRSS1Item5]
Meter=String
MeasureName=MeasureRSS1Item5
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS1Link5][!RainmeterHideMeter MeterRSS1Item5][!RainmeterRedraw]

[MeterRSS1Link5]
Meter=String
MeasureName=MeasureRSS1Item5
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS1Link5]][!RainmeterShowMeter MeterRSS1Item5][!RainmeterHideMeter MeterRSS1Link5][!RainmeterRedraw]

; ---- Item 6

[MeterRSS1Item6]
Meter=String
MeasureName=MeasureRSS1Item6
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS1Link6][!RainmeterHideMeter MeterRSS1Item6][!RainmeterRedraw]

[MeterRSS1Link6]
Meter=String
MeasureName=MeasureRSS1Item6
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS1Link6]][!RainmeterShowMeter MeterRSS1Item6][!RainmeterHideMeter MeterRSS1Link6][!RainmeterRedraw]

; ---- Item 7

[MeterRSS1Item7]
Meter=String
MeasureName=MeasureRSS1Item7
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS1Link7][!RainmeterHideMeter MeterRSS1Item7][!RainmeterRedraw]

[MeterRSS1Link7]
Meter=String
MeasureName=MeasureRSS1Item7
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS1Link7]][!RainmeterShowMeter MeterRSS1Item7][!RainmeterHideMeter MeterRSS1Link7][!RainmeterRedraw]

; ---- Item 8

[MeterRSS1Item8]
Meter=String
MeasureName=MeasureRSS1Item8
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS1Link8][!RainmeterHideMeter MeterRSS1Item8][!RainmeterRedraw]

[MeterRSS1Link8]
Meter=String
MeasureName=MeasureRSS1Item8
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS1Link8]][!RainmeterShowMeter MeterRSS1Item8][!RainmeterHideMeter MeterRSS1Link8][!RainmeterRedraw]

; ---- Item 9

[MeterRSS1Item9]
Meter=String
MeasureName=MeasureRSS1Item9
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS1Link9][!RainmeterHideMeter MeterRSS1Item9][!RainmeterRedraw]

[MeterRSS1Link9]
Meter=String
MeasureName=MeasureRSS1Item9
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS1Link9]][!RainmeterShowMeter MeterRSS1Item9][!RainmeterHideMeter MeterRSS1Link9][!RainmeterRedraw]

