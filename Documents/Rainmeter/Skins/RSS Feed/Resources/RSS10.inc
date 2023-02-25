; =======================================================
; ---- RSS10 Measures
; =======================================================

; ---- Title

[MeasureRSS10]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=#RSS10#
RegExp=#ReguExp#
UpdateRate=600
Substitute=#Substitute#
StringIndex=1

[MeasureRSS10Link]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=2

; ---- Item 1

[MeasureRSS10Item1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=3

[MeasureRSS10Link1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=4

; ---- Item 2

[MeasureRSS10Item2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=5

[MeasureRSS10Link2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=6

; ---- Item 3

[MeasureRSS10Item3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=7

[MeasureRSS10Link3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=8

; ---- Item 4

[MeasureRSS10Item4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=9

[MeasureRSS10Link4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=10

; ---- Item 5

[MeasureRSS10Item5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=11

[MeasureRSS10Link5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=12

; ---- Item 6

[MeasureRSS10Item6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=13

[MeasureRSS10Link6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=14

; ---- Item 7

[MeasureRSS10Item7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=15

[MeasureRSS10Link7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=16

; ---- Item 8

[MeasureRSS10Item8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=17

[MeasureRSS10Link8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=18

; ---- Item 9

[MeasureRSS10Item9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=19

[MeasureRSS10Link9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS10]
Substitute=#Substitute#
StringIndex=20

; =======================================================
; ---- RSS10 Meters
; =======================================================

; ---- Title

[MeterRSS10Title]
Meter=String
MeasureName=MeasureRSS10
MeterStyle=ItemStyle
X=27
Y=7
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS10LinkTitle][!RainmeterHideMeter MeterRSS10Title][!RainmeterRedraw]

[MeterRSS10LinkTitle]
Meter=String
MeasureName=MeasureRSS10
MeterStyle=LinkStyle
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS10Link]][!RainmeterShowMeter MeterRSS10Title][!RainmeterHideMeter MeterRSS10LinkTitle][!RainmeterRedraw]

; ---- Item 1

[MeterRSS10Item1]
Meter=String
MeasureName=MeasureRSS10Item1
MeterStyle=ItemStyle
Y=26
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS10Link1][!RainmeterHideMeter MeterRSS10Item1][!RainmeterRedraw]

[MeterRSS10Link1]
Meter=String
MeasureName=MeasureRSS10Item1
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS10Link1]][!RainmeterShowMeter MeterRSS10Item1][!RainmeterHideMeter MeterRSS10Link1][!RainmeterRedraw]

; ---- Item 2

[MeterRSS10Item2]
Meter=String
MeasureName=MeasureRSS10Item2
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS10Link2][!RainmeterHideMeter MeterRSS10Item2][!RainmeterRedraw]

[MeterRSS10Link2]
Meter=String
MeasureName=MeasureRSS10Item2
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS10Link2]][!RainmeterShowMeter MeterRSS10Item2][!RainmeterHideMeter MeterRSS10Link2][!RainmeterRedraw]

; ---- Item 3

[MeterRSS10Item3]
Meter=String
MeasureName=MeasureRSS10Item3
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS10Link3][!RainmeterHideMeter MeterRSS10Item3][!RainmeterRedraw]

[MeterRSS10Link3]
Meter=String
MeasureName=MeasureRSS10Item3
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS10Link3]][!RainmeterShowMeter MeterRSS10Item3][!RainmeterHideMeter MeterRSS10Link3][!RainmeterRedraw]

; ---- Item 4

[MeterRSS10Item4]
Meter=String
MeasureName=MeasureRSS10Item4
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS10Link4][!RainmeterHideMeter MeterRSS10Item4][!RainmeterRedraw]

[MeterRSS10Link4]
Meter=String
MeasureName=MeasureRSS10Item4
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS10Link4]][!RainmeterShowMeter MeterRSS10Item4][!RainmeterHideMeter MeterRSS10Link4][!RainmeterRedraw]

; ---- Item 5

[MeterRSS10Item5]
Meter=String
MeasureName=MeasureRSS10Item5
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS10Link5][!RainmeterHideMeter MeterRSS10Item5][!RainmeterRedraw]

[MeterRSS10Link5]
Meter=String
MeasureName=MeasureRSS10Item5
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS10Link5]][!RainmeterShowMeter MeterRSS10Item5][!RainmeterHideMeter MeterRSS10Link5][!RainmeterRedraw]

; ---- Item 6

[MeterRSS10Item6]
Meter=String
MeasureName=MeasureRSS10Item6
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS10Link6][!RainmeterHideMeter MeterRSS10Item6][!RainmeterRedraw]

[MeterRSS10Link6]
Meter=String
MeasureName=MeasureRSS10Item6
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS10Link6]][!RainmeterShowMeter MeterRSS10Item6][!RainmeterHideMeter MeterRSS10Link6][!RainmeterRedraw]

; ---- Item 7

[MeterRSS10Item7]
Meter=String
MeasureName=MeasureRSS10Item7
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS10Link7][!RainmeterHideMeter MeterRSS10Item7][!RainmeterRedraw]

[MeterRSS10Link7]
Meter=String
MeasureName=MeasureRSS10Item7
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS10Link7]][!RainmeterShowMeter MeterRSS10Item7][!RainmeterHideMeter MeterRSS10Link7][!RainmeterRedraw]

; ---- Item 8

[MeterRSS10Item8]
Meter=String
MeasureName=MeasureRSS10Item8
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS10Link8][!RainmeterHideMeter MeterRSS10Item8][!RainmeterRedraw]

[MeterRSS10Link8]
Meter=String
MeasureName=MeasureRSS10Item8
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS10Link8]][!RainmeterShowMeter MeterRSS10Item8][!RainmeterHideMeter MeterRSS10Link8][!RainmeterRedraw]

; ---- Item 9

[MeterRSS10Item9]
Meter=String
MeasureName=MeasureRSS10Item9
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS10Link9][!RainmeterHideMeter MeterRSS10Item9][!RainmeterRedraw]

[MeterRSS10Link9]
Meter=String
MeasureName=MeasureRSS10Item9
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS10Link9]][!RainmeterShowMeter MeterRSS10Item9][!RainmeterHideMeter MeterRSS10Link9][!RainmeterRedraw]

