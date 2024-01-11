; =======================================================
; ---- RSS8 Measures
; =======================================================

; ---- Title

[MeasureRSS8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=#RSS8#
RegExp=#ReguExp#
UpdateRate=60
Substitute=#Substitute#
StringIndex=1

[MeasureRSS8Link]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=2

; ---- Item 1

[MeasureRSS8Item1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=3

[MeasureRSS8Link1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=4

; ---- Item 2

[MeasureRSS8Item2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=5

[MeasureRSS8Link2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=6

; ---- Item 3

[MeasureRSS8Item3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=7

[MeasureRSS8Link3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=8

; ---- Item 4

[MeasureRSS8Item4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=9

[MeasureRSS8Link4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=10

; ---- Item 5

[MeasureRSS8Item5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=11

[MeasureRSS8Link5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=12

; ---- Item 6

[MeasureRSS8Item6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=13

[MeasureRSS8Link6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=14

; ---- Item 7

[MeasureRSS8Item7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=15

[MeasureRSS8Link7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=16

; ---- Item 8

[MeasureRSS8Item8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=17

[MeasureRSS8Link8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=18

; ---- Item 9

[MeasureRSS8Item9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=19

[MeasureRSS8Link9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS8]
Substitute=#Substitute#
StringIndex=20

; =======================================================
; ---- RSS8 Meters
; =======================================================

; ---- Title

[MeterRSS8Title]
Meter=String
MeasureName=MeasureRSS8
MeterStyle=ItemStyle
X=27
Y=7
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS8LinkTitle][!RainmeterHideMeter MeterRSS8Title][!RainmeterRedraw]

[MeterRSS8LinkTitle]
Meter=String
MeasureName=MeasureRSS8
MeterStyle=LinkStyle
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS8Link]][!RainmeterShowMeter MeterRSS8Title][!RainmeterHideMeter MeterRSS8LinkTitle][!RainmeterRedraw]

; ---- Item 1

[MeterRSS8Item1]
Meter=String
MeasureName=MeasureRSS8Item1
MeterStyle=ItemStyle
Y=26
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS8Link1][!RainmeterHideMeter MeterRSS8Item1][!RainmeterRedraw]

[MeterRSS8Link1]
Meter=String
MeasureName=MeasureRSS8Item1
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS8Link1]][!RainmeterShowMeter MeterRSS8Item1][!RainmeterHideMeter MeterRSS8Link1][!RainmeterRedraw]

; ---- Item 2

[MeterRSS8Item2]
Meter=String
MeasureName=MeasureRSS8Item2
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS8Link2][!RainmeterHideMeter MeterRSS8Item2][!RainmeterRedraw]

[MeterRSS8Link2]
Meter=String
MeasureName=MeasureRSS8Item2
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS8Link2]][!RainmeterShowMeter MeterRSS8Item2][!RainmeterHideMeter MeterRSS8Link2][!RainmeterRedraw]

; ---- Item 3

[MeterRSS8Item3]
Meter=String
MeasureName=MeasureRSS8Item3
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS8Link3][!RainmeterHideMeter MeterRSS8Item3][!RainmeterRedraw]

[MeterRSS8Link3]
Meter=String
MeasureName=MeasureRSS8Item3
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS8Link3]][!RainmeterShowMeter MeterRSS8Item3][!RainmeterHideMeter MeterRSS8Link3][!RainmeterRedraw]

; ---- Item 4

[MeterRSS8Item4]
Meter=String
MeasureName=MeasureRSS8Item4
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS8Link4][!RainmeterHideMeter MeterRSS8Item4][!RainmeterRedraw]

[MeterRSS8Link4]
Meter=String
MeasureName=MeasureRSS8Item4
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS8Link4]][!RainmeterShowMeter MeterRSS8Item4][!RainmeterHideMeter MeterRSS8Link4][!RainmeterRedraw]

; ---- Item 5

[MeterRSS8Item5]
Meter=String
MeasureName=MeasureRSS8Item5
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS8Link5][!RainmeterHideMeter MeterRSS8Item5][!RainmeterRedraw]

[MeterRSS8Link5]
Meter=String
MeasureName=MeasureRSS8Item5
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS8Link5]][!RainmeterShowMeter MeterRSS8Item5][!RainmeterHideMeter MeterRSS8Link5][!RainmeterRedraw]

; ---- Item 6

[MeterRSS8Item6]
Meter=String
MeasureName=MeasureRSS8Item6
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS8Link6][!RainmeterHideMeter MeterRSS8Item6][!RainmeterRedraw]

[MeterRSS8Link6]
Meter=String
MeasureName=MeasureRSS8Item6
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS8Link6]][!RainmeterShowMeter MeterRSS8Item6][!RainmeterHideMeter MeterRSS8Link6][!RainmeterRedraw]

; ---- Item 7

[MeterRSS8Item7]
Meter=String
MeasureName=MeasureRSS8Item7
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS8Link7][!RainmeterHideMeter MeterRSS8Item7][!RainmeterRedraw]

[MeterRSS8Link7]
Meter=String
MeasureName=MeasureRSS8Item7
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS8Link7]][!RainmeterShowMeter MeterRSS8Item7][!RainmeterHideMeter MeterRSS8Link7][!RainmeterRedraw]

; ---- Item 8

[MeterRSS8Item8]
Meter=String
MeasureName=MeasureRSS8Item8
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS8Link8][!RainmeterHideMeter MeterRSS8Item8][!RainmeterRedraw]

[MeterRSS8Link8]
Meter=String
MeasureName=MeasureRSS8Item8
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS8Link8]][!RainmeterShowMeter MeterRSS8Item8][!RainmeterHideMeter MeterRSS8Link8][!RainmeterRedraw]

; ---- Item 9

[MeterRSS8Item9]
Meter=String
MeasureName=MeasureRSS8Item9
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS8Link9][!RainmeterHideMeter MeterRSS8Item9][!RainmeterRedraw]

[MeterRSS8Link9]
Meter=String
MeasureName=MeasureRSS8Item9
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS8Link9]][!RainmeterShowMeter MeterRSS8Item9][!RainmeterHideMeter MeterRSS8Link9][!RainmeterRedraw]

