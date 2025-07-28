##### PRETEST
# Dieses Script liest eine CSV-Datendatei in GNU R ein.
# Beim Einlesen werden für alle Variablen Beschriftungen (comment) angelegt.
# Die Beschriftungen für Werte wird ebenfalls als Attribute (attr) abgelegt.

#df_pre_file = file.choose()
#setwd("./")
df_pre_file = "data/rdata_ki-lehramt_2025-07-28_13-53.csv"

options(encoding = "UTF-8")
df_pre = read.delim(
  file=df_pre_file, encoding="UTF-8", fileEncoding="UTF-8",
  header = FALSE, sep = "\t", quote = "\"",
  dec = ".", row.names = NULL,
  col.names = c(
    "CASE","SERIAL","REF","QUESTNNR","MODE","STARTED","AI01","AI02","AI03","AI04",
    "AI05","AI06","AI07","AI08","AI09","AI10","AI11","AI13","AI14","AI15","AI16",
    "AI17_01","AI17_02","AI17_03","AI17_04","AI17_05","AI18","AI19","AI20","AI21",
    "AI22","AI23","AI24","AI25","AI27","AI28","AI29","AI30","AI35_02","AI36_01",
    "AI36_02","AI36_03","AI36_04","AI36_05","AI36_06","AI36_07","AI36_08","AI36_09",
    "AI36_10","AI36_11","AI36_12","AI36_13","AI36_14","AI36_15","AI36_16","AI36_17",
    "AI36_18","AI36_19","AI36_20","AI36_21","AI36_22","AI36_23","AI36_24","AI36_25",
    "AI36_26","AI36_27","AI36_28","CT01","CT02","CT03","CT04","CT05","CT06","CT07",
    "CT08","CT09","CT10","CT11","CT12","CT13","CT14","CT15","CT16","CT17","CT18",
    "CT19","CT20","CT21","CT28_01","CT29_01","CT29_02","CT29_03","CT29_04",
    "CT29_05","CT29_06","CT29_07","CT29_08","CT29_09","CT29_10","CT29_11","CT29_12",
    "CT29_13","CT29_14","CT29_15","CT29_16","CT29_17","CT29_18","CT29_19","CT29_20",
    "CT29_21","DE02","DE03_01","DE03_02","DE04_01","DE04_02","DE06","DE07","DE08",
    "DE09","DE10","DE11","DE13_01","DE14_01","DE15_01","DE16","DE16_16","DE23",
    "DE24","DE25","DE26","DE27","ED03_01","ED03_02","ED03_03","ED03_04","TP01_01",
    "TP01_02","TP01_03","TP01_04","TP01_05","TP02_01","TP02_02","TP02_03","TP02_04",
    "TP02_05","TP02_06","TP02_07","TP03_01","TP03_02","TP03_03","TP03_04","TP03_05",
    "TP04_01","TP04_02","TP04_03","TP04_04","TP04_05","TP04_06","TP04_07","TP04_08",
    "TP04_09","TP04_10","TP04_11","TP04_12","TP04_13","TP04_14","TP04_15","TP05_01",
    "TP05_02","TP05_07","TP05_08","TP05_03","TP05_04","TP05_05","TP05_06","TIME001",
    "TIME002","TIME003","TIME004","TIME005","TIME006","TIME007","TIME008","TIME009",
    "TIME010","TIME011","TIME012","TIME013","TIME014","TIME015","TIME016","TIME017",
    "TIME019","TIME020","TIME021","TIME022","TIME023","TIME024","TIME025","TIME026",
    "TIME027","TIME028","TIME029","TIME030","TIME031","TIME032","TIME033","TIME034",
    "TIME035","TIME036","TIME037","TIME038","TIME039","TIME040","TIME041","TIME042",
    "TIME043","TIME044","TIME046","TIME047","TIME048","TIME049","TIME050","TIME051",
    "TIME052","TIME_SUM","MAILSENT","LASTDATA","STATUS","FINISHED","Q_VIEWER",
    "LASTPAGE","MAXPAGE","MISSING","MISSREL","TIME_RSI"
  ),
  as.is = TRUE,
  colClasses = c(
    CASE="numeric", SERIAL="character", REF="character", QUESTNNR="character",
    MODE="factor", STARTED="POSIXct", AI01="numeric", AI02="numeric",
    AI03="numeric", AI04="numeric", AI05="numeric", AI06="numeric",
    AI07="numeric", AI08="numeric", AI09="numeric", AI10="numeric",
    AI11="numeric", AI13="numeric", AI14="numeric", AI15="numeric",
    AI16="numeric", AI17_01="numeric", AI17_02="numeric", AI17_03="numeric",
    AI17_04="numeric", AI17_05="numeric", AI18="numeric", AI19="numeric",
    AI20="numeric", AI21="numeric", AI22="numeric", AI23="numeric",
    AI24="numeric", AI25="numeric", AI27="numeric", AI28="numeric",
    AI29="numeric", AI30="numeric", AI35_02="character", AI36_01="character",
    AI36_02="character", AI36_03="character", AI36_04="character",
    AI36_05="character", AI36_06="character", AI36_07="character",
    AI36_08="character", AI36_09="character", AI36_10="character",
    AI36_11="character", AI36_12="character", AI36_13="character",
    AI36_14="character", AI36_15="character", AI36_16="character",
    AI36_17="character", AI36_18="character", AI36_19="character",
    AI36_20="character", AI36_21="character", AI36_22="character",
    AI36_23="character", AI36_24="character", AI36_25="character",
    AI36_26="character", AI36_27="character", AI36_28="character",
    CT01="numeric", CT02="numeric", CT03="numeric", CT04="numeric",
    CT05="numeric", CT06="numeric", CT07="numeric", CT08="numeric",
    CT09="numeric", CT10="numeric", CT11="numeric", CT12="numeric",
    CT13="numeric", CT14="numeric", CT15="numeric", CT16="numeric",
    CT17="numeric", CT18="numeric", CT19="numeric", CT20="numeric",
    CT21="numeric", CT28_01="character", CT29_01="character",
    CT29_02="character", CT29_03="character", CT29_04="character",
    CT29_05="character", CT29_06="character", CT29_07="character",
    CT29_08="character", CT29_09="character", CT29_10="character",
    CT29_11="character", CT29_12="character", CT29_13="character",
    CT29_14="character", CT29_15="character", CT29_16="character",
    CT29_17="character", CT29_18="character", CT29_19="character",
    CT29_20="character", CT29_21="character", DE02="numeric", DE03_01="numeric",
    DE03_02="numeric", DE04_01="numeric", DE04_02="numeric", DE06="numeric",
    DE07="numeric", DE08="numeric", DE09="numeric", DE10="numeric",
    DE11="numeric", DE13_01="character", DE14_01="numeric", DE15_01="numeric",
    DE16="numeric", DE16_16="character", DE23="numeric", DE24="numeric",
    DE25="numeric", DE26="numeric", DE27="numeric", ED03_01="numeric",
    ED03_02="numeric", ED03_03="numeric", ED03_04="numeric", TP01_01="numeric",
    TP01_02="numeric", TP01_03="numeric", TP01_04="numeric", TP01_05="numeric",
    TP02_01="numeric", TP02_02="numeric", TP02_03="numeric", TP02_04="numeric",
    TP02_05="numeric", TP02_06="numeric", TP02_07="numeric", TP03_01="numeric",
    TP03_02="numeric", TP03_03="numeric", TP03_04="numeric", TP03_05="numeric",
    TP04_01="numeric", TP04_02="numeric", TP04_03="numeric", TP04_04="numeric",
    TP04_05="numeric", TP04_06="numeric", TP04_07="numeric", TP04_08="numeric",
    TP04_09="numeric", TP04_10="numeric", TP04_11="numeric", TP04_12="numeric",
    TP04_13="numeric", TP04_14="numeric", TP04_15="numeric", TP05_01="numeric",
    TP05_02="numeric", TP05_07="numeric", TP05_08="numeric", TP05_03="numeric",
    TP05_04="numeric", TP05_05="numeric", TP05_06="numeric", TIME001="integer",
    TIME002="integer", TIME003="integer", TIME004="integer", TIME005="integer",
    TIME006="integer", TIME007="integer", TIME008="integer", TIME009="integer",
    TIME010="integer", TIME011="integer", TIME012="integer", TIME013="integer",
    TIME014="integer", TIME015="integer", TIME016="integer", TIME017="integer",
    TIME019="integer", TIME020="integer", TIME021="integer", TIME022="integer",
    TIME023="integer", TIME024="integer", TIME025="integer", TIME026="integer",
    TIME027="integer", TIME028="integer", TIME029="integer", TIME030="integer",
    TIME031="integer", TIME032="integer", TIME033="integer", TIME034="integer",
    TIME035="integer", TIME036="integer", TIME037="integer", TIME038="integer",
    TIME039="integer", TIME040="integer", TIME041="integer", TIME042="integer",
    TIME043="integer", TIME044="integer", TIME046="integer", TIME047="integer",
    TIME048="integer", TIME049="integer", TIME050="integer", TIME051="integer",
    TIME052="integer", TIME_SUM="integer", MAILSENT="POSIXct",
    LASTDATA="POSIXct", STATUS="character", FINISHED="logical",
    Q_VIEWER="logical", LASTPAGE="numeric", MAXPAGE="numeric",
    MISSING="numeric", MISSREL="numeric", TIME_RSI="numeric"
  ),
  skip = 1,
  check.names = TRUE, fill = TRUE,
  strip.white = FALSE, blank.lines.skip = TRUE,
  comment.char = "",
  na.strings = ""
)

