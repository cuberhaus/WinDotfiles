; =======================================================
; ---- RSS6 Measures
; =======================================================

; ---- Title

[MeasureRSS6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=#RSS6#
RegExp=#ReguExp#
UpdateRate=600
Substitute=#Substitute#
StringIndex=1

[MeasureRSS6Link]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=2

; ---- Item 1

[MeasureRSS6Item1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=3

[MeasureRSS6Link1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=4

; ---- Item 2

[MeasureRSS6Item2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=5

[MeasureRSS6Link2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=6

; ---- Item 3

[MeasureRSS6Item3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=7

[MeasureRSS6Link3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=8

; ---- Item 4

[MeasureRSS6Item4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=9

[MeasureRSS6Link4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=10

; ---- Item 5

[MeasureRSS6Item5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=11

[MeasureRSS6Link5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=12

; ---- Item 6

[MeasureRSS6Item6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=13

[MeasureRSS6Link6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=14

; ---- Item 7

[MeasureRSS6Item7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=15

[MeasureRSS6Link7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=16

; ---- Item 8

[MeasureRSS6Item8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=17

[MeasureRSS6Link8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=18

; ---- Item 9

[MeasureRSS6Item9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=19

[MeasureRSS6Link9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS6]
Substitute=#Substitute#
StringIndex=20

; =======================================================
; ---- RSS6 Meters
; =======================================================

; ---- Title

[MeterRSS6Title]
Meter=String
MeasureName=MeasureRSS6
MeterStyle=ItemStyle
X=27
Y=7
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS6LinkTitle][!RainmeterHideMeter MeterRSS6Title][!RainmeterRedraw]

[MeterRSS6LinkTitle]
Meter=String
MeasureName=MeasureRSS6
MeterStyle=LinkStyle
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS6Link]][!RainmeterShowMeter MeterRSS6Title][!RainmeterHideMeter MeterRSS6LinkTitle][!RainmeterRedraw]

; ---- Item 1

[MeterRSS6Item1]
Meter=String
MeasureName=MeasureRSS6Item1
MeterStyle=ItemStyle
Y=26
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS6Link1][!RainmeterHideMeter MeterRSS6Item1][!RainmeterRedraw]

[MeterRSS6Link1]
Meter=String
MeasureName=MeasureRSS6Item1
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS6Link1]][!RainmeterShowMeter MeterRSS6Item1][!RainmeterHideMeter MeterRSS6Link1][!RainmeterRedraw]

; ---- Item 2

[MeterRSS6Item2]
Meter=String
MeasureName=MeasureRSS6Item2
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS6Link2][!RainmeterHideMeter MeterRSS6Item2][!RainmeterRedraw]

[MeterRSS6Link2]
Meter=String
MeasureName=MeasureRSS6Item2
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS6Link2]][!RainmeterShowMeter MeterRSS6Item2][!RainmeterHideMeter MeterRSS6Link2][!RainmeterRedraw]

; ---- Item 3

[MeterRSS6Item3]
Meter=String
MeasureName=MeasureRSS6Item3
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS6Link3][!RainmeterHideMeter MeterRSS6Item3][!RainmeterRedraw]

[MeterRSS6Link3]
Meter=String
MeasureName=MeasureRSS6Item3
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS6Link3]][!RainmeterShowMeter MeterRSS6Item3][!RainmeterHideMeter MeterRSS6Link3][!RainmeterRedraw]

; ---- Item 4

[MeterRSS6Item4]
Meter=String
MeasureName=MeasureRSS6Item4
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS6Link4][!RainmeterHideMeter MeterRSS6Item4][!RainmeterRedraw]

[MeterRSS6Link4]
Meter=String
MeasureName=MeasureRSS6Item4
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS6Link4]][!RainmeterShowMeter MeterRSS6Item4][!RainmeterHideMeter MeterRSS6Link4][!RainmeterRedraw]

; ---- Item 5

[MeterRSS6Item5]
Meter=String
MeasureName=MeasureRSS6Item5
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS6Link5][!RainmeterHideMeter MeterRSS6Item5][!RainmeterRedraw]

[MeterRSS6Link5]
Meter=String
MeasureName=MeasureRSS6Item5
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS6Link5]][!RainmeterShowMeter MeterRSS6Item5][!RainmeterHideMeter MeterRSS6Link5][!RainmeterRedraw]

; ---- Item 6

[MeterRSS6Item6]
Meter=String
MeasureName=MeasureRSS6Item6
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS6Link6][!RainmeterHideMeter MeterRSS6Item6][!RainmeterRedraw]

[MeterRSS6Link6]
Meter=String
MeasureName=MeasureRSS6Item6
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS6Link6]][!RainmeterShowMeter MeterRSS6Item6][!RainmeterHideMeter MeterRSS6Link6][!RainmeterRedraw]

; ---- Item 7

[MeterRSS6Item7]
Meter=String
MeasureName=MeasureRSS6Item7
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS6Link7][!RainmeterHideMeter MeterRSS6Item7][!RainmeterRedraw]

[MeterRSS6Link7]
Meter=String
MeasureName=MeasureRSS6Item7
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS6Link7]][!RainmeterShowMeter MeterRSS6Item7][!RainmeterHideMeter MeterRSS6Link7][!RainmeterRedraw]

; ---- Item 8

[MeterRSS6Item8]
Meter=String
MeasureName=MeasureRSS6Item8
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS6Link8][!RainmeterHideMeter MeterRSS6Item8][!RainmeterRedraw]

[MeterRSS6Link8]
Meter=String
MeasureName=MeasureRSS6Item8
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS6Link8]][!RainmeterShowMeter MeterRSS6Item8][!RainmeterHideMeter MeterRSS6Link8][!RainmeterRedraw]

; ---- Item 9

[MeterRSS6Item9]
Meter=String
MeasureName=MeasureRSS6Item9
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS6Link9][!RainmeterHideMeter MeterRSS6Item9][!RainmeterRedraw]

[MeterRSS6Link9]
Meter=String
MeasureName=MeasureRSS6Item9
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS6Link9]][!RainmeterShowMeter MeterRSS6Item9][!RainmeterHideMeter MeterRSS6Link9][!RainmeterRedraw]

