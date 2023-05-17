



(Benennung)
%MPF1005

(Nullpunktverschiebung an StirnflŠche der Spannzangeneinrichtung)
N0005 G54

(Verschiebung des Nullpunktes um Z = 45mm, es wird angenommen, dass das Halbzeug 45mm in Z-Richtung aus Spannzange herausguckt)
N0010 G58 X0 Z45

(Spindeldrehzahlbegrenzung auf 3000 U/min)
N0015 G92 S30000

(Verfahren im Eilgang auf Sicherheitsposition, um Kollision bei Werkzeugwechsel auszuschlie§en)
N0020 G0 D0 X100 Z100



(Querplandrehen zum Schlichten der StirnflŠche)

(Schwenken des Werkzeugrevolvers auf Werkzeugplatz 1 (Klemmdrehhalter links) , Aufruf Korrekturwert D1, konstante Schnittgeschwindigkeit mit G96 und Vorschub F0,2)
N0025 T1 D1 G96 S300 F0,2

(Vorpositionieren zum Quer-Plandrehen im Eilgang in X)
N0030 X22

(Vorpositionieren zum Quer-Plandrehen im Eilgang in Z)
N0030 Z1

(Zustellen im Eilgang in X)
N0035 Z-0.2

(Querplandrehen der StirnflŠche)
N0040 G1 X0

(Nullpunkverschiebung an neu erzeugte fest definierte StirnflŠche)
N0045 G58 X0 Z-0.2

(Verfahren im Eilgang auf Sicherheitsposition, um Kollision bei Werkzeugwechsel auszuschlie§en)
N0050 G0 D0 X100 Z100



(Erzeugen der Flachbohrung Durchmesser 12mm, Tiefe 2mm)

(Werkzeugwechsel zu Werkzeugplat 2 (Axial-Einstech-Drehmei§el rechts) , Aufruf Korrekturwert D2, konstante Schnittgeschwindigkeit mit G96, Vorschub F0,1)
N0055 T2 D2 G96 S125 F0.1

(Vorpositionieren zum Einstechen von 12mm-Flachbohrung im Eilgang in X)
N0060 X12

(Vorpositionieren zum Einstechen von 12mm-Flachbohrung im Eilgang in Z)
N0065 Z1

(Zustellung der Einstechtiefe von 1mm)
N0070 G1 Z-1

(Ausformen der 1mm tiefen Flachbohrung)
N0075 X0

(ZurŸck fahren von Werkzeug im Eilgang in Z)
N0080 G0 Z1

(ZurŸck fahren von Werkzeug im Eilgang in X)
N0085 X12

(Zustellung der Einstechtiefe von 2mm)
N0090 G1 Z-2

(Ausformen der 2mm tiefen Flachbohrung)
N0095 X0

(Verfahren im Eilgang auf Sicherheitsposition, um Kollision bei Werkzeugwechsel auszuschlie§en)
N0100 G0 D0 X100
N0105 Z100



(Schruppen der Au§enkontur)
(Werkzeugwechsel zu Werkzeugplatz 3 (Klemmdrehhalter rechts), Aufruf Korrekturwert D3, konstante Schnittgeschwindigkeit mit G96, Vorschub F0.25)
N0110 T3 D3 G96 S300 F0.25

(Nullpunkverschiebung Z=0 entspricht kŸnftiger StandflŠche von Turm)
N0045 G58 X0 Z-25

(Vorpositionieren zum Schruppen der Au§enkontur im Eilgang in X)
N0115 X21

(Vorpositionieren zum Schruppen der Au§enkontur im Eilgang in Z)
N0120 Z-1

(Zustellung der Schrupptiefe von 0,5mm)
N0125 G1 X19

(Planschruppen Ÿber gesamte LŠnge des Turms)
N0130 Z26

(ZurŸck fahren und Vorbereitung fŸr Teil-Interpolation der SchrŠgen)
N0135 G0 X20
N0140 Z3.5
N0145 X19

(Zustellbewegung im 45¡ Winkel)
N0150 G1 X15.4 Z5.2

(Schruppen bis zum Ende der Kontur mit eingestellter Zustellung)
N155 Z26

(ZurŸck fahren und Vorbereitung fŸr Teil-Interpolation der SchrŠgen bis Durchmesser 12mm, sodass Kopfprofil geschlichtet werden kann)
N0135 G0 X17
N0140 Z5.2
N0145 X15.4

(Zustellbewegung im 45¡ Winkel)
N0150 G1 X12 Z6.9

(Schruppen, bis Kopfprofil fŸr Schlichten vorbereitet ist)
N0150 Z13.8



(Schlichten des Kopfprofils)

(Anpassen der Schnittdaten fŸr Schlichten des Kopfprofils bei Verwendung des gleichen Werkzeugs 3)
N0110 T3 D3 G96 S300 F0.1

(Zustellen bis an untere StirnflŠche des Kopfs und Einschalten der Schneidenradiuskorrektur G42)
N0115 G1 Z14 G42
N0115 X13.5

(Schneidplatte Kontur entlang bewegen)
N0190 G2 X14.1 Z15.45 B0.75
N0190 G3 X13.5 Z15.85 B0.5
N0190 G1 Z16.65
N0190 G3 X14.1 Z17.05 B0.5

N0190 G2 X14.1 Z18.45 B0.75
N0190 G3 X13.5 Z18.85 B0.5
N0190 G1 Z19.65
N0190 G3 X14.1 Z20.05 B0.5

N0190 G2 X14.1 Z21.45 B0.75
N0190 G3 X13.5 Z21.85 B0.5
N0190 G1 Z22.65
N0190 G3 X14.1 Z23.05 B0.5