row.names(df_pre) = df_pre$CASE

rm(df_pre_file)

attr(df_pre, "project") = "ki-lehramt"
attr(df_pre, "description") = "WoLKE Pilotierung"
attr(df_pre, "date") = "2025-07-24 08:36:34"
attr(df_pre, "server") = "https://www.soscisurvey.de"

# Variable und Value Labels
df_pre$AI01 = factor(df_pre$AI01,
    levels=c("1","2","3","4","-9"),
    labels=c("Erkennen von Kreditkartenbetrug","Schürfen von Cryptowährungen","Tracking beim Surfen","Verschlüsselung bei Instant Messager Diensten","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI02 = factor(df_pre$AI02,
    levels=c("1","2","3","4","-9"),
    labels=c("Sie können sich den Versuch sparen, da bei schriftlicher Kommunikation nicht mehr zwischen Mensch und KI unterschieden werden kann.","Sie könnten eine schwierige Wissensfrage stellen, da diese nur ein Mensch beantworten kann.","Sie könnten ein paar Tippfehler in Ihren Text einbauen, dann kann die KI Sie nicht mehr verstehen, ein Mensch aber schon.","Sie könnten eine ironische Bemerkung machen, da diese von Menschen besser verstanden wird.","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI03 = factor(df_pre$AI03,
    levels=c("1","2","3","4","-9"),
    labels=c("Flugüberwachungsysteme","Positionsbestimmungsysteme","3D-Druck-Systeme","Warenwirtschaftssysteme","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI04 = factor(df_pre$AI04,
    levels=c("1","2","3","4","-9"),
    labels=c("Blockchain","Natural Language Processing","Lernpsychologie","Bioinformatik","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI05 = factor(df_pre$AI05,
    levels=c("1","2","3","4","-9"),
    labels=c("KI kann gehen und sprechen.","KI hat ein künstliches Gehirn.","KI ist mindestens so intelligent wie Menschen.","KI handelt rational, um ein bestimmtes Ziel möglichst gut zu erreichen.","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI06 = factor(df_pre$AI06,
    levels=c("1","2","3","4","-9"),
    labels=c("Sie haben keine Gefühle, die sie von ihrer Aufgabe ablenken könnten.","Sie denken selbständig und verfolgen ihre eigenen Ziele.","Sie wurden so programmiert, dass sie versuchen, ein vorgegebenes Ziel möglichst gut zu erreichen.","Sie sind so ähnlich wie das menschliche Gehirn aufgebaut und haben deshalb eine ähnliche Intelligenz.","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI07 = factor(df_pre$AI07,
    levels=c("1","2","3","4","-9"),
    labels=c("ein intelligenter Sprachassistent (z.B. Alexa)","ein vollständig autonom fahrendes Auto","eine leistungsfähige Suchmaschine (z.B. Google)","starke KI gibt es aktuell nicht","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI08 = factor(df_pre$AI08,
    levels=c("1","2","3","4","-9"),
    labels=c("Entscheidungen unter Unsicherheit treffen","eine ähnliche Bandbreite an Aufgaben lösen wie ein Mensch","eine Aufgabe besser lösen als ein Mensch","aus unstrukturierten Daten lernen","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI09 = factor(df_pre$AI09,
    levels=c("1","2","3","4","-9"),
    labels=c("Tumore erkennen","Softwareprojekte durchführen","Romane übersetzen","Krebstherapien entwerfen","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI10 = factor(df_pre$AI10,
    levels=c("1","2","3","4","-9"),
    labels=c("Extremwetterereignisse aus Wetterdaten vorhersagen","einen Beweis für einen mathematischen Satz finden","Quiz-Fragen beantworten","Poker spielen","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI11 = factor(df_pre$AI11,
    levels=c("1","2","3","4","-9"),
    labels=c("Kodierung von Wissen in KI-Systemen, sodass Menschen es verstehen können","Sensoren, die Informationen aus der Umwelt erfassen","Informationen über die Welt, die von einem Computer verarbeitet werden können","ein Algorithmus, der aus Daten Wissen generiert","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI13 = factor(df_pre$AI13,
    levels=c("1","2","3","4","-9"),
    labels=c("basierend auf mathematisch-logischen Prinzipien","basierend auf von Programmierern festgelegten Verknüpfungen","basierend auf Quantenverschränkung","basierend auf künstlicher Intuition","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI14 = factor(df_pre$AI14,
    levels=c("1","2","3","4","-9"),
    labels=c("Es kann die Ausgabewerte der Testdaten möglichst gut vorhersagen.","Es enthält möglichst wenige Variablen.","Es ist möglichst gut an die Trainingsdaten angepasst.","Die Vorhersagen sind möglichst eindeutig.","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI15 = factor(df_pre$AI15,
    levels=c("1","2","3","4","-9"),
    labels=c("Beim überwachten Lernen sind die Ausgabewerte der Trainingsdaten bekannt.","Beim überwachten Lernen muss der Mensch die KI während dem Lernen beaufsichtigen und ggf. eingreifen.","Beim überwachten Lernen werden alle Rechenschritte dokumentiert.","Beim überwachtem Lernen gelten strengere rechtliche Vorschriften.","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI16 = factor(df_pre$AI16,
    levels=c("1","2","3","4","-9"),
    labels=c("Die Prozessschritte basieren auf behavioristischen Lerntheorien.","Die Entwicklung von Modellen im Maschinellen Lernen ist in Teilen ein iterativer Prozess.","Die Prozessschritte bei der Anwendung von überwachten und unüberwachten Lernen sind grundsätzlich gleich.","Die Prozessschritte können rückwärts durchlaufen werden um einen (künstlichen) Datensatz zu generieren.","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI18 = factor(df_pre$AI18,
    levels=c("1","2","3","4","-9"),
    labels=c("Die Daten sollten in möglichst gleich große Teile eingeteilt werden.","Die Daten sollten zufällig in Trainings- und Testdatensätze geteilt werden.","Die Testdaten sollten qualitativ hochwertiger sein als die Trainingsdaten.","Die Trainings- und Testdaten sollten sich möglichst stark voneinander unterscheiden.","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI19 = factor(df_pre$AI19,
    levels=c("1","2","3","4","-9"),
    labels=c("Berechnung der Genauigkeit der Vorhersage","randomisierte Einteilung in Test- und Trainingsdaten","Auswahl des Modells","Abstraktion des Modells","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI20 = factor(df_pre$AI20,
    levels=c("1","2","3","4","-9"),
    labels=c("Menschen können das Ergebnis von Maschinellen Lernen nur schwer beeinflussen, da es automatisch abläuft.","Nur bei der Auswahl der Daten, mit denen das Modell lernt, kann das Ergebnis beeinflusst werden.","Menschen können bei der Entwicklung an mehreren Prozesschritten das Ergebnis beeinflussen.","Menschen können nur die Interpretation der Ergebnisse beeinflussen.","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI21 = factor(df_pre$AI21,
    levels=c("1","2","3","4","-9"),
    labels=c("KI-Systeme streben nach Autonomie.","KI-Systeme verfolgen ein Ziel, das ihnen von Menschen vorgegeben wurde.","KI-Systeme führen Verhaltensweisen zufällig aus.","KI-Systeme suchen sich eigenständig Ziele und verfolgen diese.","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI22 = factor(df_pre$AI22,
    levels=c("1","2","3","4","-9"),
    labels=c("Wahrung der Transparenz","Vorbereitung des Trainings für Bilderkennung","Kommunikation von Ergebnissen","Durchführung von statistischen Tests","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI23 = factor(df_pre$AI23,
    levels=c("1","2","3","4","-9"),
    labels=c("Ihre Arbeit wird häufig von Menschen beobachtet und ggf. korrigiert („überwachtes Lernen“).","Sie denken ähnlich wie Menschen, aber schneller.","Sie können aus großen Datenmengen Schlüsse ziehen und damit ihr Modell verbessern.","Sie sind aus Expertensystemen abgeleitet, in denen Fachwissen gespeichert wird.","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI24 = factor(df_pre$AI24,
    levels=c("1","2","3","4","-9"),
    labels=c("auf den Daten jedes Nutzers bei der Nutzung des Dienstes","auf allen Daten, die ein Nutzer des Dienstes im Internet hinterlässt","auf den Daten von anderen Nutzern, aber nicht den eigenen","nur auf den eigenen Daten bei der Nutzung des Dienstes","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI25 = factor(df_pre$AI25,
    levels=c("1","2","3","4","-9"),
    labels=c("Hunde sind schwerer zu erkennen als Katzen, da es im Internet weniger Bilder von Hunden gibt.","Kleine Objekte (Katzen) werden besser erkannt als große (Hunde).","Die meisten Modelle können Katzen generell besser erkennen als Hunde.","Die Trainingsdaten der Hunde waren nicht repräsentativ für alle Hunderassen.","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI27 = factor(df_pre$AI27,
    levels=c("1","2","3","4","-9"),
    labels=c("KI birgt ein schwer zu kalkulierendes Restrisiko.","Es ist häufig nicht erkennbar, wie ein KI-System Entscheidungen trifft.","Nutzende werden häufig nicht über den Einsatz von KI informiert.","Viele Nutzende haben ein geringes Wissen über KI.","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI28 = factor(df_pre$AI28,
    levels=c("1","2","3","4","-9"),
    labels=c("fehlende Investitionsanreize in das Bildungssystem","Chipmangel in der Industrie aufgrund der hohen Rechenintensität von KI","hohe Fehlerquote bei KI-gestützter Produktion","Ersetzen von menschlichen Arbeitskräften durch KI","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI29 = factor(df_pre$AI29,
    levels=c("1","2","3","4","-9"),
    labels=c("Anfälligkeit gegenüber Hacking","Diskriminierung von Verdächtigen aufgrund von Herkunft und Status","fehlende Rechtssicherheit im Falle des Ausfalls der KI","Untergrabung der Autorität der Polizist:innen","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$AI30 = factor(df_pre$AI30,
    levels=c("1","2","3","4","-9"),
    labels=c("Nutzende von KI haben keine Möglichkeit auf Rechtsschutz","Wahrung der Rechte von KI selbst","Jurist:innen verstehen die Bedeutung von KI nicht","eingeschränkte Kontrolle von KI durch ihre Autonomie","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT01 = factor(df_pre$CT01,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT02 = factor(df_pre$CT02,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT03 = factor(df_pre$CT03,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT04 = factor(df_pre$CT04,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT05 = factor(df_pre$CT05,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT06 = factor(df_pre$CT06,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT07 = factor(df_pre$CT07,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT08 = factor(df_pre$CT08,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT09 = factor(df_pre$CT09,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT10 = factor(df_pre$CT10,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT11 = factor(df_pre$CT11,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT12 = factor(df_pre$CT12,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT13 = factor(df_pre$CT13,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT14 = factor(df_pre$CT14,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT15 = factor(df_pre$CT15,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT16 = factor(df_pre$CT16,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT17 = factor(df_pre$CT17,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT18 = factor(df_pre$CT18,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT19 = factor(df_pre$CT19,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT20 = factor(df_pre$CT20,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$CT21 = factor(df_pre$CT21,
    levels=c("1","2","3","4","-9"),
    labels=c("A","B","C","D","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$DE02 = factor(df_pre$DE02,
    levels=c("1","2","-9"),
    labels=c("Ja","Nein","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$DE06 = factor(df_pre$DE06,
    levels=c("1","2","-9"),
    labels=c("Ja","Nein","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$DE07 = factor(df_pre$DE07,
    levels=c("1","2","-9"),
    labels=c("Ja","Nein","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$DE08 = factor(df_pre$DE08,
    levels=c("1","2","-9"),
    labels=c("Ja","Nein","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$DE09 = factor(df_pre$DE09,
    levels=c("1","2","-9"),
    labels=c("Ja","Nein","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$DE10 = factor(df_pre$DE10,
    levels=c("1","2","3","4","-9"),
    labels=c("Weiblich","Männlich","Divers","keine Angabe","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$DE11 = factor(df_pre$DE11,
    levels=c("1","2","-9"),
    labels=c("PH Schwäbisch Gmünd","PH Ludwigsburg","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$DE16 = factor(df_pre$DE16,
    levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","-9"),
    labels=c("Bachelor Lehramt Grundschule","Master Lehramt Grundschule","Bachelor Lehramt Sekundarstufe I","Master Lehramt Sekundarstufe I","Nachstudium Sekundarstufe I","Bachelor Berufliches Lehramt","Master Berufliches Lehramt","Bachelor Bildung und Erziehung im Kindesalter (Kindheitspädagogik)","Master Bildung und Erziehung im Kindesalter","Bachelor Lehramt Sonderpädagogik","Master Lehramt Sonderpädagogik","Aufbau Lehramt Sonderpädagogik","Bachelor Europalehramt Sekundarstufe I","Master Europalehramt Sekundarstufe I","Master Erwachsenenbildung/Weiterbildung","Sonstiges","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$DE23 = factor(df_pre$DE23,
    levels=c("1","2","-9"),
    labels=c("Ich habe die Datenschutzinformationen gelesen und stimme zu, dass meine personenbezogenen Daten gemäß den hier aufgeführten Angaben verarbeitet werden.","Ich stimme nicht zu.","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$DE24 = factor(df_pre$DE24,
    levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","-9"),
    labels=c("Alltagskultur und Gesundheit","Biologie","Chemie","Deutsch","Englisch","Ethik","Französisch","Geographie","Geschichte","Informatik","Islamische Theologie / Religionspädagogik","Kunst","Mathematik","Musik","Physik","Politikwissenschaft","Sport","Technik","Theologie / Religionspädagogik (evangelisch oder katholisch)","Wirtschaft","keine Angabe","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$DE25 = factor(df_pre$DE25,
    levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","-9"),
    labels=c("Alltagskultur und Gesundheit","Biologie","Chemie","Deutsch","Englisch","Ethik","Französisch","Geographie","Geschichte","Informatik","Islamische Theologie / Religionspädagogik","Kunst","Mathematik","Musik","Physik","Politikwissenschaft","Sport","Technik","Theologie / Religionspädagogik (evangelisch oder katholisch)","Wirtschaft","keine Angabe","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$DE26 = factor(df_pre$DE26,
    levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","-9"),
    labels=c("Informatisch Grundbildung","Bildungsinformatik","Technik","Physik","Mathematik","Kunst","Katholische Theologie / Religionspädagogik","Evangelische Theologie / Religionspädagogik","Beratung","Deutsch als Zweitsprache (DaZ)","Erlebnispädagogik","Islamische Religionspädagogik","Medienpädagogik","Pädagogik der Vielfalt","Spiel- und Theaterpädagogik","keine Angabe","[NA] nicht beantwortet"),
    ordered=FALSE)
df_pre$DE27 = factor(df_pre$DE27,
    levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","-9"),
    labels=c("Informatisch Grundbildung","Bildungsinformatik","Technik","Physik","Mathematik","Kunst","Katholische Theologie / Religionspädagogik","Evangelische Theologie / Religionspädagogik","Beratung","Deutsch als Zweitsprache (DaZ)","Erlebnispädagogik","Islamische Religionspädagogik","Medienpädagogik","Pädagogik der Vielfalt","Spiel- und Theaterpädagogik","keine Angabe","[NA] nicht beantwortet"),
    ordered=FALSE)
attr(df_pre$AI17_01,"1") = "Rangplatz 1"
attr(df_pre$AI17_01,"2") = "Rangplatz 2"
attr(df_pre$AI17_01,"3") = "Rangplatz 3"
attr(df_pre$AI17_01,"4") = "Rangplatz 4"
attr(df_pre$AI17_01,"5") = "Rangplatz 5"
attr(df_pre$AI17_02,"1") = "Rangplatz 1"
attr(df_pre$AI17_02,"2") = "Rangplatz 2"
attr(df_pre$AI17_02,"3") = "Rangplatz 3"
attr(df_pre$AI17_02,"4") = "Rangplatz 4"
attr(df_pre$AI17_02,"5") = "Rangplatz 5"
attr(df_pre$AI17_03,"1") = "Rangplatz 1"
attr(df_pre$AI17_03,"2") = "Rangplatz 2"
attr(df_pre$AI17_03,"3") = "Rangplatz 3"
attr(df_pre$AI17_03,"4") = "Rangplatz 4"
attr(df_pre$AI17_03,"5") = "Rangplatz 5"
attr(df_pre$AI17_04,"1") = "Rangplatz 1"
attr(df_pre$AI17_04,"2") = "Rangplatz 2"
attr(df_pre$AI17_04,"3") = "Rangplatz 3"
attr(df_pre$AI17_04,"4") = "Rangplatz 4"
attr(df_pre$AI17_04,"5") = "Rangplatz 5"
attr(df_pre$AI17_05,"1") = "Rangplatz 1"
attr(df_pre$AI17_05,"2") = "Rangplatz 2"
attr(df_pre$AI17_05,"3") = "Rangplatz 3"
attr(df_pre$AI17_05,"4") = "Rangplatz 4"
attr(df_pre$AI17_05,"5") = "Rangplatz 5"
attr(df_pre$DE03_01,"1") = "0 %"
attr(df_pre$DE03_01,"101") = "100 %"
attr(df_pre$DE03_02,"1") = "0 %"
attr(df_pre$DE03_02,"101") = "100 %"
attr(df_pre$DE04_01,"1") = "0 %"
attr(df_pre$DE04_01,"101") = "100 %"
attr(df_pre$DE04_02,"1") = "0 %"
attr(df_pre$DE04_02,"101") = "100 %"
attr(df_pre$ED03_01,"1") = "stimme überhaupt nicht zu"
attr(df_pre$ED03_01,"2") = "stimme eher nicht zu"
attr(df_pre$ED03_01,"3") = "teils teils"
attr(df_pre$ED03_01,"4") = "stimme eher zu"
attr(df_pre$ED03_01,"5") = "stimme voll zu"
attr(df_pre$ED03_02,"1") = "stimme überhaupt nicht zu"
attr(df_pre$ED03_02,"2") = "stimme eher nicht zu"
attr(df_pre$ED03_02,"3") = "teils teils"
attr(df_pre$ED03_02,"4") = "stimme eher zu"
attr(df_pre$ED03_02,"5") = "stimme voll zu"
attr(df_pre$ED03_03,"1") = "stimme überhaupt nicht zu"
attr(df_pre$ED03_03,"2") = "stimme eher nicht zu"
attr(df_pre$ED03_03,"3") = "teils teils"
attr(df_pre$ED03_03,"4") = "stimme eher zu"
attr(df_pre$ED03_03,"5") = "stimme voll zu"
attr(df_pre$ED03_04,"1") = "stimme überhaupt nicht zu"
attr(df_pre$ED03_04,"2") = "stimme eher nicht zu"
attr(df_pre$ED03_04,"3") = "teils teils"
attr(df_pre$ED03_04,"4") = "stimme eher zu"
attr(df_pre$ED03_04,"5") = "stimme voll zu"
attr(df_pre$TP01_01,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP01_01,"2") = "stimme eher nicht zu"
attr(df_pre$TP01_01,"3") = "teils teils"
attr(df_pre$TP01_01,"4") = "stimme eher zu"
attr(df_pre$TP01_01,"5") = "stimme voll zu"
attr(df_pre$TP01_02,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP01_02,"2") = "stimme eher nicht zu"
attr(df_pre$TP01_02,"3") = "teils teils"
attr(df_pre$TP01_02,"4") = "stimme eher zu"
attr(df_pre$TP01_02,"5") = "stimme voll zu"
attr(df_pre$TP01_03,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP01_03,"2") = "stimme eher nicht zu"
attr(df_pre$TP01_03,"3") = "teils teils"
attr(df_pre$TP01_03,"4") = "stimme eher zu"
attr(df_pre$TP01_03,"5") = "stimme voll zu"
attr(df_pre$TP01_04,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP01_04,"2") = "stimme eher nicht zu"
attr(df_pre$TP01_04,"3") = "teils teils"
attr(df_pre$TP01_04,"4") = "stimme eher zu"
attr(df_pre$TP01_04,"5") = "stimme voll zu"
attr(df_pre$TP01_05,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP01_05,"2") = "stimme eher nicht zu"
attr(df_pre$TP01_05,"3") = "teils teils"
attr(df_pre$TP01_05,"4") = "stimme eher zu"
attr(df_pre$TP01_05,"5") = "stimme voll zu"
attr(df_pre$TP02_01,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP02_01,"2") = "stimme eher nicht zu"
attr(df_pre$TP02_01,"3") = "teils teils"
attr(df_pre$TP02_01,"4") = "stimme eher zu"
attr(df_pre$TP02_01,"5") = "stimme voll zu"
attr(df_pre$TP02_02,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP02_02,"2") = "stimme eher nicht zu"
attr(df_pre$TP02_02,"3") = "teils teils"
attr(df_pre$TP02_02,"4") = "stimme eher zu"
attr(df_pre$TP02_02,"5") = "stimme voll zu"
attr(df_pre$TP02_03,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP02_03,"2") = "stimme eher nicht zu"
attr(df_pre$TP02_03,"3") = "teils teils"
attr(df_pre$TP02_03,"4") = "stimme eher zu"
attr(df_pre$TP02_03,"5") = "stimme voll zu"
attr(df_pre$TP02_04,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP02_04,"2") = "stimme eher nicht zu"
attr(df_pre$TP02_04,"3") = "teils teils"
attr(df_pre$TP02_04,"4") = "stimme eher zu"
attr(df_pre$TP02_04,"5") = "stimme voll zu"
attr(df_pre$TP02_05,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP02_05,"2") = "stimme eher nicht zu"
attr(df_pre$TP02_05,"3") = "teils teils"
attr(df_pre$TP02_05,"4") = "stimme eher zu"
attr(df_pre$TP02_05,"5") = "stimme voll zu"
attr(df_pre$TP02_06,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP02_06,"2") = "stimme eher nicht zu"
attr(df_pre$TP02_06,"3") = "teils teils"
attr(df_pre$TP02_06,"4") = "stimme eher zu"
attr(df_pre$TP02_06,"5") = "stimme voll zu"
attr(df_pre$TP02_07,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP02_07,"2") = "stimme eher nicht zu"
attr(df_pre$TP02_07,"3") = "teils teils"
attr(df_pre$TP02_07,"4") = "stimme eher zu"
attr(df_pre$TP02_07,"5") = "stimme voll zu"
attr(df_pre$TP03_01,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP03_01,"2") = "stimme eher nicht zu"
attr(df_pre$TP03_01,"3") = "teils teils"
attr(df_pre$TP03_01,"4") = "stimme eher zu"
attr(df_pre$TP03_01,"5") = "stimme voll zu"
attr(df_pre$TP03_02,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP03_02,"2") = "stimme eher nicht zu"
attr(df_pre$TP03_02,"3") = "teils teils"
attr(df_pre$TP03_02,"4") = "stimme eher zu"
attr(df_pre$TP03_02,"5") = "stimme voll zu"
attr(df_pre$TP03_03,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP03_03,"2") = "stimme eher nicht zu"
attr(df_pre$TP03_03,"3") = "teils teils"
attr(df_pre$TP03_03,"4") = "stimme eher zu"
attr(df_pre$TP03_03,"5") = "stimme voll zu"
attr(df_pre$TP03_04,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP03_04,"2") = "stimme eher nicht zu"
attr(df_pre$TP03_04,"3") = "teils teils"
attr(df_pre$TP03_04,"4") = "stimme eher zu"
attr(df_pre$TP03_04,"5") = "stimme voll zu"
attr(df_pre$TP03_05,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP03_05,"2") = "stimme eher nicht zu"
attr(df_pre$TP03_05,"3") = "teils teils"
attr(df_pre$TP03_05,"4") = "stimme eher zu"
attr(df_pre$TP03_05,"5") = "stimme voll zu"
attr(df_pre$TP04_01,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP04_01,"2") = "stimme eher nicht zu"
attr(df_pre$TP04_01,"3") = "teils teils"
attr(df_pre$TP04_01,"4") = "stimme eher zu"
attr(df_pre$TP04_01,"5") = "stimme voll zu"
attr(df_pre$TP04_02,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP04_02,"2") = "stimme eher nicht zu"
attr(df_pre$TP04_02,"3") = "teils teils"
attr(df_pre$TP04_02,"4") = "stimme eher zu"
attr(df_pre$TP04_02,"5") = "stimme voll zu"
attr(df_pre$TP04_03,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP04_03,"2") = "stimme eher nicht zu"
attr(df_pre$TP04_03,"3") = "teils teils"
attr(df_pre$TP04_03,"4") = "stimme eher zu"
attr(df_pre$TP04_03,"5") = "stimme voll zu"
attr(df_pre$TP04_04,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP04_04,"2") = "stimme eher nicht zu"
attr(df_pre$TP04_04,"3") = "teils teils"
attr(df_pre$TP04_04,"4") = "stimme eher zu"
attr(df_pre$TP04_04,"5") = "stimme voll zu"
attr(df_pre$TP04_05,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP04_05,"2") = "stimme eher nicht zu"
attr(df_pre$TP04_05,"3") = "teils teils"
attr(df_pre$TP04_05,"4") = "stimme eher zu"
attr(df_pre$TP04_05,"5") = "stimme voll zu"
attr(df_pre$TP04_06,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP04_06,"2") = "stimme eher nicht zu"
attr(df_pre$TP04_06,"3") = "teils teils"
attr(df_pre$TP04_06,"4") = "stimme eher zu"
attr(df_pre$TP04_06,"5") = "stimme voll zu"
attr(df_pre$TP04_07,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP04_07,"2") = "stimme eher nicht zu"
attr(df_pre$TP04_07,"3") = "teils teils"
attr(df_pre$TP04_07,"4") = "stimme eher zu"
attr(df_pre$TP04_07,"5") = "stimme voll zu"
attr(df_pre$TP04_08,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP04_08,"2") = "stimme eher nicht zu"
attr(df_pre$TP04_08,"3") = "teils teils"
attr(df_pre$TP04_08,"4") = "stimme eher zu"
attr(df_pre$TP04_08,"5") = "stimme voll zu"
attr(df_pre$TP04_09,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP04_09,"2") = "stimme eher nicht zu"
attr(df_pre$TP04_09,"3") = "teils teils"
attr(df_pre$TP04_09,"4") = "stimme eher zu"
attr(df_pre$TP04_09,"5") = "stimme voll zu"
attr(df_pre$TP04_10,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP04_10,"2") = "stimme eher nicht zu"
attr(df_pre$TP04_10,"3") = "teils teils"
attr(df_pre$TP04_10,"4") = "stimme eher zu"
attr(df_pre$TP04_10,"5") = "stimme voll zu"
attr(df_pre$TP04_11,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP04_11,"2") = "stimme eher nicht zu"
attr(df_pre$TP04_11,"3") = "teils teils"
attr(df_pre$TP04_11,"4") = "stimme eher zu"
attr(df_pre$TP04_11,"5") = "stimme voll zu"
attr(df_pre$TP04_12,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP04_12,"2") = "stimme eher nicht zu"
attr(df_pre$TP04_12,"3") = "teils teils"
attr(df_pre$TP04_12,"4") = "stimme eher zu"
attr(df_pre$TP04_12,"5") = "stimme voll zu"
attr(df_pre$TP04_13,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP04_13,"2") = "stimme eher nicht zu"
attr(df_pre$TP04_13,"3") = "teils teils"
attr(df_pre$TP04_13,"4") = "stimme eher zu"
attr(df_pre$TP04_13,"5") = "stimme voll zu"
attr(df_pre$TP04_14,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP04_14,"2") = "stimme eher nicht zu"
attr(df_pre$TP04_14,"3") = "teils teils"
attr(df_pre$TP04_14,"4") = "stimme eher zu"
attr(df_pre$TP04_14,"5") = "stimme voll zu"
attr(df_pre$TP04_15,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP04_15,"2") = "stimme eher nicht zu"
attr(df_pre$TP04_15,"3") = "teils teils"
attr(df_pre$TP04_15,"4") = "stimme eher zu"
attr(df_pre$TP04_15,"5") = "stimme voll zu"
attr(df_pre$TP05_01,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP05_01,"2") = "stimme eher nicht zu"
attr(df_pre$TP05_01,"3") = "teils teils"
attr(df_pre$TP05_01,"4") = "stimme eher zu"
attr(df_pre$TP05_01,"5") = "stimme voll zu"
attr(df_pre$TP05_02,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP05_02,"2") = "stimme eher nicht zu"
attr(df_pre$TP05_02,"3") = "teils teils"
attr(df_pre$TP05_02,"4") = "stimme eher zu"
attr(df_pre$TP05_02,"5") = "stimme voll zu"
attr(df_pre$TP05_07,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP05_07,"2") = "stimme eher nicht zu"
attr(df_pre$TP05_07,"3") = "teils teils"
attr(df_pre$TP05_07,"4") = "stimme eher zu"
attr(df_pre$TP05_07,"5") = "stimme voll zu"
attr(df_pre$TP05_08,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP05_08,"2") = "stimme eher nicht zu"
attr(df_pre$TP05_08,"3") = "teils teils"
attr(df_pre$TP05_08,"4") = "stimme eher zu"
attr(df_pre$TP05_08,"5") = "stimme voll zu"
attr(df_pre$TP05_03,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP05_03,"2") = "stimme eher nicht zu"
attr(df_pre$TP05_03,"3") = "teils teils"
attr(df_pre$TP05_03,"4") = "stimme eher zu"
attr(df_pre$TP05_03,"5") = "stimme voll zu"
attr(df_pre$TP05_04,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP05_04,"2") = "stimme eher nicht zu"
attr(df_pre$TP05_04,"3") = "teils teils"
attr(df_pre$TP05_04,"4") = "stimme eher zu"
attr(df_pre$TP05_04,"5") = "stimme voll zu"
attr(df_pre$TP05_05,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP05_05,"2") = "stimme eher nicht zu"
attr(df_pre$TP05_05,"3") = "teils teils"
attr(df_pre$TP05_05,"4") = "stimme eher zu"
attr(df_pre$TP05_05,"5") = "stimme voll zu"
attr(df_pre$TP05_06,"1") = "stimme überhaupt nicht zu"
attr(df_pre$TP05_06,"2") = "stimme eher nicht zu"
attr(df_pre$TP05_06,"3") = "teils teils"
attr(df_pre$TP05_06,"4") = "stimme eher zu"
attr(df_pre$TP05_06,"5") = "stimme voll zu"
attr(df_pre$STATUS,"complete") = "Interview vollständig"
attr(df_pre$STATUS,"finished") = "Interview abgeschlossen (letzte Seite erreicht)"
attr(df_pre$STATUS,"quality fail") = "Als ungültiger Datensatz markiert"
attr(df_pre$STATUS,"quota full") = "Aufgrund eines Quotenstopps abgewiesen"
attr(df_pre$STATUS,"screenout") = "Aufgrund der Auswahlkritiern abgewiesen"
attr(df_pre$FINISHED,"F") = "abgebrochen"
attr(df_pre$FINISHED,"T") = "ausgefüllt"
attr(df_pre$Q_VIEWER,"F") = "Teilnehmer"
attr(df_pre$Q_VIEWER,"T") = "Durchklicker"
comment(df_pre$SERIAL) = "Personenkennung oder Teilnahmecode (sofern verwendet)"
comment(df_pre$REF) = "Referenz (sofern im Link angegeben)"
comment(df_pre$QUESTNNR) = "Fragebogen, der im Interview verwendet wurde"
comment(df_pre$MODE) = "Interview-Modus"
comment(df_pre$STARTED) = "Zeitpunkt zu dem das Interview begonnen hat (Europe/Berlin)"
comment(df_pre$AI01) = "AI01"
comment(df_pre$AI02) = "AI02"
comment(df_pre$AI03) = "AI03"
comment(df_pre$AI04) = "AI04"
comment(df_pre$AI05) = "AI05"
comment(df_pre$AI06) = "AI06"
comment(df_pre$AI07) = "AI07"
comment(df_pre$AI08) = "AI08"
comment(df_pre$AI09) = "AI09"
comment(df_pre$AI10) = "AI10"
comment(df_pre$AI11) = "AI11"
comment(df_pre$AI13) = "AI13"
comment(df_pre$AI14) = "AI14"
comment(df_pre$AI15) = "AI15"
comment(df_pre$AI16) = "AI16"
comment(df_pre$AI17_01) = "AI17: Modell mit Trainingsdaten trainieren"
comment(df_pre$AI17_02) = "AI17: mit dem Modell Testdaten vorhersagen"
comment(df_pre$AI17_03) = "AI17: Daten sammeln und vorbereiten"
comment(df_pre$AI17_04) = "AI17: Daten in Trainings- und Testdaten einteilen"
comment(df_pre$AI17_05) = "AI17: Genauigkeit der Vorhersage berechnen"
comment(df_pre$AI18) = "AI18"
comment(df_pre$AI19) = "AI19"
comment(df_pre$AI20) = "AI20"
comment(df_pre$AI21) = "AI21"
comment(df_pre$AI22) = "AI22"
comment(df_pre$AI23) = "AI23"
comment(df_pre$AI24) = "AI24"
comment(df_pre$AI25) = "AI25"
comment(df_pre$AI27) = "AI27"
comment(df_pre$AI28) = "AI28"
comment(df_pre$AI29) = "AI29"
comment(df_pre$AI30) = "AI30"
comment(df_pre$AI35_02) = "Interne Variable: aiCorrect"
comment(df_pre$AI36_01) = "Interne Variable 2: AI01"
comment(df_pre$AI36_02) = "Interne Variable 2: AI02"
comment(df_pre$AI36_03) = "Interne Variable 2: AI03"
comment(df_pre$AI36_04) = "Interne Variable 2: AI04"
comment(df_pre$AI36_05) = "Interne Variable 2: AI05"
comment(df_pre$AI36_06) = "Interne Variable 2: AI06"
comment(df_pre$AI36_07) = "Interne Variable 2: AI07"
comment(df_pre$AI36_08) = "Interne Variable 2: AI08"
comment(df_pre$AI36_09) = "Interne Variable 2: AI09"
comment(df_pre$AI36_10) = "Interne Variable 2: AI10"
comment(df_pre$AI36_11) = "Interne Variable 2: AI11"
comment(df_pre$AI36_12) = "Interne Variable 2: AI13"
comment(df_pre$AI36_13) = "Interne Variable 2: AI14"
comment(df_pre$AI36_14) = "Interne Variable 2: AI15"
comment(df_pre$AI36_15) = "Interne Variable 2: AI16"
comment(df_pre$AI36_16) = "Interne Variable 2: AI17"
comment(df_pre$AI36_17) = "Interne Variable 2: AI18"
comment(df_pre$AI36_18) = "Interne Variable 2: AI19"
comment(df_pre$AI36_19) = "Interne Variable 2: AI20"
comment(df_pre$AI36_20) = "Interne Variable 2: AI21"
comment(df_pre$AI36_21) = "Interne Variable 2: AI22"
comment(df_pre$AI36_22) = "Interne Variable 2: AI23"
comment(df_pre$AI36_23) = "Interne Variable 2: AI24"
comment(df_pre$AI36_24) = "Interne Variable 2: AI25"
comment(df_pre$AI36_25) = "Interne Variable 2: AI27"
comment(df_pre$AI36_26) = "Interne Variable 2: AI28"
comment(df_pre$AI36_27) = "Interne Variable 2: AI29"
comment(df_pre$AI36_28) = "Interne Variable 2: AI30"
comment(df_pre$CT01) = "1"
comment(df_pre$CT02) = "2"
comment(df_pre$CT03) = "3"
comment(df_pre$CT04) = "4"
comment(df_pre$CT05) = "5"
comment(df_pre$CT06) = "6"
comment(df_pre$CT07) = "7"
comment(df_pre$CT08) = "8"
comment(df_pre$CT09) = "9"
comment(df_pre$CT10) = "10"
comment(df_pre$CT11) = "11"
comment(df_pre$CT12) = "12"
comment(df_pre$CT13) = "13"
comment(df_pre$CT14) = "14"
comment(df_pre$CT15) = "15"
comment(df_pre$CT16) = "16"
comment(df_pre$CT17) = "17"
comment(df_pre$CT18) = "18"
comment(df_pre$CT19) = "19"
comment(df_pre$CT20) = "20"
comment(df_pre$CT21) = "21"
comment(df_pre$CT28_01) = "Interne Variable: ctCorrect"
comment(df_pre$CT29_01) = "Interne Variable 2: CT01"
comment(df_pre$CT29_02) = "Interne Variable 2: CT02"
comment(df_pre$CT29_03) = "Interne Variable 2: CT03"
comment(df_pre$CT29_04) = "Interne Variable 2: CT04"
comment(df_pre$CT29_05) = "Interne Variable 2: CT05"
comment(df_pre$CT29_06) = "Interne Variable 2: CT06"
comment(df_pre$CT29_07) = "Interne Variable 2: CT07"
comment(df_pre$CT29_08) = "Interne Variable 2: CT08"
comment(df_pre$CT29_09) = "Interne Variable 2: CT09"
comment(df_pre$CT29_10) = "Interne Variable 2: CT10"
comment(df_pre$CT29_11) = "Interne Variable 2: CT11"
comment(df_pre$CT29_12) = "Interne Variable 2: CT12"
comment(df_pre$CT29_13) = "Interne Variable 2: CT13"
comment(df_pre$CT29_14) = "Interne Variable 2: CT14"
comment(df_pre$CT29_15) = "Interne Variable 2: CT15"
comment(df_pre$CT29_16) = "Interne Variable 2: CT16"
comment(df_pre$CT29_17) = "Interne Variable 2: CT17"
comment(df_pre$CT29_18) = "Interne Variable 2: CT18"
comment(df_pre$CT29_19) = "Interne Variable 2: CT19"
comment(df_pre$CT29_20) = "Interne Variable 2: CT20"
comment(df_pre$CT29_21) = "Interne Variable 2: CT21"
comment(df_pre$DE02) = "Ausschluss"
comment(df_pre$DE03_01) = "Kompetenz/Vorerfahrung: Im Umgang mit KI im MINT-Unterricht fühle ich mich kompetent.​"
comment(df_pre$DE03_02) = "Kompetenz/Vorerfahrung: Ich habe gute Vorkenntnisse im Umgang mit KI im MINT-Unterricht."
comment(df_pre$DE04_01) = "Kompetenz/Vorerfahrung S: Im Umgang mit KI im Sprach-Unterricht fühle ich mich kompetent.​"
comment(df_pre$DE04_02) = "Kompetenz/Vorerfahrung S: Ich habe gute Vorkenntnisse im Umgang mit KI im Sprach-Unterricht."
comment(df_pre$DE06) = "Teilnahme Seminar f1 S"
comment(df_pre$DE07) = "Teilnahme Seminar f2"
comment(df_pre$DE08) = "Teilnahme Seminar f2 S"
comment(df_pre$DE09) = "ISP"
comment(df_pre$DE10) = "Geschlecht"
comment(df_pre$DE11) = "Universität"
comment(df_pre$DE13_01) = "Code: Ihr persönliches Codewort"
comment(df_pre$DE14_01) = "Alter:  ... Jahre"
comment(df_pre$DE15_01) = "Hochschulsemester: [01]"
comment(df_pre$DE16) = "Studium"
comment(df_pre$DE16_16) = "Studium: Sonstiges"
comment(df_pre$DE23) = "Einwilligungserklärung"
comment(df_pre$DE24) = "Studium Fach v2 f1"
comment(df_pre$DE25) = "Studium Fach v2 f2"
comment(df_pre$DE26) = "Erweiterungsfach"
comment(df_pre$DE27) = "Erweiterungsfach 2"
comment(df_pre$ED03_01) = "F1: Die Nutzung von KI-Tools verbessert meine Lehrleistung."
comment(df_pre$ED03_02) = "F1: Die Nutzung von KI-Tools reduziert mittelfristig meine Arbeitsbelastung."
comment(df_pre$ED03_03) = "F1: Die Nutzung von KI-Tools steigert die Effektivität meiner Arbeit."
comment(df_pre$ED03_04) = "F1: Ich finde KI-Tools nützlich für meine Arbeit."
comment(df_pre$TP01_01) = "Intelligent TK: Ich weiß, wie ich im Alltag mit KI-Tools umgehen kann."
comment(df_pre$TP01_02) = "Intelligent TK: Ich weiß, wie ich bestimmte Aufgaben mit KI-Tools bearbeiten kann."
comment(df_pre$TP01_03) = "Intelligent TK: Ich weiß, wie ich KI-Tools per Text oder Sprache Anweisungen geben kann."
comment(df_pre$TP01_04) = "Intelligent TK: Ich verfüge über ausreichende Kenntnisse, um KI-Tools zu verwenden."
comment(df_pre$TP01_05) = "Intelligent TK: Ich bin mit KI-Tools sowie deren technischen Möglichkeiten und Grenzen vertraut."
comment(df_pre$TP02_01) = "Intelligent TPK: Ich verstehe, welchen pädagogischen Beitrag KI-Tools in meinem Fach leisten können."
comment(df_pre$TP02_02) = "Intelligent TPK: Ich kann den Nutzen von Feedback durch KI-Tools für das Lehren und Lernen einschätzen."
comment(df_pre$TP02_03) = "Intelligent TPK: Ich kann KI-Tools auswählen, mit denen Lernende ihre Kompetenzen anwenden können."
comment(df_pre$TP02_04) = "Intelligent TPK: Ich weiß, wie ich KI-Tools einsetzen kann, um den Lernfortschritt der Lernenden zu verfolgen."
comment(df_pre$TP02_05) = "Intelligent TPK: Ich kann Rückmeldungen von KI-Tools verstehen, um unmittelbar Feedback geben zu können."
comment(df_pre$TP02_06) = "Intelligent TPK: Ich kann Benachrichtigungen von KI-Tools verstehen, um das Lernen der Lernenden zu unterstützen."
comment(df_pre$TP02_07) = "Intelligent TPK: Ich verfüge über das benötigte Wissen, um KI-Tools auszuwählen, mit deren Hilfe ich die Motivation der Lernenden fördern und aufrechterhalten kann."
comment(df_pre$TP03_01) = "Intelligent TCK: Ich kann KI-Tools verwenden, um nach Lehr-Lernmaterial für mein Fach zu suchen."
comment(df_pre$TP03_02) = "Intelligent TCK: Ich kenne KI-Tools, die von Fachleuten und Lehrkräften in meinem Fach genutzt werden."
comment(df_pre$TP03_03) = "Intelligent TCK: Ich kann KI-Tools einsetzen, um die Inhalte meines Fachs besser zu verstehen."
comment(df_pre$TP03_04) = "Intelligent TCK: Ich weiß, wie ich fachbezogene KI-Tools (z.B. intelligente Tutorsysteme für Mathematik) einsetzen kann."
comment(df_pre$TP03_05) = "Intelligent TCK: Ich kann beurteilen, inwieweit die von KI-Tools generierten Inhalte fachlich korrekt und vertrauenswürdig sind."
comment(df_pre$TP04_01) = "Intelligent TPACK: Ich weiß, wie ich in meinem Fach KI-Tools für adaptives Feedback einsetzen kann."
comment(df_pre$TP04_02) = "Intelligent TPACK: Ich weiß, wie ich in meinem Fach KI-Tools für individualisiertes Lernen einsetzen kann."
comment(df_pre$TP04_03) = "Intelligent TPACK: Ich weiß, wie ich in meinem Fach KI-Tools für unmittelbares Feedback einsetzen kann."
comment(df_pre$TP04_04) = "Intelligent TPACK: Ich kann ein Thema mithilfe von KI-Tools mit verschiedenen Lehr-Lernmethoden unterrichten."
comment(df_pre$TP04_05) = "Intelligent TPACK: Ich kann Unterricht gestalten, der meinen Fachinhalt, KI-Tools und Lehr-Lernmethoden sinnvoll miteinander verbindet."
comment(df_pre$TP04_06) = "Intelligent TPACK: Ich kann in meinem Kollegium als Multiplikator oder Multiplikatorin agieren, um KI-Tools in unser Fach zu integrieren."
comment(df_pre$TP04_07) = "Intelligent TPACK: Ich kann für mein Fach begründen, ob und wann der Einsatz spezifischer KI-Tools sinnvoll ist."
comment(df_pre$TP04_08) = "Intelligent TPACK: Ich kann für mein Fach KI-Tools auswählen, um den Lernfortschritt der Lernenden zu verfolgen."
comment(df_pre$TP04_09) = "Intelligent TPACK: Ich weiß, wie ich für mein Fach KI-Tools zur Erstellung von Lehr- Lernmaterial einsetzen kann"
comment(df_pre$TP04_10) = "Intelligent TPACK: Ich weiß, wie ich für mein Fach KI-Tools zur Erstellung von Leistungsüberprüfungen einsetzen kann"
comment(df_pre$TP04_11) = "Intelligent TPACK: Ich weiß, wie ich in meinem Fach KI-Tools zur Bewertung von (Prüfungs-) Leistungen einsetzen kann"
comment(df_pre$TP04_12) = "Intelligent TPACK: Ich weiß, wie ich in meinem Unterricht KI-Tools einsetzen kann"
comment(df_pre$TP04_13) = "Intelligent TPACK: Ich weiß, wie ich in meinem Fach (Prüfungs-) Leistungen bewerten kann, bei denen die Lernenden KI-Tools als Hilfsmittel verwendet haben könnten"
comment(df_pre$TP04_14) = "Intelligent TPACK: Ich weiß, wie mich KI-Tools in meinem Fach bei der Bewertung von (Prüfungs-) Leistungen unterstützen können"
comment(df_pre$TP04_15) = "Intelligent TPACK: Ich kann geeignete KI-Tools auswählen, um bestimmte fachliche oder didaktische Ziele zu erreichen"
comment(df_pre$TP05_01) = "Ethics: Ich kann beurteilen, inwieweit KI-Tools individuelle Unterschiede (z.B. Herkunft und Geschlecht) aller Lernenden berücksichtigen."
comment(df_pre$TP05_02) = "Ethics: Ich kann beurteilen, inwieweit KI-Tools fair gegenüber allen Lernenden sind."
comment(df_pre$TP05_07) = "Ethics: Ich kann die Begründung für jede Entscheidung, die von einem KI-Tool getroffen wird, verstehen."
comment(df_pre$TP05_08) = "Ethics: Ich kann nachvollziehen, wer die Verantwortlichen hinter der Entwicklung von KI-Tools sind."
comment(df_pre$TP05_03) = "Ethics: Ich kann Lernenden ethische Aspekte im Zusammenhang mit der Nutzung von KI-Tools vermitteln."
comment(df_pre$TP05_04) = "Ethics: Ich kann sensible Informationen (z.B. Prüfungen, Noten und weitere persönliche Daten der Lernenden) vor KI-Tools schützen."
comment(df_pre$TP05_05) = "Ethics: Ich kann den Lernenden beibringen, wie sie sicher und verantwortungsvoll mit KI-Tools lernen können."
comment(df_pre$TP05_06) = "Ethics: Ich kann beurteilen, inwieweit KI-Tools gesellschaftliche Vorurteile reproduzieren."
comment(df_pre$TIME001) = "Verweildauer Seite 1"
comment(df_pre$TIME002) = "Verweildauer Seite 2"
comment(df_pre$TIME003) = "Verweildauer Seite 3"
comment(df_pre$TIME004) = "Verweildauer Seite 4"
comment(df_pre$TIME005) = "Verweildauer Seite 5"
comment(df_pre$TIME006) = "Verweildauer Seite 6"
comment(df_pre$TIME007) = "Verweildauer Seite 7"
comment(df_pre$TIME008) = "Verweildauer Seite 8"
comment(df_pre$TIME009) = "Verweildauer Seite 9"
comment(df_pre$TIME010) = "Verweildauer Seite 10"
comment(df_pre$TIME011) = "Verweildauer Seite 11"
comment(df_pre$TIME012) = "Verweildauer Seite 12"
comment(df_pre$TIME013) = "Verweildauer Seite 13"
comment(df_pre$TIME014) = "Verweildauer Seite 14"
comment(df_pre$TIME015) = "Verweildauer Seite 15"
comment(df_pre$TIME016) = "Verweildauer Seite 16"
comment(df_pre$TIME017) = "Verweildauer Seite 17"
comment(df_pre$TIME019) = "Verweildauer Seite 19"
comment(df_pre$TIME020) = "Verweildauer Seite 20"
comment(df_pre$TIME021) = "Verweildauer Seite 21"
comment(df_pre$TIME022) = "Verweildauer Seite 22"
comment(df_pre$TIME023) = "Verweildauer Seite 23"
comment(df_pre$TIME024) = "Verweildauer Seite 24"
comment(df_pre$TIME025) = "Verweildauer Seite 25"
comment(df_pre$TIME026) = "Verweildauer Seite 26"
comment(df_pre$TIME027) = "Verweildauer Seite 27"
comment(df_pre$TIME028) = "Verweildauer Seite 28"
comment(df_pre$TIME029) = "Verweildauer Seite 29"
comment(df_pre$TIME030) = "Verweildauer Seite 30"
comment(df_pre$TIME031) = "Verweildauer Seite 31"
comment(df_pre$TIME032) = "Verweildauer Seite 32"
comment(df_pre$TIME033) = "Verweildauer Seite 33"
comment(df_pre$TIME034) = "Verweildauer Seite 34"
comment(df_pre$TIME035) = "Verweildauer Seite 35"
comment(df_pre$TIME036) = "Verweildauer Seite 36"
comment(df_pre$TIME037) = "Verweildauer Seite 37"
comment(df_pre$TIME038) = "Verweildauer Seite 38"
comment(df_pre$TIME039) = "Verweildauer Seite 39"
comment(df_pre$TIME040) = "Verweildauer Seite 40"
comment(df_pre$TIME041) = "Verweildauer Seite 41"
comment(df_pre$TIME042) = "Verweildauer Seite 42"
comment(df_pre$TIME043) = "Verweildauer Seite 43"
comment(df_pre$TIME044) = "Verweildauer Seite 44"
comment(df_pre$TIME046) = "Verweildauer Seite 46"
comment(df_pre$TIME047) = "Verweildauer Seite 47"
comment(df_pre$TIME048) = "Verweildauer Seite 48"
comment(df_pre$TIME049) = "Verweildauer Seite 49"
comment(df_pre$TIME050) = "Verweildauer Seite 50"
comment(df_pre$TIME051) = "Verweildauer Seite 51"
comment(df_pre$TIME052) = "Verweildauer Seite 52"
comment(df_pre$TIME_SUM) = "Verweildauer gesamt (ohne Ausreißer)"
comment(df_pre$MAILSENT) = "Versandzeitpunkt der Einladungsmail (nur für nicht-anonyme Adressaten)"
comment(df_pre$LASTDATA) = "Zeitpunkt als der Datensatz das letzte mal geändert wurde"
comment(df_pre$STATUS) = "Status des Interviews (Markierung)"
comment(df_pre$FINISHED) = "Wurde die Befragung abgeschlossen (letzte Seite erreicht)?"
comment(df_pre$Q_VIEWER) = "Hat der Teilnehmer den Fragebogen nur angesehen, ohne die Pflichtfragen zu beantworten?"
comment(df_pre$LASTPAGE) = "Seite, die der Teilnehmer zuletzt bearbeitet hat"
comment(df_pre$MAXPAGE) = "Letzte Seite, die im Fragebogen bearbeitet wurde"
comment(df_pre$MISSING) = "Anteil fehlender Antworten in Prozent"
comment(df_pre$MISSREL) = "Anteil fehlender Antworten (gewichtet nach Relevanz)"
comment(df_pre$TIME_RSI) = "Ausfüll-Geschwindigkeit (relativ)"



# Assure that the comments are retained in subsets
as.data.frame.avector = as.data.frame.vector
`[.avector` <- function(x,i,...) {
  r <- NextMethod("[")
  mostattributes(r) <- attributes(x)
  r
}
df_pre_tmp = data.frame(
  lapply(df_pre, function(x) {
    structure( x, class = c("avector", class(x) ) )
  } )
)
mostattributes(df_pre_tmp) = attributes(df_pre)
df_pre = df_pre_tmp
rm(df_pre_tmp)

