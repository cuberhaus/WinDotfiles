; =======================================================
; ---- RSS9 Measures
; =======================================================

; ---- Title

[MeasureRSS9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=#RSS9#
RegExp=#ReguExp#
UpdateRate=600
Substitute=#Substitute#
StringIndex=1

[MeasureRSS9Link]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=2

; ---- Item 1

[MeasureRSS9Item1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=3

[MeasureRSS9Link1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=4

; ---- Item 2

[MeasureRSS9Item2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=5

[MeasureRSS9Link2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=6

; ---- Item 3

[MeasureRSS9Item3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=7

[MeasureRSS9Link3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=8

; ---- Item 4

[MeasureRSS9Item4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=9

[MeasureRSS9Link4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=10

; ---- Item 5

[MeasureRSS9Item5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=11

[MeasureRSS9Link5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=12

; ---- Item 6

[MeasureRSS9Item6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=13

[MeasureRSS9Link6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=14

; ---- Item 7

[MeasureRSS9Item7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=15

[MeasureRSS9Link7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=16

; ---- Item 8

[MeasureRSS9Item8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=17

[MeasureRSS9Link8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=18

; ---- Item 9

[MeasureRSS9Item9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=19

[MeasureRSS9Link9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS9]
Substitute=#Substitute#
StringIndex=20

; =======================================================
; ---- RSS9 Meters
; =======================================================

; ---- Title

[MeterRSS9Title]
Meter=String
MeasureName=MeasureRSS9
MeterStyle=ItemStyle
X=27
Y=7
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS9LinkTitle][!RainmeterHideMeter MeterRSS9Title][!RainmeterRedraw]

[MeterRSS9LinkTitle]
Meter=String
MeasureName=MeasureRSS9
MeterStyle=LinkStyle
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS9Link]][!RainmeterShowMeter MeterRSS9Title][!RainmeterHideMeter MeterRSS9LinkTitle][!RainmeterRedraw]

; ---- Item 1

[MeterRSS9Item1]
Meter=String
MeasureName=MeasureRSS9Item1
MeterStyle=ItemStyle
Y=26
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS9Link1][!RainmeterHideMeter MeterRSS9Item1][!RainmeterRedraw]

[MeterRSS9Link1]
Meter=String
MeasureName=MeasureRSS9Item1
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS9Link1]][!RainmeterShowMeter MeterRSS9Item1][!RainmeterHideMeter MeterRSS9Link1][!RainmeterRedraw]

; ---- Item 2

[MeterRSS9Item2]
Meter=String
MeasureName=MeasureRSS9Item2
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS9Link2][!RainmeterHideMeter MeterRSS9Item2][!RainmeterRedraw]

[MeterRSS9Link2]
Meter=String
MeasureName=MeasureRSS9Item2
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS9Link2]][!RainmeterShowMeter MeterRSS9Item2][!RainmeterHideMeter MeterRSS9Link2][!RainmeterRedraw]

; ---- Item 3

[MeterRSS9Item3]
Meter=String
MeasureName=MeasureRSS9Item3
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS9Link3][!RainmeterHideMeter MeterRSS9Item3][!RainmeterRedraw]

[MeterRSS9Link3]
Meter=String
MeasureName=MeasureRSS9Item3
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS9Link3]][!RainmeterShowMeter MeterRSS9Item3][!RainmeterHideMeter MeterRSS9Link3][!RainmeterRedraw]

; ---- Item 4

[MeterRSS9Item4]
Meter=String
MeasureName=MeasureRSS9Item4
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS9Link4][!RainmeterHideMeter MeterRSS9Item4][!RainmeterRedraw]

[MeterRSS9Link4]
Meter=String
MeasureName=MeasureRSS9Item4
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS9Link4]][!RainmeterShowMeter MeterRSS9Item4][!RainmeterHideMeter MeterRSS9Link4][!RainmeterRedraw]

; ---- Item 5

[MeterRSS9Item5]
Meter=String
MeasureName=MeasureRSS9Item5
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS9Link5][!RainmeterHideMeter MeterRSS9Item5][!RainmeterRedraw]

[MeterRSS9Link5]
Meter=String
MeasureName=MeasureRSS9Item5
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS9Link5]][!RainmeterShowMeter MeterRSS9Item5][!RainmeterHideMeter MeterRSS9Link5][!RainmeterRedraw]

; ---- Item 6

[MeterRSS9Item6]
Meter=String
MeasureName=MeasureRSS9Item6
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS9Link6][!RainmeterHideMeter MeterRSS9Item6][!RainmeterRedraw]

[MeterRSS9Link6]
Meter=String
MeasureName=MeasureRSS9Item6
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS9Link6]][!RainmeterShowMeter MeterRSS9Item6][!RainmeterHideMeter MeterRSS9Link6][!RainmeterRedraw]

; ---- Item 7

[MeterRSS9Item7]
Meter=String
MeasureName=MeasureRSS9Item7
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS9Link7][!RainmeterHideMeter MeterRSS9Item7][!RainmeterRedraw]

[MeterRSS9Link7]
Meter=String
MeasureName=MeasureRSS9Item7
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS9Link7]][!RainmeterShowMeter MeterRSS9Item7][!RainmeterHideMeter MeterRSS9Link7][!RainmeterRedraw]

; ---- Item 8

[MeterRSS9Item8]
Meter=String
MeasureName=MeasureRSS9Item8
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS9Link8][!RainmeterHideMeter MeterRSS9Item8][!RainmeterRedraw]

[MeterRSS9Link8]
Meter=String
MeasureName=MeasureRSS9Item8
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS9Link8]][!RainmeterShowMeter MeterRSS9Item8][!RainmeterHideMeter MeterRSS9Link8][!RainmeterRedraw]

; ---- Item 9

[MeterRSS9Item9]
Meter=String
MeasureName=MeasureRSS9Item9
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS9Link9][!RainmeterHideMeter MeterRSS9Item9][!RainmeterRedraw]

[MeterRSS9Link9]
Meter=String
MeasureName=MeasureRSS9Item9
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS9Link9]][!RainmeterShowMeter MeterRSS9Item9][!RainmeterHideMeter MeterRSS9Link9][!RainmeterRedraw]

