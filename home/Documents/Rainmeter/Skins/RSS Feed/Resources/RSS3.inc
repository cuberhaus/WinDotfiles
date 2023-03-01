; =======================================================
; ---- RSS3 Measures
; =======================================================

; ---- Title

[MeasureRSS3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=#RSS3#
RegExp=#ReguExp#
UpdateRate=600
Substitute=#Substitute#
StringIndex=1

[MeasureRSS3Link]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=2

; ---- Item 1

[MeasureRSS3Item1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=3

[MeasureRSS3Link1]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=4

; ---- Item 2

[MeasureRSS3Item2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=5

[MeasureRSS3Link2]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=6

; ---- Item 3

[MeasureRSS3Item3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=7

[MeasureRSS3Link3]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=8

; ---- Item 4

[MeasureRSS3Item4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=9

[MeasureRSS3Link4]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=10

; ---- Item 5

[MeasureRSS3Item5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=11

[MeasureRSS3Link5]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=12

; ---- Item 6

[MeasureRSS3Item6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=13

[MeasureRSS3Link6]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=14

; ---- Item 7

[MeasureRSS3Item7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=15

[MeasureRSS3Link7]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=16

; ---- Item 8

[MeasureRSS3Item8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=17

[MeasureRSS3Link8]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=18

; ---- Item 9

[MeasureRSS3Item9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=19

[MeasureRSS3Link9]
Measure=Plugin
Plugin=Plugins\WebParser.dll
URL=[MeasureRSS3]
Substitute=#Substitute#
StringIndex=20

; =======================================================
; ---- RSS3 Meters
; =======================================================

; ---- Title

[MeterRSS3Title]
Meter=String
MeasureName=MeasureRSS3
MeterStyle=ItemStyle
X=27
Y=7
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS3LinkTitle][!RainmeterHideMeter MeterRSS3Title][!RainmeterRedraw]

[MeterRSS3LinkTitle]
Meter=String
MeasureName=MeasureRSS3
MeterStyle=LinkStyle
StringStyle=BOLD
StringEffect=SHADOW
FontEffectColor=#ShadowColor#
MouseOverAction=!Execute [!RainmeterShowMeter MeterHoverTitle][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHoverTitle][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS3Link]][!RainmeterShowMeter MeterRSS3Title][!RainmeterHideMeter MeterRSS3LinkTitle][!RainmeterRedraw]

; ---- Item 1

[MeterRSS3Item1]
Meter=String
MeasureName=MeasureRSS3Item1
MeterStyle=ItemStyle
Y=26
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS3Link1][!RainmeterHideMeter MeterRSS3Item1][!RainmeterRedraw]

[MeterRSS3Link1]
Meter=String
MeasureName=MeasureRSS3Item1
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover1][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover1][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS3Link1]][!RainmeterShowMeter MeterRSS3Item1][!RainmeterHideMeter MeterRSS3Link1][!RainmeterRedraw]

; ---- Item 2

[MeterRSS3Item2]
Meter=String
MeasureName=MeasureRSS3Item2
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS3Link2][!RainmeterHideMeter MeterRSS3Item2][!RainmeterRedraw]

[MeterRSS3Link2]
Meter=String
MeasureName=MeasureRSS3Item2
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover02][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover02][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS3Link2]][!RainmeterShowMeter MeterRSS3Item2][!RainmeterHideMeter MeterRSS3Link2][!RainmeterRedraw]

; ---- Item 3

[MeterRSS3Item3]
Meter=String
MeasureName=MeasureRSS3Item3
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS3Link3][!RainmeterHideMeter MeterRSS3Item3][!RainmeterRedraw]

[MeterRSS3Link3]
Meter=String
MeasureName=MeasureRSS3Item3
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover3][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover3][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS3Link3]][!RainmeterShowMeter MeterRSS3Item3][!RainmeterHideMeter MeterRSS3Link3][!RainmeterRedraw]

; ---- Item 4

[MeterRSS3Item4]
Meter=String
MeasureName=MeasureRSS3Item4
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS3Link4][!RainmeterHideMeter MeterRSS3Item4][!RainmeterRedraw]

[MeterRSS3Link4]
Meter=String
MeasureName=MeasureRSS3Item4
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover4][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover4][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS3Link4]][!RainmeterShowMeter MeterRSS3Item4][!RainmeterHideMeter MeterRSS3Link4][!RainmeterRedraw]

; ---- Item 5

[MeterRSS3Item5]
Meter=String
MeasureName=MeasureRSS3Item5
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS3Link5][!RainmeterHideMeter MeterRSS3Item5][!RainmeterRedraw]

[MeterRSS3Link5]
Meter=String
MeasureName=MeasureRSS3Item5
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover05][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover05][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS3Link5]][!RainmeterShowMeter MeterRSS3Item5][!RainmeterHideMeter MeterRSS3Link5][!RainmeterRedraw]

; ---- Item 6

[MeterRSS3Item6]
Meter=String
MeasureName=MeasureRSS3Item6
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS3Link6][!RainmeterHideMeter MeterRSS3Item6][!RainmeterRedraw]

[MeterRSS3Link6]
Meter=String
MeasureName=MeasureRSS3Item6
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover6][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover6][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS3Link6]][!RainmeterShowMeter MeterRSS3Item6][!RainmeterHideMeter MeterRSS3Link6][!RainmeterRedraw]

; ---- Item 7

[MeterRSS3Item7]
Meter=String
MeasureName=MeasureRSS3Item7
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS3Link7][!RainmeterHideMeter MeterRSS3Item7][!RainmeterRedraw]

[MeterRSS3Link7]
Meter=String
MeasureName=MeasureRSS3Item7
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover7][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover7][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS3Link7]][!RainmeterShowMeter MeterRSS3Item7][!RainmeterHideMeter MeterRSS3Link7][!RainmeterRedraw]

; ---- Item 8

[MeterRSS3Item8]
Meter=String
MeasureName=MeasureRSS3Item8
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS3Link8][!RainmeterHideMeter MeterRSS3Item8][!RainmeterRedraw]

[MeterRSS3Link8]
Meter=String
MeasureName=MeasureRSS3Item8
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover8][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover8][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS3Link8]][!RainmeterShowMeter MeterRSS3Item8][!RainmeterHideMeter MeterRSS3Link8][!RainmeterRedraw]

; ---- Item 9

[MeterRSS3Item9]
Meter=String
MeasureName=MeasureRSS3Item9
MeterStyle=ItemStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseDownAction=!Execute [!RainmeterShowMeter MeterRSS3Link9][!RainmeterHideMeter MeterRSS3Item9][!RainmeterRedraw]

[MeterRSS3Link9]
Meter=String
MeasureName=MeasureRSS3Item9
MeterStyle=LinkStyle
MouseOverAction=!Execute [!RainmeterShowMeter MeterHover9][!RainmeterRedraw]
MouseLeaveAction=!Execute [!RainmeterHideMeter MeterHover9][!RainmeterRedraw]
LeftMouseUpAction=!Execute [[MeasureRSS3Link9]][!RainmeterShowMeter MeterRSS3Item9][!RainmeterHideMeter MeterRSS3Link9][!RainmeterRedraw]

