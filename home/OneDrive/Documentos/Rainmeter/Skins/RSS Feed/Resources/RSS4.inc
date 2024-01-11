; =======================================================
; ---- RSS4 Measures
; =======================================================

; ---- Title

[MeasureRSS4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=#RSS4#
RegExp=#ReguExp#
UpdateRate=600
Substitute=#Substitute#
StringIndex=1

[MeasureRSS4Link]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=2

; ---- Item 1

[MeasureRSS4Item1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=3

[MeasureRSS4Link1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=4

; ---- Item 2

[MeasureRSS4Item2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=5

[MeasureRSS4Link2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=6

; ---- Item 3

[MeasureRSS4Item3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=7

[MeasureRSS4Link3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=8

; ---- Item 4

[MeasureRSS4Item4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=9

[MeasureRSS4Link4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=10

; ---- Item 5

[MeasureRSS4Item5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=11

[MeasureRSS4Link5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=12

; ---- Item 6

[MeasureRSS4Item6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=13

[MeasureRSS4Link6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=14

; ---- Item 7

[MeasureRSS4Item7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=15

[MeasureRSS4Link7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=16

; ---- Item 8

[MeasureRSS4Item8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=17

[MeasureRSS4Link8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=18

; ---- Item 9

[MeasureRSS4Item9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=19

[MeasureRSS4Link9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS4]
Substitute=#Substitute#
StringIndex=20

; =======================================================
; ---- RSS4 Meters
; =======================================================

; ---- Title

[MeterRSS4Title]
Meter=String
MeasureName=MeasureRSS4
MeterStyle=ItemStyle
X=27
Y=7
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS4LinkTitle][!RainmeterHideMeter MeterRSS4Title][!RainmeterRedraw]

[MeterRSS4LinkTitle]
Meter=String
MeasureName=MeasureRSS4
MeterStyle=LinkStyle
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS4Link]][!RainmeterShowMeter MeterRSS4Title][!RainmeterHideMeter MeterRSS4LinkTitle][!RainmeterRedraw]

; ---- Item 1

[MeterRSS4Item1]
Meter=String
MeasureName=MeasureRSS4Item1
MeterStyle=ItemStyle
Y=26
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS4Link1][!RainmeterHideMeter MeterRSS4Item1][!RainmeterRedraw]

[MeterRSS4Link1]
Meter=String
MeasureName=MeasureRSS4Item1
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS4Link1]][!RainmeterShowMeter MeterRSS4Item1][!RainmeterHideMeter MeterRSS4Link1][!RainmeterRedraw]

; ---- Item 2

[MeterRSS4Item2]
Meter=String
MeasureName=MeasureRSS4Item2
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS4Link2][!RainmeterHideMeter MeterRSS4Item2][!RainmeterRedraw]

[MeterRSS4Link2]
Meter=String
MeasureName=MeasureRSS4Item2
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS4Link2]][!RainmeterShowMeter MeterRSS4Item2][!RainmeterHideMeter MeterRSS4Link2][!RainmeterRedraw]

; ---- Item 3

[MeterRSS4Item3]
Meter=String
MeasureName=MeasureRSS4Item3
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS4Link3][!RainmeterHideMeter MeterRSS4Item3][!RainmeterRedraw]

[MeterRSS4Link3]
Meter=String
MeasureName=MeasureRSS4Item3
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS4Link3]][!RainmeterShowMeter MeterRSS4Item3][!RainmeterHideMeter MeterRSS4Link3][!RainmeterRedraw]

; ---- Item 4

[MeterRSS4Item4]
Meter=String
MeasureName=MeasureRSS4Item4
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS4Link4][!RainmeterHideMeter MeterRSS4Item4][!RainmeterRedraw]

[MeterRSS4Link4]
Meter=String
MeasureName=MeasureRSS4Item4
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS4Link4]][!RainmeterShowMeter MeterRSS4Item4][!RainmeterHideMeter MeterRSS4Link4][!RainmeterRedraw]

; ---- Item 5

[MeterRSS4Item5]
Meter=String
MeasureName=MeasureRSS4Item5
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS4Link5][!RainmeterHideMeter MeterRSS4Item5][!RainmeterRedraw]

[MeterRSS4Link5]
Meter=String
MeasureName=MeasureRSS4Item5
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS4Link5]][!RainmeterShowMeter MeterRSS4Item5][!RainmeterHideMeter MeterRSS4Link5][!RainmeterRedraw]

; ---- Item 6

[MeterRSS4Item6]
Meter=String
MeasureName=MeasureRSS4Item6
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS4Link6][!RainmeterHideMeter MeterRSS4Item6][!RainmeterRedraw]

[MeterRSS4Link6]
Meter=String
MeasureName=MeasureRSS4Item6
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS4Link6]][!RainmeterShowMeter MeterRSS4Item6][!RainmeterHideMeter MeterRSS4Link6][!RainmeterRedraw]

; ---- Item 7

[MeterRSS4Item7]
Meter=String
MeasureName=MeasureRSS4Item7
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS4Link7][!RainmeterHideMeter MeterRSS4Item7][!RainmeterRedraw]

[MeterRSS4Link7]
Meter=String
MeasureName=MeasureRSS4Item7
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS4Link7]][!RainmeterShowMeter MeterRSS4Item7][!RainmeterHideMeter MeterRSS4Link7][!RainmeterRedraw]

; ---- Item 8

[MeterRSS4Item8]
Meter=String
MeasureName=MeasureRSS4Item8
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS4Link8][!RainmeterHideMeter MeterRSS4Item8][!RainmeterRedraw]

[MeterRSS4Link8]
Meter=String
MeasureName=MeasureRSS4Item8
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS4Link8]][!RainmeterShowMeter MeterRSS4Item8][!RainmeterHideMeter MeterRSS4Link8][!RainmeterRedraw]

; ---- Item 9

[MeterRSS4Item9]
Meter=String
MeasureName=MeasureRSS4Item9
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS4Link9][!RainmeterHideMeter MeterRSS4Item9][!RainmeterRedraw]

[MeterRSS4Link9]
Meter=String
MeasureName=MeasureRSS4Item9
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS4Link9]][!RainmeterShowMeter MeterRSS4Item9][!RainmeterHideMeter MeterRSS4Link9][!RainmeterRedraw]

