



(Benennung)
%MPF1005

(Nullpunktverschiebung an Stirnflaeche der Spannzangeneinrichtung)
N0005 G54

(Verschiebung des Nullpunktes um Z = 45mm, es wird angenommen, dass das Halbzeug 45mm in Z-Richtung aus Spannzange herausguckt)
N0010 G58 X0 Z45

(Spindeldrehzahlbegrenzung auf 3000 U/min)
N0015 G92 S3000

(Verfahren im Eilgang auf Sicherheitsposition, um Kollision bei Werkzeugwechsel auszuschliessen)
N0020 G0 D0 X100 Z100


(Querplandrehen zum Schlichten der Stirnflaeche)

(Schwenken des Werkzeugrevolvers auf Werkzeugplatz 1 (Klemmdrehhalter links) , Aufruf Korrekturwert D1, konstante Schnittgeschwindigkeit mit G96 und Vorschub F0,2)
N0025 T1 D1 G96 S300 F0.2

(Vorpositionieren zum Quer-Plandrehen im Eilgang in X)
N0030 X22

(Vorpositionieren zum Quer-Plandrehen im Eilgang in Z)
N0030 Z1

(Zustellen im Eilgang in X)
N0035 Z-0.2

(Querplandrehen der Stirnflaeche)
N0040 G1 X0

(Nullpunkverschiebung an neu erzeugte fest definierte Stirnflaeche)
N0045 G58 X0 Z-0.2

(Verfahren im Eilgang auf Sicherheitsposition, um Kollision bei Werkzeugwechsel auszuschliessen)
N0050 G0 D0 X100 Z100



(Erzeugen der Flachbohrung Durchmesser 12mm, Tiefe 2mm)

(Werkzeugwechsel zu Werkzeugplat 2 (Axial-Einstech-Drehmeissel rechts) , Aufruf Korrekturwert D2, konstante Schnittgeschwindigkeit mit G96, Vorschub F0,1)
N0055 T2 D2 G96 S125 F0.1

(Vorpositionieren zum Einstechen von 12mm-Flachbohrung im Eilgang in X)
N0060 X12

(Vorpositionieren zum Einstechen von 12mm-Flachbohrung im Eilgang in Z)
N0065 Z1

(Zustellung der Einstechtiefe von 1mm)
N0070 G1 Z-1

(Ausformen der 1mm tiefen Flachbohrung)
N0075 X0

(Zurueck fahren von Werkzeug im Eilgang in Z)
N0080 G0 Z1

(Zurueck fahren von Werkzeug im Eilgang in X)
N0085 X12

(Zustellung der Einstechtiefe von 2mm)
N0090 G1 Z-2

(Ausformen der 2mm tiefen Flachbohrung)
N0095 X0

(Verfahren im Eilgang auf Sicherheitsposition, um Kollision bei Werkzeugwechsel auszuschliessen)
N0100 G0 D0 Z100
N0105 X100



(Schruppen der Aussenkontur)
(Werkzeugwechsel zu Werkzeugplatz 3 (Klemmdrehhalter rechts), Aufruf Korrekturwert D3, konstante Schnittgeschwindigkeit mit G96, Vorschub F0.25)
N0110 T3 D3 G96 S300 F0.25

(Nullpunkverschiebung Z=0 entspricht kuenftiger Standflaeche von Turm)
N0113 G58 X0 Z-25

(Vorpositionieren zum Schruppen der Aussenkontur im Eilgang in X)
N0115 X21

(Vorpositionieren zum Schruppen der Aussenkontur im Eilgang in Z)
N0120 Z-1

(Zustellung der Schrupptiefe von 0,5mm)
N0125 G1 X19

(Planschruppen ueber gesamte Laenge des Turms)
N0130 Z26

(Zurueck fahren und Vorbereitung fuer Teil-Interpolation der Schraegen)
N0135 G0 X20
N0140 Z3.5
N0145 X19

(Zustellbewegung im 45¡ Winkel)
N0150 G1 X15.4 Z5.2

(Schruppen bis zum Ende der Kontur mit eingestellter Zustellung)
N155 Z26

(Zurueck fahren und Vorbereitung fuer Teil-Interpolation der Schraegen bis Durchmesser 12mm, sodass Kopfprofil geschlichtet werden kann)
N0160 G0 X17
N0165 Z5.2
N0170 X15.4

(Zustellbewegung im 45¡ Winkel)
N0175 G1 X12 Z6.9

(Schruppen, bis Kopfprofil fuer Schlichten vorbereitet ist)
N0180 Z13.8


(Schlichten des Kopfprofils)

(Anpassen der Schnittdaten fuer Schlichten des Kopfprofils bei Verwendung des gleichen Werkzeugs 3)
N0185 T3 D3 G96 S300 F0.1




(Zustellen bis an untere Stirnflaeche des Kopfs und Einschalten der Schneidenradiuskorrektur G42)
N0190 G1 X13.5 G42
N0195 Z14

(Schneidplatte Kontur entlang bewegen)
N0200 G2 X14.1 Z15.437 B0.75
N0205 G3 X13.5 Z15.896 B0.5
N0210 G1 Z16.604
N0215 G3 X14.1 Z17.063 B0.5

N0220 G2 X14.1 Z18.437 B0.75
N0225 G3 X13.5 Z18.896 B0.5
N0230 G1 Z19.604
N0235 G3 X14.1 Z20.063 B0.5

N0240 G2 X14.1 Z21.437 B0.75
N0245 G3 X13.5 Z21.896 B0.5
N0250 G1 Z22.604
N0255 G3 X14.1 Z23.063 B0.5

