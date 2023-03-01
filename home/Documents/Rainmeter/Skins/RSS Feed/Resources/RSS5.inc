; =======================================================
; ---- RSS5 Measures
; =======================================================

; ---- Title

[MeasureRSS5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=#RSS5#
RegExp=#ReguExp#
UpdateRate=600
Substitute=#Substitute#
StringIndex=1

[MeasureRSS5Link]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=2

; ---- Item 1

[MeasureRSS5Item1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=3

[MeasureRSS5Link1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=4

; ---- Item 2

[MeasureRSS5Item2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=5

[MeasureRSS5Link2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=6

; ---- Item 3

[MeasureRSS5Item3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=7

[MeasureRSS5Link3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=8

; ---- Item 4

[MeasureRSS5Item4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=9

[MeasureRSS5Link4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=10

; ---- Item 5

[MeasureRSS5Item5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=11

[MeasureRSS5Link5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=12

; ---- Item 6

[MeasureRSS5Item6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=13

[MeasureRSS5Link6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=14

; ---- Item 7

[MeasureRSS5Item7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=15

[MeasureRSS5Link7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=16

; ---- Item 8

[MeasureRSS5Item8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=17

[MeasureRSS5Link8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=18

; ---- Item 9

[MeasureRSS5Item9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=19

[MeasureRSS5Link9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS5]
Substitute=#Substitute#
StringIndex=20

; =======================================================
; ---- RSS5 Meters
; =======================================================

; ---- Title

[MeterRSS5Title]
Meter=String
MeasureName=MeasureRSS5
MeterStyle=ItemStyle
X=27
Y=7
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS5LinkTitle][!RainmeterHideMeter MeterRSS5Title][!RainmeterRedraw]

[MeterRSS5LinkTitle]
Meter=String
MeasureName=MeasureRSS5
MeterStyle=LinkStyle
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS5Link]][!RainmeterShowMeter MeterRSS5Title][!RainmeterHideMeter MeterRSS5LinkTitle][!RainmeterRedraw]

; ---- Item 1

[MeterRSS5Item1]
Meter=String
MeasureName=MeasureRSS5Item1
MeterStyle=ItemStyle
Y=26
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS5Link1][!RainmeterHideMeter MeterRSS5Item1][!RainmeterRedraw]

[MeterRSS5Link1]
Meter=String
MeasureName=MeasureRSS5Item1
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS5Link1]][!RainmeterShowMeter MeterRSS5Item1][!RainmeterHideMeter MeterRSS5Link1][!RainmeterRedraw]

; ---- Item 2

[MeterRSS5Item2]
Meter=String
MeasureName=MeasureRSS5Item2
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS5Link2][!RainmeterHideMeter MeterRSS5Item2][!RainmeterRedraw]

[MeterRSS5Link2]
Meter=String
MeasureName=MeasureRSS5Item2
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS5Link2]][!RainmeterShowMeter MeterRSS5Item2][!RainmeterHideMeter MeterRSS5Link2][!RainmeterRedraw]

; ---- Item 3

[MeterRSS5Item3]
Meter=String
MeasureName=MeasureRSS5Item3
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS5Link3][!RainmeterHideMeter MeterRSS5Item3][!RainmeterRedraw]

[MeterRSS5Link3]
Meter=String
MeasureName=MeasureRSS5Item3
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS5Link3]][!RainmeterShowMeter MeterRSS5Item3][!RainmeterHideMeter MeterRSS5Link3][!RainmeterRedraw]

; ---- Item 4

[MeterRSS5Item4]
Meter=String
MeasureName=MeasureRSS5Item4
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS5Link4][!RainmeterHideMeter MeterRSS5Item4][!RainmeterRedraw]

[MeterRSS5Link4]
Meter=String
MeasureName=MeasureRSS5Item4
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS5Link4]][!RainmeterShowMeter MeterRSS5Item4][!RainmeterHideMeter MeterRSS5Link4][!RainmeterRedraw]

; ---- Item 5

[MeterRSS5Item5]
Meter=String
MeasureName=MeasureRSS5Item5
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS5Link5][!RainmeterHideMeter MeterRSS5Item5][!RainmeterRedraw]

[MeterRSS5Link5]
Meter=String
MeasureName=MeasureRSS5Item5
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS5Link5]][!RainmeterShowMeter MeterRSS5Item5][!RainmeterHideMeter MeterRSS5Link5][!RainmeterRedraw]

; ---- Item 6

[MeterRSS5Item6]
Meter=String
MeasureName=MeasureRSS5Item6
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS5Link6][!RainmeterHideMeter MeterRSS5Item6][!RainmeterRedraw]

[MeterRSS5Link6]
Meter=String
MeasureName=MeasureRSS5Item6
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS5Link6]][!RainmeterShowMeter MeterRSS5Item6][!RainmeterHideMeter MeterRSS5Link6][!RainmeterRedraw]

; ---- Item 7

[MeterRSS5Item7]
Meter=String
MeasureName=MeasureRSS5Item7
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS5Link7][!RainmeterHideMeter MeterRSS5Item7][!RainmeterRedraw]

[MeterRSS5Link7]
Meter=String
MeasureName=MeasureRSS5Item7
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS5Link7]][!RainmeterShowMeter MeterRSS5Item7][!RainmeterHideMeter MeterRSS5Link7][!RainmeterRedraw]

; ---- Item 8

[MeterRSS5Item8]
Meter=String
MeasureName=MeasureRSS5Item8
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS5Link8][!RainmeterHideMeter MeterRSS5Item8][!RainmeterRedraw]

[MeterRSS5Link8]
Meter=String
MeasureName=MeasureRSS5Item8
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS5Link8]][!RainmeterShowMeter MeterRSS5Item8][!RainmeterHideMeter MeterRSS5Link8][!RainmeterRedraw]

; ---- Item 9

[MeterRSS5Item9]
Meter=String
MeasureName=MeasureRSS5Item9
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS5Link9][!RainmeterHideMeter MeterRSS5Item9][!RainmeterRedraw]

[MeterRSS5Link9]
Meter=String
MeasureName=MeasureRSS5Item9
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS5Link9]][!RainmeterShowMeter MeterRSS5Item9][!RainmeterHideMeter MeterRSS5Link9][!RainmeterRedraw]