N0190 G2 X15 Z23.75 B0.75
N0190 G1 Z26 
N0190 G0 X17 G40 



(Fortsetzen der SchrŠge und des Radius und Durchmesser 5mm unterhalb des Kopfes)
(Zum Schruppen wird des Radius noch nicht als Radius sonder als einzelne SchrŠgen interpoliert)

(Anpassen der Schnittdaten fŸr Schruppen bei Verwendung des gleichen Werkzeugs 3)
N0110 T3 D3 G96 S300 F0.25

(ZurŸck fahren und Vorbereitung fŸr Teil-Interpolation der SchrŠgen bis zu Beginne des Radius 6,5)
N0140 Z6.9
N0145 X12

(Zustellbewegung)
N0150 G1 X9 Z8.5

(Schruppen der neuen Zustelltiefe bis 0,2mm vor FlŠche des Kopfes)
N0150 Z13.8

(ZurŸck fahren und Vorbereitung fŸr Teil-Interpolation der SchrŠgen)
N0135 G0 X12
N0140 Z8.5
N0145 X9

(Zustellbewegung)
N0190 G1 X6 Z13

(Schruppen der neuen Zustelltiefe bis 0,2mm vor FlŠche des Kopfes)
N0150 Z13.8

(Werkzeug wegfahren und Schlichten vorbereiten)
N0190 G0 X20
N0120 Z-1

(Schruppen der Au§enkontur hier abgeschlossen)



(Schlichten der unter Au§enkontur ohne das Kopfprofil)

(Anpassen der Schnittdaten fŸr Schlichten bei Verwendung des gleichen Werkzeugs 3)
N0110 T3 D3 G96 S300 F0.1

(Zustellbewegung des finalen Durchmessers und Aktivierung der Schneidenradiuskorrektur G42)
N0290 G1 X18 G42


(Im Folgenden mŸssen exakte Punkte der Kontur angegeben werden -> im CAD-Modell entnehmbar)


(Durchmesser 18mm schlichten)
N0125 Z3



(Radius R1 interpolieren)
N0125 G2 X Z B1

(SchrŠge interpolieren)
N0130 G1 X Z



(Radius R6.5 interpolieren)
N0135 G3 X5 Z11.74 B6.5

(Durchmesser 5mm schlichten)
N0190 G1 Z13.5

(Radius R0.5 interpolieren)
N0290 G3 X6 Z14 B0.5

(StirnflŠche an Unterseite von Kopf schlichten)
N0145 G1 X16

(Werkzeug in Sicherheitsposition bewegen)
N0135 G0 X100 Z125

(Schlichten der Au§enkontur abgeschlossen)



(Umspannen - ErklŠrungen siehe Hinweise Seite 9)
N0400 R910=25 R911=17 R912=24.5 R920=0.2 R921=0.2 R931=3 R932=4 R933=4 R934=250 R935=0.1 R940=22 R941=-0.5 

(!!! Es muss noch in Erfahrung gebracht werden, wo nun Koordinatenursprung ist!!!)



(Quer-Plandrehen zum Schlichten der abgestochenen FlŠche inkl. Šu§ere Fase)

(!!! Annahme: Koordinatenursprung und -ausrichtung wie oben !!!)

(Anpassen der Schnittdaten fŸr Schlichten bei Verwendung des Werkzeugs 3)
N0110 T3 D3 G96 S300 F0.1

(Schneide im Eilgang in Position bringen)
N0450 G0 Z1.5
N0455 X20

(Schlichten der Fase)
N0460 G1 X17 Z0 G42

(Schlichten der StirnflŠche)
N0465 X-0.5

(Entfernen des Werkzeugs und in Sicherheitsposition bringen)
N0550 G0 Z-1 G40
N0555 X100
N0560 Z100



(Senkung erzeugen)

(Werkzeugwechsel zu NC-Bohrer fŸr Senkung)
N0565 T5 D5 G95 S3000 F0.1 M3 (!!! KlŠren, ob M3(rechtsdrehend) auch fŸr Gegenspindel wie hier korrekt)

(NC-Anbohrer im Eilgang positionieren)
N0570 Z-3
N0575 X0

(Bohren der Senkung)
N0580 G1 Z3.5

(ZurŸckbewegen des Werkzeugs und in Sicherheitsposition)
N0585 G0 Z-3
N0590 X100
N0595 Z100



(Bohrung erzeugen)

Werkzeugwechsel zu Spiralbohrer fŸr Bohrung
N0600 T6 D6 G95 S3000 F0.14 M3

(Bohrer im Eilgang positionieren)
N0605 Z-3
N0610 X0

(Erzeugen der Bohrung) (!!! Hier wurde nicht wie in Hinweisen Bohrprogramm verwendet, abklŠren !!!)
N0615 G1 Z7.5

(ZurŸckfahren von Bohrer)
N0620 G0 Z-3
N0625 X100
N0630 Z100

(Spindel Halt)
N0635 M5

(Unbesetzten Werkzeugplatz wŠhlen)
N0640 T7

(Auffangschale vorfahren)
N0645 M24

(Verweilzeit in Position)
N0650 G4 X3

(Spannmittel Gegenspindel šffnen und Aussto§e betŠtigen)
N0655 M27
N0660 M22

(Spannmittelreinigung ein)
N0665 M71

(Verweilzeit in Position)
N0650 G4 X1

(Auffangschale ausschwenken und ausfahren)
N0670 M23

(Spannmittelreinigung aus)
N0675 M72

(Spannmittel schlie§en)
N0680 M28

(Programmende)
N0685 M30