N0260 G2 X15 Z23.75 B0.75
N0265 G1 Z26 
N0270 G0 X17 G40 



(Fortsetzen der Schraege und des Radius und Durchmesser 5mm unterhalb des Kopfes)
(Zum Schruppen wird des Radius noch nicht als Radius sonder als einzelne Schraegen interpoliert)

(Anpassen der Schnittdaten fuer Schruppen bei Verwendung des gleichen Werkzeugs 3)
N0110 T3 D3 G96 S300 F0.25

(Zurueck fahren und Vorbereitung fuer Teil-Interpolation der Schraegen bis zu Beginne des Radius 6,5)
N0275 Z6.9
N0280 X12

(Zustellbewegung)
N0285 G1 X9 Z8.5

(Schruppen der neuen Zustelltiefe bis 0,2mm vor Flaeche des Kopfes)
N0290 Z13.8

(Zurueck fahren und Vorbereitung fuer Teil-Interpolation der Schraegen)
N0295 G0 X12
N0300 Z8.5
N0305 X9

(Zustellbewegung)
N0310 G1 X6 Z13

(Schruppen der neuen Zustelltiefe bis 0,2mm vor Flaeche des Kopfes)
N0315 Z13.8

(Werkzeug wegfahren und Schlichten vorbereiten)
N0320 G0 X20
N0325 Z-1

(Schruppen der Aussenkontur hier abgeschlossen)



(Schlichten der unter Aussenkontur ohne das Kopfprofil)

(Anpassen der Schnittdaten fuer Schlichten bei Verwendung des gleichen Werkzeugs 3)
N0330 T3 D3 G96 S300 F0.1

(Zustellbewegung des finalen Durchmessers und Aktivierung der Schneidenradiuskorrektur G42)
N0335 G1 X18 G42


(Im Folgenden muessen exakte Punkte der Kontur angegeben werden -> im CAD-Modell entnehmbar)


(Durchmesser 18mm schlichten)
N0340 Z3



(Radius R1 interpolieren)
N0345 G2 X17.232 Z3.788 B1

(Schraege interpolieren)
N0350 G1 X9.99 Z6.62



(Radius R6.5 interpolieren)
N0355 G3 X5 Z11.74 B6.5

(Durchmesser 5mm schlichten)
N0360 G1 Z13.5

(Radius R0.5 interpolieren)
N0365 G3 X6 Z14 B0.5

(Stirnflaeche an Unterseite von Kopf schlichten)
N0370 G1 X16

(Werkzeug in Sicherheitsposition bewegen)
N0375 G0 X100 Z125

(Schlichten der Aussenkontur abgeschlossen)



(Umspannen - Erklaerungen siehe Hinweise Seite 9)
N0380 R910=25 R911=17 R912=24.5 R920=0.2 R921=0.2 R931=3 R932=4 R933=4 R934=250 R935=0.1 R940=22 R941=-0.5 

(!!! Es muss noch in Erfahrung gebracht werden, wo nun Koordinatenursprung ist!!!)



(Quer-Plandrehen zum Schlichten der abgestochenen Flaeche inkl. aeussere Fase)

(!!! Annahme: Koordinatenursprung und -ausrichtung wie oben !!!)

(Anpassen der Schnittdaten fuer Schlichten bei Verwendung des Werkzeugs 3)
N0385 T3 D3 G96 S300 F0.1

(Schneide im Eilgang in Position bringen)
N0390 G0 Z1.5
N0395 X20

(Schlichten der Fase)
N0400 G1 X17 Z0 G42

(Schlichten der Stirnflaeche)
N0405 X-0.5

(Entfernen des Werkzeugs und in Sicherheitsposition bringen)
N0410 G0 Z-1 G40
N0415 X100
N0420 Z100



(Senkung erzeugen)

(Werkzeugwechsel zu NC-Bohrer fuer Senkung)
N0425 T5 D5 G95 S3000 F0.1 M3 (!!! Klaeren, ob M3(rechtsdrehend) auch fuer Gegenspindel wie hier korrekt)

(NC-Anbohrer im Eilgang positionieren)
N0430 Z-3
N0435 X0

(Bohren der Senkung)
N0440 G1 Z3.5

(Zurueckbewegen des Werkzeugs und in Sicherheitsposition)
N0445 G0 Z-3
N0450 X100
N0455 Z100



(Bohrung erzeugen)

Werkzeugwechsel zu Spiralbohrer fuer Bohrung
N0460 T6 D6 G95 S3000 F0.14 M3

(Bohrer im Eilgang positionieren)
N0465 Z-3
N0470 X0

(Erzeugen der Bohrung) (!!! Hier wurde nicht wie in Hinweisen Bohrprogramm verwendet, abklaeren !!!)
N0475 G1 Z7.5

(Zurueckfahren von Bohrer)
N0480 G0 Z-3
N0485 X100
N0490 Z100

(Spindel Halt)
N0495 M5

(Unbesetzten Werkzeugplatz waehlen)
N0500 T7

(Auffangschale vorfahren)
N0505 M24

(Verweilzeit in Position)
N0510 G4 X3

(Spannmittel Gegenspindel aeffnen und Ausstosse betaetigen)
N0515 M27
N0520 M22

(Spannmittelreinigung ein)
N0525 M71

(Verweilzeit in Position)
N0530 G4 X1

(Auffangschale ausschwenken und ausfahren)
N0535 M23

(Spannmittelreinigung aus)
N0540 M72

(Spannmittel schliessen)
N0545 M28

(Programmende)
N0550 M30
