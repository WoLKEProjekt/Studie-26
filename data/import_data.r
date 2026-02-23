# Dieses Script liest eine CSV-Datendatei in GNU R ein.
# Beim Einlesen werden für alle Variablen Beschriftungen (comment) angelegt.
# Die Beschriftungen für Werte wird ebenfalls als Attribute (attr) abgelegt.

# df_file = file.choose()
# setwd("./")
# print(getwd())
df_file = "data/rdata_wolke_studie_2026-01-30_10-58.csv"

options(encoding = "UTF-8")
df = read.delim(
    file = df_file,
    encoding = "UTF-8",
    fileEncoding = "UTF-8",
    header = FALSE,
    sep = "\t",
    quote = "\"",
    dec = ".",
    row.names = NULL,
    col.names = c(
        "CASE",
        "SERIAL",
        "REF",
        "QUESTNNR",
        "MODE",
        "STARTED",
        "AI04",
        "AI10",
        "AI11",
        "AI14",
        "AI16",
        "AI17_01",
        "AI17_02",
        "AI17_03",
        "AI17_04",
        "AI17_05",
        "AI18",
        "AI20",
        "AI25",
        "AI27",
        "AI29",
        "AI35_02",
        "AI36_04",
        "AI36_10",
        "AI36_11",
        "AI36_13",
        "AI36_15",
        "AI36_16",
        "AI36_17",
        "AI36_19",
        "AI36_24",
        "AI36_25",
        "AI36_27",
        "CT01",
        "CT02",
        "CT03",
        "CT04",
        "CT05",
        "CT06",
        "CT07",
        "CT08",
        "CT09",
        "CT10",
        "CT11",
        "CT12",
        "CT13",
        "CT14",
        "CT15",
        "CT16",
        "CT17",
        "CT18",
        "CT19",
        "CT20",
        "CT21",
        "CT28_01",
        "CT29_01",
        "CT29_02",
        "CT29_03",
        "CT29_04",
        "CT29_05",
        "CT29_06",
        "CT29_07",
        "CT29_08",
        "CT29_09",
        "CT29_10",
        "CT29_11",
        "CT29_12",
        "CT29_13",
        "CT29_14",
        "CT29_15",
        "CT29_16",
        "CT29_17",
        "CT29_18",
        "CT29_19",
        "CT29_20",
        "CT29_21",
        "DE02",
        "DE03_01",
        "DE03_02",
        "DE04_01",
        "DE04_02",
        "DE06",
        "DE07",
        "DE08",
        "DE09",
        "DE10",
        "DE11",
        "DE13_01",
        "DE14_01",
        "DE15_01",
        "DE16",
        "DE23",
        "DE24",
        "DE25",
        "DE26",
        "DE27",
        "DE32",
        "DE33",
        "DE34",
        "GL01",
        "GL02",
        "GL03",
        "GL04",
        "GL05",
        "GL06",
        "GL07",
        "GL08",
        "GL09",
        "GL11",
        "GL12",
        "GL13",
        "GL14",
        "GL15",
        "GL16",
        "GL17",
        "GL18",
        "GL19",
        "GL20_01",
        "GL21_01",
        "GL21_02",
        "GL21_03",
        "GL21_04",
        "GL21_05",
        "GL21_06",
        "GL21_07",
        "GL21_08",
        "GL21_09",
        "GL21_10",
        "GL21_11",
        "GL21_12",
        "GL21_13",
        "GL21_14",
        "GL21_15",
        "GL21_16",
        "GL21_17",
        "GL21_18",
        "GL21_19",
        "NP01_01",
        "RE02_01",
        "RE02_02",
        "RE02_03",
        "RE02_04",
        "RE02_05",
        "RE02_06",
        "RE02_07",
        "RE02_08",
        "RE02_09",
        "TP01_01",
        "TP01_02",
        "TP01_03",
        "TP01_04",
        "TP01_05",
        "TP02_01",
        "TP02_02",
        "TP02_03",
        "TP02_04",
        "TP02_05",
        "TP02_06",
        "TP02_07",
        "TP03_01",
        "TP03_02",
        "TP03_03",
        "TP03_04",
        "TP03_05",
        "TP04_01",
        "TP04_02",
        "TP04_03",
        "TP04_04",
        "TP04_05",
        "TP04_06",
        "TP04_07",
        "TP04_08",
        "TP04_09",
        "TP04_10",
        "TP04_11",
        "TP04_12",
        "TP04_13",
        "TP04_14",
        "TP04_15",
        "TP05_01",
        "TP05_02",
        "TP05_07",
        "TP05_08",
        "TP05_03",
        "TP05_04",
        "TP05_05",
        "TP05_06",
        "TIME001",
        "TIME002",
        "TIME003",
        "TIME004",
        "TIME005",
        "TIME006",
        "TIME007",
        "TIME008",
        "TIME009",
        "TIME010",
        "TIME011",
        "TIME012",
        "TIME013",
        "TIME014",
        "TIME016",
        "TIME017",
        "TIME018",
        "TIME019",
        "TIME020",
        "TIME021",
        "TIME022",
        "TIME024",
        "TIME025",
        "TIME026",
        "TIME027",
        "TIME028",
        "TIME029",
        "TIME030",
        "TIME031",
        "TIME032",
        "TIME033",
        "TIME034",
        "TIME035",
        "TIME036",
        "TIME037",
        "TIME038",
        "TIME039",
        "TIME040",
        "TIME041",
        "TIME042",
        "TIME043",
        "TIME044",
        "TIME045",
        "TIME046",
        "TIME047",
        "TIME048",
        "TIME049",
        "TIME051",
        "TIME052",
        "TIME053",
        "TIME054",
        "TIME055",
        "TIME056",
        "TIME057",
        "TIME058",
        "TIME059",
        "TIME060",
        "TIME_SUM",
        "MAILSENT",
        "LASTDATA",
        "STATUS",
        "FINISHED",
        "Q_VIEWER",
        "LASTPAGE",
        "MAXPAGE",
        "MISSING",
        "MISSREL",
        "TIME_RSI"
    ),
    as.is = TRUE,
    colClasses = c(
        CASE = "numeric",
        SERIAL = "character",
        REF = "character",
        QUESTNNR = "character",
        MODE = "factor",
        STARTED = "POSIXct",
        AI04 = "numeric",
        AI10 = "numeric",
        AI11 = "numeric",
        AI14 = "numeric",
        AI16 = "numeric",
        AI17_01 = "numeric",
        AI17_02 = "numeric",
        AI17_03 = "numeric",
        AI17_04 = "numeric",
        AI17_05 = "numeric",
        AI18 = "numeric",
        AI20 = "numeric",
        AI25 = "numeric",
        AI27 = "numeric",
        AI29 = "numeric",
        AI35_02 = "character",
        AI36_04 = "character",
        AI36_10 = "character",
        AI36_11 = "character",
        AI36_13 = "character",
        AI36_15 = "character",
        AI36_16 = "character",
        AI36_17 = "character",
        AI36_19 = "character",
        AI36_24 = "character",
        AI36_25 = "character",
        AI36_27 = "character",
        CT01 = "numeric",
        CT02 = "numeric",
        CT03 = "numeric",
        CT04 = "numeric",
        CT05 = "numeric",
        CT06 = "numeric",
        CT07 = "numeric",
        CT08 = "numeric",
        CT09 = "numeric",
        CT10 = "numeric",
        CT11 = "numeric",
        CT12 = "numeric",
        CT13 = "numeric",
        CT14 = "numeric",
        CT15 = "numeric",
        CT16 = "numeric",
        CT17 = "numeric",
        CT18 = "numeric",
        CT19 = "numeric",
        CT20 = "numeric",
        CT21 = "numeric",
        CT28_01 = "character",
        CT29_01 = "character",
        CT29_02 = "character",
        CT29_03 = "character",
        CT29_04 = "character",
        CT29_05 = "character",
        CT29_06 = "character",
        CT29_07 = "character",
        CT29_08 = "character",
        CT29_09 = "character",
        CT29_10 = "character",
        CT29_11 = "character",
        CT29_12 = "character",
        CT29_13 = "character",
        CT29_14 = "character",
        CT29_15 = "character",
        CT29_16 = "character",
        CT29_17 = "character",
        CT29_18 = "character",
        CT29_19 = "character",
        CT29_20 = "character",
        CT29_21 = "character",
        DE02 = "numeric",
        DE03_01 = "numeric",
        DE03_02 = "numeric",
        DE04_01 = "numeric",
        DE04_02 = "numeric",
        DE06 = "numeric",
        DE07 = "numeric",
        DE08 = "numeric",
        DE09 = "numeric",
        DE10 = "numeric",
        DE11 = "numeric",
        DE13_01 = "character",
        DE14_01 = "numeric",
        DE15_01 = "numeric",
        DE16 = "numeric",
        DE23 = "numeric",
        DE24 = "numeric",
        DE25 = "numeric",
        DE26 = "numeric",
        DE27 = "numeric",
        DE32 = "numeric",
        DE33 = "numeric",
        DE34 = "numeric",
        GL01 = "numeric",
        GL02 = "numeric",
        GL03 = "numeric",
        GL04 = "numeric",
        GL05 = "numeric",
        GL06 = "numeric",
        GL07 = "numeric",
        GL08 = "numeric",
        GL09 = "numeric",
        GL11 = "numeric",
        GL12 = "numeric",
        GL13 = "numeric",
        GL14 = "numeric",
        GL15 = "numeric",
        GL16 = "numeric",
        GL17 = "numeric",
        GL18 = "numeric",
        GL19 = "numeric",
        GL20_01 = "character",
        GL21_01 = "character",
        GL21_02 = "character",
        GL21_03 = "character",
        GL21_04 = "character",
        GL21_05 = "character",
        GL21_06 = "character",
        GL21_07 = "character",
        GL21_08 = "character",
        GL21_09 = "character",
        GL21_10 = "character",
        GL21_11 = "character",
        GL21_12 = "character",
        GL21_13 = "character",
        GL21_14 = "character",
        GL21_15 = "character",
        GL21_16 = "character",
        GL21_17 = "character",
        GL21_18 = "character",
        GL21_19 = "character",
        NP01_01 = "numeric",
        RE02_01 = "numeric",
        RE02_02 = "numeric",
        RE02_03 = "numeric",
        RE02_04 = "numeric",
        RE02_05 = "numeric",
        RE02_06 = "numeric",
        RE02_07 = "numeric",
        RE02_08 = "numeric",
        RE02_09 = "numeric",
        TP01_01 = "numeric",
        TP01_02 = "numeric",
        TP01_03 = "numeric",
        TP01_04 = "numeric",
        TP01_05 = "numeric",
        TP02_01 = "numeric",
        TP02_02 = "numeric",
        TP02_03 = "numeric",
        TP02_04 = "numeric",
        TP02_05 = "numeric",
        TP02_06 = "numeric",
        TP02_07 = "numeric",
        TP03_01 = "numeric",
        TP03_02 = "numeric",
        TP03_03 = "numeric",
        TP03_04 = "numeric",
        TP03_05 = "numeric",
        TP04_01 = "numeric",
        TP04_02 = "numeric",
        TP04_03 = "numeric",
        TP04_04 = "numeric",
        TP04_05 = "numeric",
        TP04_06 = "numeric",
        TP04_07 = "numeric",
        TP04_08 = "numeric",
        TP04_09 = "numeric",
        TP04_10 = "numeric",
        TP04_11 = "numeric",
        TP04_12 = "numeric",
        TP04_13 = "numeric",
        TP04_14 = "numeric",
        TP04_15 = "numeric",
        TP05_01 = "numeric",
        TP05_02 = "numeric",
        TP05_07 = "numeric",
        TP05_08 = "numeric",
        TP05_03 = "numeric",
        TP05_04 = "numeric",
        TP05_05 = "numeric",
        TP05_06 = "numeric",
        TIME001 = "integer",
        TIME002 = "integer",
        TIME003 = "integer",
        TIME004 = "integer",
        TIME005 = "integer",
        TIME006 = "integer",
        TIME007 = "integer",
        TIME008 = "integer",
        TIME009 = "integer",
        TIME010 = "integer",
        TIME011 = "integer",
        TIME012 = "integer",
        TIME013 = "integer",
        TIME014 = "integer",
        TIME016 = "integer",
        TIME017 = "integer",
        TIME018 = "integer",
        TIME019 = "integer",
        TIME020 = "integer",
        TIME021 = "integer",
        TIME022 = "integer",
        TIME024 = "integer",
        TIME025 = "integer",
        TIME026 = "integer",
        TIME027 = "integer",
        TIME028 = "integer",
        TIME029 = "integer",
        TIME030 = "integer",
        TIME031 = "integer",
        TIME032 = "integer",
        TIME033 = "integer",
        TIME034 = "integer",
        TIME035 = "integer",
        TIME036 = "integer",
        TIME037 = "integer",
        TIME038 = "integer",
        TIME039 = "integer",
        TIME040 = "integer",
        TIME041 = "integer",
        TIME042 = "integer",
        TIME043 = "integer",
        TIME044 = "integer",
        TIME045 = "integer",
        TIME046 = "integer",
        TIME047 = "integer",
        TIME048 = "integer",
        TIME049 = "integer",
        TIME051 = "integer",
        TIME052 = "integer",
        TIME053 = "integer",
        TIME054 = "integer",
        TIME055 = "integer",
        TIME056 = "integer",
        TIME057 = "integer",
        TIME058 = "integer",
        TIME059 = "integer",
        TIME060 = "integer",
        TIME_SUM = "integer",
        MAILSENT = "POSIXct",
        LASTDATA = "POSIXct",
        STATUS = "character",
        FINISHED = "logical",
        Q_VIEWER = "logical",
        LASTPAGE = "numeric",
        MAXPAGE = "numeric",
        MISSING = "numeric",
        MISSREL = "numeric",
        TIME_RSI = "numeric"
    ),
    skip = 1,
    check.names = TRUE,
    fill = TRUE,
    strip.white = FALSE,
    blank.lines.skip = TRUE,
    comment.char = "",
    na.strings = ""
)

row.names(df) = df$CASE

rm(df_file)

attr(df, "project") = "wolke_studie"
attr(df, "description") = "WoLKE Studie"
attr(df, "date") = "2026-01-30 10:58:33"
attr(df, "server") = "https://s2survey.net"

# Variable und Value Labels
df$AI04 = factor(
    df$AI04,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Blockchain",
        "Natural Language Processing",
        "Lernpsychologie",
        "Bioinformatik",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$AI10 = factor(
    df$AI10,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Extremwetterereignisse aus Wetterdaten vorhersagen",
        "Einen Beweis für einen mathematischen Satz finden",
        "Quiz-Fragen beantworten",
        "Poker spielen",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$AI11 = factor(
    df$AI11,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Kodierung von Wissen in KI-Systemen, sodass Menschen es verstehen können",
        "Sensoren, die Informationen aus der Umwelt erfassen",
        "Informationen über die Welt, die von einem Computer verarbeitet werden können",
        "Ein Algorithmus, der aus Daten Wissen generiert",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$AI14 = factor(
    df$AI14,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Es kann die Ausgabewerte (Label) der Testdaten möglichst gut vorhersagen",
        "Es enthält möglichst wenige Variablen",
        "Es ist möglichst gut an die Trainingsdaten angepasst",
        "Die Vorhersagen sind möglichst eindeutig",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$AI16 = factor(
    df$AI16,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Die Prozessschritte basieren auf behavioristischen Lerntheorien",
        "Die Entwicklung von Modellen im Maschinellen Lernen ist in Teilen ein iterativer Prozess",
        "Die Prozessschritte bei der Anwendung von überwachten und unüberwachten Lernen sind grundsätzlich gleich",
        "Die Prozessschritte können rückwärts durchlaufen werden um einen (künstlichen) Datensatz zu generieren",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$AI18 = factor(
    df$AI18,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Die Daten sollten in möglichst gleich große Teile eingeteilt werden",
        "Die Daten sollten zufällig in Trainings- und Testdatensätze geteilt werden",
        "Die Testdaten sollten qualitativ hochwertiger sein als die Trainingsdaten",
        "Die Trainings- und Testdaten sollten sich möglichst stark voneinander unterscheiden",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$AI20 = factor(
    df$AI20,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Menschen können das Ergebnis von Maschinellen Lernen nur schwer beeinflussen, da es automatisch abläuft",
        "Nur bei der Auswahl der Daten, mit denen das Modell lernt, kann das Ergebnis beeinflusst werden",
        "Menschen können bei der Entwicklung an mehreren Prozesschritten das Ergebnis beeinflussen",
        "Menschen können nur die Interpretation der Ergebnisse beeinflussen",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$AI25 = factor(
    df$AI25,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Hunde sind schwerer zu erkennen als Katzen, da es im Internet weniger Bilder von Hunden gibt",
        "Kleine Objekte (Katzen) werden besser erkannt als große (Hunde)",
        "Die meisten Modelle können Katzen generell besser erkennen als Hunde",
        "Die Trainingsdaten der Hunde waren nicht repräsentativ für alle Hunderassen",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$AI27 = factor(
    df$AI27,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "KI birgt ein schwer zu kalkulierendes Restrisiko",
        "Es ist häufig nicht erkennbar, wie ein KI-System Entscheidungen trifft",
        "Nutzende werden häufig nicht über den Einsatz von KI informiert",
        "Viele Nutzende haben ein geringes Wissen über KI.",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$AI29 = factor(
    df$AI29,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Anfälligkeit gegenüber Hacking",
        "Diskriminierung von Verdächtigen aufgrund von Herkunft und Status",
        "fehlende Rechtssicherheit im Falle des Ausfalls der KI",
        "Untergrabung der Autorität der Polizist:innen",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$CT01 = factor(
    df$CT01,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT02 = factor(
    df$CT02,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT03 = factor(
    df$CT03,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT04 = factor(
    df$CT04,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT05 = factor(
    df$CT05,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT06 = factor(
    df$CT06,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT07 = factor(
    df$CT07,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT08 = factor(
    df$CT08,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT09 = factor(
    df$CT09,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT10 = factor(
    df$CT10,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT11 = factor(
    df$CT11,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT12 = factor(
    df$CT12,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT13 = factor(
    df$CT13,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT14 = factor(
    df$CT14,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT15 = factor(
    df$CT15,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT16 = factor(
    df$CT16,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT17 = factor(
    df$CT17,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT18 = factor(
    df$CT18,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT19 = factor(
    df$CT19,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT20 = factor(
    df$CT20,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$CT21 = factor(
    df$CT21,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c("A", "B", "C", "D", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$DE02 = factor(
    df$DE02,
    levels = c("1", "2", "-9"),
    labels = c("Ja", "Nein", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$DE06 = factor(
    df$DE06,
    levels = c("1", "2", "-9"),
    labels = c("Ja", "Nein", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$DE07 = factor(
    df$DE07,
    levels = c("1", "2", "-9"),
    labels = c("Ja", "Nein", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$DE08 = factor(
    df$DE08,
    levels = c("1", "2", "-9"),
    labels = c("Ja", "Nein", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$DE09 = factor(
    df$DE09,
    levels = c("1", "2", "-9"),
    labels = c("Ja", "Nein", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$DE10 = factor(
    df$DE10,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Weiblich",
        "Männlich",
        "Divers",
        "keine Angabe",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$DE11 = factor(
    df$DE11,
    levels = c("1", "2", "-9"),
    labels = c(
        "PH Schwäbisch Gmünd",
        "PH Ludwigsburg",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$DE16 = factor(
    df$DE16,
    levels = c(
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "10",
        "11",
        "12",
        "13",
        "14",
        "15",
        "16",
        "-9"
    ),
    labels = c(
        "Bachelor Lehramt Grundschule",
        "Master Lehramt Grundschule",
        "Bachelor Lehramt Sekundarstufe I",
        "Master Lehramt Sekundarstufe I",
        "Nachstudium Sekundarstufe I",
        "Bachelor Berufliches Lehramt",
        "Master Berufliches Lehramt",
        "Bachelor Bildung und Erziehung im Kindesalter (Kindheitspädagogik)",
        "Master Bildung und Erziehung im Kindesalter",
        "Bachelor Lehramt Sonderpädagogik",
        "Master Lehramt Sonderpädagogik",
        "Aufbau Lehramt Sonderpädagogik",
        "Bachelor Europalehramt Sekundarstufe I",
        "Master Europalehramt Sekundarstufe I",
        "Master Erwachsenenbildung/Weiterbildung",
        "Sonstiges",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$DE23 = factor(
    df$DE23,
    levels = c("1", "2", "-9"),
    labels = c(
        "Ich habe die Datenschutzinformationen gelesen und stimme zu, dass meine personenbezogenen Daten gemäß den hier aufgeführten Angaben verarbeitet werden.",
        "Ich stimme nicht zu.",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$DE24 = factor(
    df$DE24,
    levels = c(
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "10",
        "11",
        "12",
        "13",
        "14",
        "15",
        "16",
        "17",
        "18",
        "19",
        "20",
        "21",
        "-9"
    ),
    labels = c(
        "Alltagskultur und Gesundheit",
        "Biologie",
        "Chemie",
        "Deutsch",
        "Englisch",
        "Ethik",
        "Französisch",
        "Geographie",
        "Geschichte",
        "Informatik",
        "Islamische Theologie / Religionspädagogik",
        "Kunst",
        "Mathematik",
        "Musik",
        "Physik",
        "Politikwissenschaft",
        "Sport",
        "Technik",
        "Theologie / Religionspädagogik (evangelisch oder katholisch)",
        "Wirtschaft",
        "keine Angabe",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$DE25 = factor(
    df$DE25,
    levels = c(
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "10",
        "11",
        "12",
        "13",
        "14",
        "15",
        "16",
        "17",
        "18",
        "19",
        "20",
        "21",
        "-9"
    ),
    labels = c(
        "Alltagskultur und Gesundheit",
        "Biologie",
        "Chemie",
        "Deutsch",
        "Englisch",
        "Ethik",
        "Französisch",
        "Geographie",
        "Geschichte",
        "Informatik",
        "Islamische Theologie / Religionspädagogik",
        "Kunst",
        "Mathematik",
        "Musik",
        "Physik",
        "Politikwissenschaft",
        "Sport",
        "Technik",
        "Theologie / Religionspädagogik (evangelisch oder katholisch)",
        "Wirtschaft",
        "keine Angabe",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$DE26 = factor(
    df$DE26,
    levels = c(
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "10",
        "11",
        "12",
        "13",
        "14",
        "15",
        "16",
        "-9"
    ),
    labels = c(
        "Informatisch Grundbildung",
        "Bildungsinformatik",
        "Technik",
        "Physik",
        "Mathematik",
        "Kunst",
        "Katholische Theologie / Religionspädagogik",
        "Evangelische Theologie / Religionspädagogik",
        "Beratung",
        "Deutsch als Zweitsprache (DaZ)",
        "Erlebnispädagogik",
        "Islamische Religionspädagogik",
        "Medienpädagogik",
        "Pädagogik der Vielfalt",
        "Spiel- und Theaterpädagogik",
        "keine Angabe",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$DE27 = factor(
    df$DE27,
    levels = c(
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "10",
        "11",
        "12",
        "13",
        "14",
        "15",
        "16",
        "-9"
    ),
    labels = c(
        "Informatisch Grundbildung",
        "Bildungsinformatik",
        "Technik",
        "Physik",
        "Mathematik",
        "Kunst",
        "Katholische Theologie / Religionspädagogik",
        "Evangelische Theologie / Religionspädagogik",
        "Beratung",
        "Deutsch als Zweitsprache (DaZ)",
        "Erlebnispädagogik",
        "Islamische Religionspädagogik",
        "Medienpädagogik",
        "Pädagogik der Vielfalt",
        "Spiel- und Theaterpädagogik",
        "keine Angabe",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$DE32 = factor(
    df$DE32,
    levels = c("1", "2", "-9"),
    labels = c("Ja", "Nein", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$DE33 = factor(
    df$DE33,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "weniger als 2 Stunden",
        "eintägig",
        "mehrtägig",
        "mehrwöchig",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$DE34 = factor(
    df$DE34,
    levels = c("1", "2", "-9"),
    labels = c("Ja", "Nein", "[NA] nicht beantwortet"),
    ordered = FALSE
)
df$GL01 = factor(
    df$GL01,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "KI, die neue Inhalte wie Texte, Bilder oder Musik erschafft, indem sie aus vorhandenen Daten lernt",
        "Ein KI-System, das entwickelt wurde, um die Geschwindigkeit und Genauigkeit der Datenabfrage in Suchmaschinen zu verbessern",
        "Eine Form künstlicher Intelligenz, die sich auf die Echtzeit-Übersetzung von Sprachen konzentriert",
        "KI-Technologie, die in erster Linie zur Verwaltung und Organisation großer Datenbanken eingesetzt wird",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL02 = factor(
    df$GL02,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Ein KI-System, das mit einer Wissensbasis und Regeln arbeitet, um klar definierte Aufgaben zu lösen",
        "Ein KI-System, das neue Inhalte wie Texte oder Bilder erzeugt, indem es aus großen Datenmengen lernt",
        "Eine KI-Technologie, die primär zur Echtzeit-Übersetzung von Sprachen eingesetzt wird",
        "Ein KI-System, das selbstständig komplexe Probleme in allen Wissensbereichen lösen kann, ohne Vorgaben.",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL03 = factor(
    df$GL03,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Es generiert Text, indem es große Mengen an Webinhalten analysiert und zusammenfasst",
        "Es generiert Text, indem es das nächste Wort basierend auf dem Kontext der vorherigen Wörter vorhersagt",
        "Es generiert Text, indem es den eingegebenen Text gleichzeitig in mehrere Sprachen übersetzt",
        "Es generiert Text, indem es vordefinierte Vorlagen verwendet und die Lücken ausfüllt",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL04 = factor(
    df$GL04,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Vorhersage von Börsentrends",
        "Treffen ethischer Entscheidungen in komplexen Szenarien",
        "Diagnose seltener Krankheiten",
        "Generierung menschenähnlicher Texte auf der Grundlage von Eingabeaufforderungen",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL05 = factor(
    df$GL05,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Ein Token ist eine Texteinheit, beispielsweise ein Wort oder ein Teilwort, die vom Modell einzeln verarbeitet wird",
        "Ein Token ist eine eindeutige Kennung, die jedem Benutzer zugewiesen wird, der mit dem Sprachmodell interagiert",
        "Ein Token ist eine Sicherheitsmaßnahme, die zur Authentifizierung von API-Anfragen an das Sprachmodell verwendet wird",
        "Ein Token ist eine Belohnung, die Benutzer für die Bereitstellung wertvoller Daten zum Trainieren des Sprachmodells erhalten",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL06 = factor(
    df$GL06,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Sie entwickeln eigenständig neue Lösungsstrategien, auch wenn sie dafür keine Regeln gespeichert haben",
        "Sie können nur innerhalb der vorgegebenen Regeln arbeiten und haben Schwierigkeiten, sich an neue oder unerwartete Situationen anzupassen",
        "Sie reagieren auf Veränderungen in den Daten inkonsistent und können dadurch falsche Ergebnisse liefern",
        "Sie erzeugen kreative Inhalte wie Texte oder Bilder, die über ihren ursprünglichen Anwendungsbereich hinausgehen",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL07 = factor(
    df$GL07,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Die KI mit Informationen über die Zielgruppe versorgen",
        "Die KI bitten, Alleinstellungsmerkmale und Vorteile einzubeziehen",
        "Die KI bitten, überzeugende Sprachtechniken zu verwenden",
        "Der KI eine Liste mit Produkten der Konkurrenz zur Verfügung stellen",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL08 = factor(
    df$GL08,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Ein Schulkind verwendet KI, um eine Buchzusammenfassung zu schreiben",
        "Ein Schulkind verwendet KI, um schwierige Matheaufgaben direkt lösen zu lassen",
        "Ein Schulkind teilt persönliche Daten mit der KI, um individualisierte Vorschläge zum Lösne einer Hausaufgabe zu erhalten",
        "Ein Schulkind verwendet KI, um den selbstgeschriebenen Text sprachlich zu verbessern",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL09 = factor(
    df$GL09,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Die Antworten des LLM sind immer vertrauenswürdiger als alle Informationen, die Sie im Internet finden, sodass Sie sie ohne weitere Überprüfung verwenden können",
        "Die Antworten des LLM sind im Allgemeinen vertrauenswürdiger als Internetquellen, aber Sie sollten die Informationen dennoch mit anderen zuverlässigen Quellen überprüfen",
        "Die Antworten des LLM sind nicht unbedingt vertrauenswürdiger als Internetquellen, und Sie sollten die Informationen mit anderen glaubwürdigen Referenzen abgleichen",
        "Die Antworten des LLM sind weniger vertrauenswürdig als Internetquellen, da es sich auf veraltete Informationen stützt",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL11 = factor(
    df$GL11,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Akzeptieren Sie die Zusammenfassung als korrekt, da KI-Tools im Allgemeinen zuverlässig sind",
        "Bitten Sie die KI um weitere Details zur Methodik und zu den Ergebnissen der Studie",
        "Vergleichen Sie die Zusammenfassung mit der Original-Forschungsarbeit",
        "Verwenden Sie ein anderes KI-Tool, um eine Zusammenfassung zum Vergleich zu erstellen, und bewerten Sie die Übereinstimmung zwischen beiden Zusammenfassungen",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL12 = factor(
    df$GL12,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Die Stimme der Persönlichkeit des öffentlichen Lebens klingt wie ihre eigene",
        "Das Video wirkt professionell und ausgefeilt",
        "Das Video ist von hoher Qualität und weist flüssige Übergänge auf",
        "Keine der oben genannten Antworten",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL13 = factor(
    df$GL13,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Das KI-System könnte die besonderen Leistungen und außerschulischen Aktivitäten der Bewerber übersehen",
        "Das KI-System könnte geringfügige Formatierungsunterschiede in Lebensläufen falsch interpretieren",
        "Das KI-System könnte Bewerbungen, die in verschiedenen Sprachen eingereicht werden, nicht effektiv bearbeiten",
        "Das KI-System könnte bestehende Vorurteile, die sich in historischen Einstellungsdaten finden, verstärken.",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL14 = factor(
    df$GL14,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Das KI-Modell verwendet veraltete Trainingsdaten",
        "Der Trainingsdatensatz weist keine ausreichende Vielfalt auf",
        "Die eingegebenen Behandlungsrichtlinien sind falsch",
        "Das KI-Modell verhält sich wie eine Black Box.",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL15 = factor(
    df$GL15,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Der Journalist muss die Lizenzbedingungen des von ihm verwendeten KI-Tools überprüfen",
        "Das KI-generierte Bild kann automatisch ohne Einschränkungen verwendet werden",
        "Der Journalist muss eine Standard-Lizenzgebühr entrichten, um das KI-generierte Bild verwenden zu dürfen",
        "Das Bild darf nicht in einem kommerziellen Kontext verwendet werden, da es KI-generiert ist.",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL16 = factor(
    df$GL16,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Ja, um die für den Betrieb dieser Technologien erforderlichen Rechenressourcen zu reduzieren",
        "Ja, um die Verbreitung schädlicher oder irreführender Inhalte zu verhindern",
        "Nein, da dies technologische Innovationen und Kreativität behindern würde",
        "Nein, da Nutzer die Freiheit haben sollten, auf alle generierten Inhalte zuzugreifen",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL17 = factor(
    df$GL17,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Clickworker führen dazu, dass Modelle keine kreativen Inhalte mehr erzeugen können",
        "Die Arbeit der Clickworker ist oft fehlerhaft und führt zu schlechten KI-Systemen",
        "KI-Unternehmen nutzen die Arbeitskraft von Clickworkern systematisch aus, um Kosten zu sparen",
        "Clickworker machen KI-Modelle besonders anfällig für hohen Energieverbrauch.",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL18 = factor(
    df$GL18,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Training eines Modells ohne Daten",
        "Die Fähigkeit eines Modells, eine Aufgabe ohne aufgabenspezifisches Training auszuführen",
        "Eine Methode, um die Trainingszeit des Modells auf Null zu reduzieren",
        "Eine Technik zur Generierung synthetischer Trainingsdaten",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
df$GL19 = factor(
    df$GL19,
    levels = c("1", "2", "3", "4", "-9"),
    labels = c(
        "Richtig, da diese Informationen während des Übertragungsprozesses mit Hilfe komplexer Algorithmen verschlüsselt werden",
        "Richtig, da generative KI-Tools Black-Box-Systeme sind und keine personenbezogenen Daten ausgeben können, selbst wenn sie für das Modelltraining verwendet werden",
        "Falsch, da generative KI-Tools mit unverschlüsselten Daten trainiert werden und aufgrund ihrer probabilistischen Natur private Informationen ausgeben können",
        "Falsch, da Fortschritte in der Quanteninformatik die verschlüsselten Daten leicht entschlüsseln können.",
        "[NA] nicht beantwortet"
    ),
    ordered = FALSE
)
attr(df$AI17_01, "1") = "Rangplatz 1"
attr(df$AI17_01, "2") = "Rangplatz 2"
attr(df$AI17_01, "3") = "Rangplatz 3"
attr(df$AI17_01, "4") = "Rangplatz 4"
attr(df$AI17_01, "5") = "Rangplatz 5"
attr(df$AI17_02, "1") = "Rangplatz 1"
attr(df$AI17_02, "2") = "Rangplatz 2"
attr(df$AI17_02, "3") = "Rangplatz 3"
attr(df$AI17_02, "4") = "Rangplatz 4"
attr(df$AI17_02, "5") = "Rangplatz 5"
attr(df$AI17_03, "1") = "Rangplatz 1"
attr(df$AI17_03, "2") = "Rangplatz 2"
attr(df$AI17_03, "3") = "Rangplatz 3"
attr(df$AI17_03, "4") = "Rangplatz 4"
attr(df$AI17_03, "5") = "Rangplatz 5"
attr(df$AI17_04, "1") = "Rangplatz 1"
attr(df$AI17_04, "2") = "Rangplatz 2"
attr(df$AI17_04, "3") = "Rangplatz 3"
attr(df$AI17_04, "4") = "Rangplatz 4"
attr(df$AI17_04, "5") = "Rangplatz 5"
attr(df$AI17_05, "1") = "Rangplatz 1"
attr(df$AI17_05, "2") = "Rangplatz 2"
attr(df$AI17_05, "3") = "Rangplatz 3"
attr(df$AI17_05, "4") = "Rangplatz 4"
attr(df$AI17_05, "5") = "Rangplatz 5"
attr(df$DE03_01, "1") = "0 %"
attr(df$DE03_01, "101") = "100 %"
attr(df$DE03_02, "1") = "0 %"
attr(df$DE03_02, "101") = "100 %"
attr(df$DE04_01, "1") = "0 %"
attr(df$DE04_01, "101") = "100 %"
attr(df$DE04_02, "1") = "0 %"
attr(df$DE04_02, "101") = "100 %"
attr(df$NP01_01, "1") = "0 = unwahrscheinlich [0]"
attr(df$NP01_01, "2") = "[1]"
attr(df$NP01_01, "3") = "[2]"
attr(df$NP01_01, "4") = "[3]"
attr(df$NP01_01, "5") = "[4]"
attr(df$NP01_01, "6") = "[5]"
attr(df$NP01_01, "7") = "[6]"
attr(df$NP01_01, "8") = "[7]"
attr(df$NP01_01, "9") = "[8]"
attr(df$NP01_01, "10") = "[9]"
attr(df$NP01_01, "11") = "10 = sehr wahrscheinlich [10]"
attr(df$RE02_01, "1") = "stimme überhaupt nicht zu"
attr(df$RE02_01, "2") = "stimme eher nicht zu"
attr(df$RE02_01, "3") = "teils teils"
attr(df$RE02_01, "4") = "stimme eher zu"
attr(df$RE02_01, "5") = "stimme voll zu"
attr(df$RE02_02, "1") = "stimme überhaupt nicht zu"
attr(df$RE02_02, "2") = "stimme eher nicht zu"
attr(df$RE02_02, "3") = "teils teils"
attr(df$RE02_02, "4") = "stimme eher zu"
attr(df$RE02_02, "5") = "stimme voll zu"
attr(df$RE02_03, "1") = "stimme überhaupt nicht zu"
attr(df$RE02_03, "2") = "stimme eher nicht zu"
attr(df$RE02_03, "3") = "teils teils"
attr(df$RE02_03, "4") = "stimme eher zu"
attr(df$RE02_03, "5") = "stimme voll zu"
attr(df$RE02_04, "1") = "stimme überhaupt nicht zu"
attr(df$RE02_04, "2") = "stimme eher nicht zu"
attr(df$RE02_04, "3") = "teils teils"
attr(df$RE02_04, "4") = "stimme eher zu"
attr(df$RE02_04, "5") = "stimme voll zu"
attr(df$RE02_05, "1") = "stimme überhaupt nicht zu"
attr(df$RE02_05, "2") = "stimme eher nicht zu"
attr(df$RE02_05, "3") = "teils teils"
attr(df$RE02_05, "4") = "stimme eher zu"
attr(df$RE02_05, "5") = "stimme voll zu"
attr(df$RE02_06, "1") = "stimme überhaupt nicht zu"
attr(df$RE02_06, "2") = "stimme eher nicht zu"
attr(df$RE02_06, "3") = "teils teils"
attr(df$RE02_06, "4") = "stimme eher zu"
attr(df$RE02_06, "5") = "stimme voll zu"
attr(df$RE02_07, "1") = "stimme überhaupt nicht zu"
attr(df$RE02_07, "2") = "stimme eher nicht zu"
attr(df$RE02_07, "3") = "teils teils"
attr(df$RE02_07, "4") = "stimme eher zu"
attr(df$RE02_07, "5") = "stimme voll zu"
attr(df$RE02_08, "1") = "stimme überhaupt nicht zu"
attr(df$RE02_08, "2") = "stimme eher nicht zu"
attr(df$RE02_08, "3") = "teils teils"
attr(df$RE02_08, "4") = "stimme eher zu"
attr(df$RE02_08, "5") = "stimme voll zu"
attr(df$RE02_09, "1") = "stimme überhaupt nicht zu"
attr(df$RE02_09, "2") = "stimme eher nicht zu"
attr(df$RE02_09, "3") = "teils teils"
attr(df$RE02_09, "4") = "stimme eher zu"
attr(df$RE02_09, "5") = "stimme voll zu"
attr(df$TP01_01, "1") = "stimme überhaupt nicht zu"
attr(df$TP01_01, "2") = "stimme eher nicht zu"
attr(df$TP01_01, "3") = "teils teils"
attr(df$TP01_01, "4") = "stimme eher zu"
attr(df$TP01_01, "5") = "stimme voll zu"
attr(df$TP01_02, "1") = "stimme überhaupt nicht zu"
attr(df$TP01_02, "2") = "stimme eher nicht zu"
attr(df$TP01_02, "3") = "teils teils"
attr(df$TP01_02, "4") = "stimme eher zu"
attr(df$TP01_02, "5") = "stimme voll zu"
attr(df$TP01_03, "1") = "stimme überhaupt nicht zu"
attr(df$TP01_03, "2") = "stimme eher nicht zu"
attr(df$TP01_03, "3") = "teils teils"
attr(df$TP01_03, "4") = "stimme eher zu"
attr(df$TP01_03, "5") = "stimme voll zu"
attr(df$TP01_04, "1") = "stimme überhaupt nicht zu"
attr(df$TP01_04, "2") = "stimme eher nicht zu"
attr(df$TP01_04, "3") = "teils teils"
attr(df$TP01_04, "4") = "stimme eher zu"
attr(df$TP01_04, "5") = "stimme voll zu"
attr(df$TP01_05, "1") = "stimme überhaupt nicht zu"
attr(df$TP01_05, "2") = "stimme eher nicht zu"
attr(df$TP01_05, "3") = "teils teils"
attr(df$TP01_05, "4") = "stimme eher zu"
attr(df$TP01_05, "5") = "stimme voll zu"
attr(df$TP02_01, "1") = "stimme überhaupt nicht zu"
attr(df$TP02_01, "2") = "stimme eher nicht zu"
attr(df$TP02_01, "3") = "teils teils"
attr(df$TP02_01, "4") = "stimme eher zu"
attr(df$TP02_01, "5") = "stimme voll zu"
attr(df$TP02_02, "1") = "stimme überhaupt nicht zu"
attr(df$TP02_02, "2") = "stimme eher nicht zu"
attr(df$TP02_02, "3") = "teils teils"
attr(df$TP02_02, "4") = "stimme eher zu"
attr(df$TP02_02, "5") = "stimme voll zu"
attr(df$TP02_03, "1") = "stimme überhaupt nicht zu"
attr(df$TP02_03, "2") = "stimme eher nicht zu"
attr(df$TP02_03, "3") = "teils teils"
attr(df$TP02_03, "4") = "stimme eher zu"
attr(df$TP02_03, "5") = "stimme voll zu"
attr(df$TP02_04, "1") = "stimme überhaupt nicht zu"
attr(df$TP02_04, "2") = "stimme eher nicht zu"
attr(df$TP02_04, "3") = "teils teils"
attr(df$TP02_04, "4") = "stimme eher zu"
attr(df$TP02_04, "5") = "stimme voll zu"
attr(df$TP02_05, "1") = "stimme überhaupt nicht zu"
attr(df$TP02_05, "2") = "stimme eher nicht zu"
attr(df$TP02_05, "3") = "teils teils"
attr(df$TP02_05, "4") = "stimme eher zu"
attr(df$TP02_05, "5") = "stimme voll zu"
attr(df$TP02_06, "1") = "stimme überhaupt nicht zu"
attr(df$TP02_06, "2") = "stimme eher nicht zu"
attr(df$TP02_06, "3") = "teils teils"
attr(df$TP02_06, "4") = "stimme eher zu"
attr(df$TP02_06, "5") = "stimme voll zu"
attr(df$TP02_07, "1") = "stimme überhaupt nicht zu"
attr(df$TP02_07, "2") = "stimme eher nicht zu"
attr(df$TP02_07, "3") = "teils teils"
attr(df$TP02_07, "4") = "stimme eher zu"
attr(df$TP02_07, "5") = "stimme voll zu"
attr(df$TP03_01, "1") = "stimme überhaupt nicht zu"
attr(df$TP03_01, "2") = "stimme eher nicht zu"
attr(df$TP03_01, "3") = "teils teils"
attr(df$TP03_01, "4") = "stimme eher zu"
attr(df$TP03_01, "5") = "stimme voll zu"
attr(df$TP03_02, "1") = "stimme überhaupt nicht zu"
attr(df$TP03_02, "2") = "stimme eher nicht zu"
attr(df$TP03_02, "3") = "teils teils"
attr(df$TP03_02, "4") = "stimme eher zu"
attr(df$TP03_02, "5") = "stimme voll zu"
attr(df$TP03_03, "1") = "stimme überhaupt nicht zu"
attr(df$TP03_03, "2") = "stimme eher nicht zu"
attr(df$TP03_03, "3") = "teils teils"
attr(df$TP03_03, "4") = "stimme eher zu"
attr(df$TP03_03, "5") = "stimme voll zu"
attr(df$TP03_04, "1") = "stimme überhaupt nicht zu"
attr(df$TP03_04, "2") = "stimme eher nicht zu"
attr(df$TP03_04, "3") = "teils teils"
attr(df$TP03_04, "4") = "stimme eher zu"
attr(df$TP03_04, "5") = "stimme voll zu"
attr(df$TP03_05, "1") = "stimme überhaupt nicht zu"
attr(df$TP03_05, "2") = "stimme eher nicht zu"
attr(df$TP03_05, "3") = "teils teils"
attr(df$TP03_05, "4") = "stimme eher zu"
attr(df$TP03_05, "5") = "stimme voll zu"
attr(df$TP04_01, "1") = "stimme überhaupt nicht zu"
attr(df$TP04_01, "2") = "stimme eher nicht zu"
attr(df$TP04_01, "3") = "teils teils"
attr(df$TP04_01, "4") = "stimme eher zu"
attr(df$TP04_01, "5") = "stimme voll zu"
attr(df$TP04_02, "1") = "stimme überhaupt nicht zu"
attr(df$TP04_02, "2") = "stimme eher nicht zu"
attr(df$TP04_02, "3") = "teils teils"
attr(df$TP04_02, "4") = "stimme eher zu"
attr(df$TP04_02, "5") = "stimme voll zu"
attr(df$TP04_03, "1") = "stimme überhaupt nicht zu"
attr(df$TP04_03, "2") = "stimme eher nicht zu"
attr(df$TP04_03, "3") = "teils teils"
attr(df$TP04_03, "4") = "stimme eher zu"
attr(df$TP04_03, "5") = "stimme voll zu"
attr(df$TP04_04, "1") = "stimme überhaupt nicht zu"
attr(df$TP04_04, "2") = "stimme eher nicht zu"
attr(df$TP04_04, "3") = "teils teils"
attr(df$TP04_04, "4") = "stimme eher zu"
attr(df$TP04_04, "5") = "stimme voll zu"
attr(df$TP04_05, "1") = "stimme überhaupt nicht zu"
attr(df$TP04_05, "2") = "stimme eher nicht zu"
attr(df$TP04_05, "3") = "teils teils"
attr(df$TP04_05, "4") = "stimme eher zu"
attr(df$TP04_05, "5") = "stimme voll zu"
attr(df$TP04_06, "1") = "stimme überhaupt nicht zu"
attr(df$TP04_06, "2") = "stimme eher nicht zu"
attr(df$TP04_06, "3") = "teils teils"
attr(df$TP04_06, "4") = "stimme eher zu"
attr(df$TP04_06, "5") = "stimme voll zu"
attr(df$TP04_07, "1") = "stimme überhaupt nicht zu"
attr(df$TP04_07, "2") = "stimme eher nicht zu"
attr(df$TP04_07, "3") = "teils teils"
attr(df$TP04_07, "4") = "stimme eher zu"
attr(df$TP04_07, "5") = "stimme voll zu"
attr(df$TP04_08, "1") = "stimme überhaupt nicht zu"
attr(df$TP04_08, "2") = "stimme eher nicht zu"
attr(df$TP04_08, "3") = "teils teils"
attr(df$TP04_08, "4") = "stimme eher zu"
attr(df$TP04_08, "5") = "stimme voll zu"
attr(df$TP04_09, "1") = "stimme überhaupt nicht zu"
attr(df$TP04_09, "2") = "stimme eher nicht zu"
attr(df$TP04_09, "3") = "teils teils"
attr(df$TP04_09, "4") = "stimme eher zu"
attr(df$TP04_09, "5") = "stimme voll zu"
attr(df$TP04_10, "1") = "stimme überhaupt nicht zu"
attr(df$TP04_10, "2") = "stimme eher nicht zu"
attr(df$TP04_10, "3") = "teils teils"
attr(df$TP04_10, "4") = "stimme eher zu"
attr(df$TP04_10, "5") = "stimme voll zu"
attr(df$TP04_11, "1") = "stimme überhaupt nicht zu"
attr(df$TP04_11, "2") = "stimme eher nicht zu"
attr(df$TP04_11, "3") = "teils teils"
attr(df$TP04_11, "4") = "stimme eher zu"
attr(df$TP04_11, "5") = "stimme voll zu"
attr(df$TP04_12, "1") = "stimme überhaupt nicht zu"
attr(df$TP04_12, "2") = "stimme eher nicht zu"
attr(df$TP04_12, "3") = "teils teils"
attr(df$TP04_12, "4") = "stimme eher zu"
attr(df$TP04_12, "5") = "stimme voll zu"
attr(df$TP04_13, "1") = "stimme überhaupt nicht zu"
attr(df$TP04_13, "2") = "stimme eher nicht zu"
attr(df$TP04_13, "3") = "teils teils"
attr(df$TP04_13, "4") = "stimme eher zu"
attr(df$TP04_13, "5") = "stimme voll zu"
attr(df$TP04_14, "1") = "stimme überhaupt nicht zu"
attr(df$TP04_14, "2") = "stimme eher nicht zu"
attr(df$TP04_14, "3") = "teils teils"
attr(df$TP04_14, "4") = "stimme eher zu"
attr(df$TP04_14, "5") = "stimme voll zu"
attr(df$TP04_15, "1") = "stimme überhaupt nicht zu"
attr(df$TP04_15, "2") = "stimme eher nicht zu"
attr(df$TP04_15, "3") = "teils teils"
attr(df$TP04_15, "4") = "stimme eher zu"
attr(df$TP04_15, "5") = "stimme voll zu"
attr(df$TP05_01, "1") = "stimme überhaupt nicht zu"
attr(df$TP05_01, "2") = "stimme eher nicht zu"
attr(df$TP05_01, "3") = "teils teils"
attr(df$TP05_01, "4") = "stimme eher zu"
attr(df$TP05_01, "5") = "stimme voll zu"
attr(df$TP05_02, "1") = "stimme überhaupt nicht zu"
attr(df$TP05_02, "2") = "stimme eher nicht zu"
attr(df$TP05_02, "3") = "teils teils"
attr(df$TP05_02, "4") = "stimme eher zu"
attr(df$TP05_02, "5") = "stimme voll zu"
attr(df$TP05_07, "1") = "stimme überhaupt nicht zu"
attr(df$TP05_07, "2") = "stimme eher nicht zu"
attr(df$TP05_07, "3") = "teils teils"
attr(df$TP05_07, "4") = "stimme eher zu"
attr(df$TP05_07, "5") = "stimme voll zu"
attr(df$TP05_08, "1") = "stimme überhaupt nicht zu"
attr(df$TP05_08, "2") = "stimme eher nicht zu"
attr(df$TP05_08, "3") = "teils teils"
attr(df$TP05_08, "4") = "stimme eher zu"
attr(df$TP05_08, "5") = "stimme voll zu"
attr(df$TP05_03, "1") = "stimme überhaupt nicht zu"
attr(df$TP05_03, "2") = "stimme eher nicht zu"
attr(df$TP05_03, "3") = "teils teils"
attr(df$TP05_03, "4") = "stimme eher zu"
attr(df$TP05_03, "5") = "stimme voll zu"
attr(df$TP05_04, "1") = "stimme überhaupt nicht zu"
attr(df$TP05_04, "2") = "stimme eher nicht zu"
attr(df$TP05_04, "3") = "teils teils"
attr(df$TP05_04, "4") = "stimme eher zu"
attr(df$TP05_04, "5") = "stimme voll zu"
attr(df$TP05_05, "1") = "stimme überhaupt nicht zu"
attr(df$TP05_05, "2") = "stimme eher nicht zu"
attr(df$TP05_05, "3") = "teils teils"
attr(df$TP05_05, "4") = "stimme eher zu"
attr(df$TP05_05, "5") = "stimme voll zu"
attr(df$TP05_06, "1") = "stimme überhaupt nicht zu"
attr(df$TP05_06, "2") = "stimme eher nicht zu"
attr(df$TP05_06, "3") = "teils teils"
attr(df$TP05_06, "4") = "stimme eher zu"
attr(df$TP05_06, "5") = "stimme voll zu"
attr(df$STATUS, "complete") = "Interview vollständig"
attr(df$STATUS, "finished") = "Interview abgeschlossen (letzte Seite erreicht)"
attr(df$STATUS, "quality fail") = "Als ungültiger Datensatz markiert"
attr(df$STATUS, "quota full") = "Aufgrund eines Quotenstopps abgewiesen"
attr(df$STATUS, "screenout") = "Aufgrund der Auswahlkritiern abgewiesen"
attr(df$FINISHED, "F") = "abgebrochen"
attr(df$FINISHED, "T") = "ausgefüllt"
attr(df$Q_VIEWER, "F") = "Teilnehmer"
attr(df$Q_VIEWER, "T") = "Durchklicker"
comment(df$SERIAL) = "Personenkennung oder Teilnahmecode (sofern verwendet)"
comment(df$REF) = "Referenz (sofern im Link angegeben)"
comment(df$QUESTNNR) = "Fragebogen, der im Interview verwendet wurde"
comment(df$MODE) = "Interview-Modus"
comment(
    df$STARTED
) = "Zeitpunkt zu dem das Interview begonnen hat (Europe/Berlin)"
comment(df$AI04) = "AI04"
comment(df$AI10) = "AI10"
comment(df$AI11) = "AI11"
comment(df$AI14) = "AI14"
comment(df$AI16) = "AI16"
comment(df$AI17_01) = "AI17: Modell mit Trainingsdaten trainieren"
comment(df$AI17_02) = "AI17: mit dem Modell Testdaten vorhersagen"
comment(df$AI17_03) = "AI17: Daten sammeln und vorbereiten"
comment(df$AI17_04) = "AI17: Daten in Trainings- und Testdaten einteilen"
comment(df$AI17_05) = "AI17: Genauigkeit der Vorhersage berechnen"
comment(df$AI18) = "AI18"
comment(df$AI20) = "AI20"
comment(df$AI25) = "AI25"
comment(df$AI27) = "AI27"
comment(df$AI29) = "AI29"
comment(df$AI35_02) = "Interne Variable: aiCorrectWoLKE"
comment(df$AI36_04) = "Interne Variable 2: AI04"
comment(df$AI36_10) = "Interne Variable 2: AI10"
comment(df$AI36_11) = "Interne Variable 2: AI11"
comment(df$AI36_13) = "Interne Variable 2: AI14"
comment(df$AI36_15) = "Interne Variable 2: AI16"
comment(df$AI36_16) = "Interne Variable 2: AI17"
comment(df$AI36_17) = "Interne Variable 2: AI18"
comment(df$AI36_19) = "Interne Variable 2: AI20"
comment(df$AI36_24) = "Interne Variable 2: AI25"
comment(df$AI36_25) = "Interne Variable 2: AI27"
comment(df$AI36_27) = "Interne Variable 2: AI29"
comment(df$CT01) = "1"
comment(df$CT02) = "2"
comment(df$CT03) = "3"
comment(df$CT04) = "4"
comment(df$CT05) = "5"
comment(df$CT06) = "6"
comment(df$CT07) = "7"
comment(df$CT08) = "8"
comment(df$CT09) = "9"
comment(df$CT10) = "10"
comment(df$CT11) = "11"
comment(df$CT12) = "12"
comment(df$CT13) = "13"
comment(df$CT14) = "14"
comment(df$CT15) = "15"
comment(df$CT16) = "16"
comment(df$CT17) = "17"
comment(df$CT18) = "18"
comment(df$CT19) = "19"
comment(df$CT20) = "20"
comment(df$CT21) = "21"
comment(df$CT28_01) = "Interne Variable: ctCorrect"
comment(df$CT29_01) = "Interne Variable 2: CT01"
comment(df$CT29_02) = "Interne Variable 2: CT02"
comment(df$CT29_03) = "Interne Variable 2: CT03"
comment(df$CT29_04) = "Interne Variable 2: CT04"
comment(df$CT29_05) = "Interne Variable 2: CT05"
comment(df$CT29_06) = "Interne Variable 2: CT06"
comment(df$CT29_07) = "Interne Variable 2: CT07"
comment(df$CT29_08) = "Interne Variable 2: CT08"
comment(df$CT29_09) = "Interne Variable 2: CT09"
comment(df$CT29_10) = "Interne Variable 2: CT10"
comment(df$CT29_11) = "Interne Variable 2: CT11"
comment(df$CT29_12) = "Interne Variable 2: CT12"
comment(df$CT29_13) = "Interne Variable 2: CT13"
comment(df$CT29_14) = "Interne Variable 2: CT14"
comment(df$CT29_15) = "Interne Variable 2: CT15"
comment(df$CT29_16) = "Interne Variable 2: CT16"
comment(df$CT29_17) = "Interne Variable 2: CT17"
comment(df$CT29_18) = "Interne Variable 2: CT18"
comment(df$CT29_19) = "Interne Variable 2: CT19"
comment(df$CT29_20) = "Interne Variable 2: CT20"
comment(df$CT29_21) = "Interne Variable 2: CT21"
comment(df$DE02) = "Ausschluss"
comment(
    df$DE03_01
) = "Kompetenz/Vorerfahrung: Im Umgang mit KI im MINT-Unterricht fühle ich mich kompetent."
comment(
    df$DE03_02
) = "Kompetenz/Vorerfahrung: Ich habe gute Vorkenntnisse im Umgang mit KI im MINT-Unterricht."
comment(
    df$DE04_01
) = "Kompetenz/Vorerfahrung S: Im Umgang mit KI im Sprach-Unterricht fühle ich mich kompetent."
comment(
    df$DE04_02
) = "Kompetenz/Vorerfahrung S: Ich habe gute Vorkenntnisse im Umgang mit KI im Sprach-Unterricht."
comment(df$DE06) = "Teilnahme Seminar f1 S"
comment(df$DE07) = "Teilnahme Seminar f2"
comment(df$DE08) = "Teilnahme Seminar f2 S"
comment(df$DE09) = "ISP"
comment(df$DE10) = "Geschlecht"
comment(df$DE11) = "Universität"
comment(
    df$DE13_01
) = "Code: Ihr persönliches Codewort ... bitte prüfen Sie Ihre Eingabe"
comment(df$DE14_01) = "Alter:  ... Jahre"
comment(df$DE15_01) = "Hochschulsemester: [01]"
comment(df$DE16) = "Studium"
comment(df$DE23) = "Einwilligungserklärung"
comment(df$DE24) = "Studium Fach v2 f1"
comment(df$DE25) = "Studium Fach v2 f2"
comment(df$DE26) = "Erweiterungsfach"
comment(df$DE27) = "Erweiterungsfach 2"
comment(df$DE32) = "KI-Kurse und Weiterbildung"
comment(df$DE33) = "KI Kurs Erweiterung"
comment(df$DE34) = "Opt-In"
comment(df$GL01) = "GL01"
comment(df$GL02) = "GL02"
comment(df$GL03) = "GL03"
comment(df$GL04) = "GL04"
comment(df$GL05) = "GL05"
comment(df$GL06) = "GL06"
comment(df$GL07) = "GL07"
comment(df$GL08) = "GL08"
comment(df$GL09) = "GL09"
comment(df$GL11) = "GL11"
comment(df$GL12) = "GL12"
comment(df$GL13) = "GL13"
comment(df$GL14) = "GL14"
comment(df$GL15) = "GL15"
comment(df$GL16) = "GL16"
comment(df$GL17) = "GL17"
comment(df$GL18) = "GL18"
comment(df$GL19) = "GL19"
comment(df$GL20_01) = "GL Interne Variable sum: glatCorrectWoLKE"
comment(df$GL21_01) = "GL Interne Variable single: GL01"
comment(df$GL21_02) = "GL Interne Variable single: GL02"
comment(df$GL21_03) = "GL Interne Variable single: GL03"
comment(df$GL21_04) = "GL Interne Variable single: GL04"
comment(df$GL21_05) = "GL Interne Variable single: GL05"
comment(df$GL21_06) = "GL Interne Variable single: GL06"
comment(df$GL21_07) = "GL Interne Variable single: GL07"
comment(df$GL21_08) = "GL Interne Variable single: GL08"
comment(df$GL21_09) = "GL Interne Variable single: GL09"
comment(df$GL21_10) = "GL Interne Variable single: GL10"
comment(df$GL21_11) = "GL Interne Variable single: GL11"
comment(df$GL21_12) = "GL Interne Variable single: GL12"
comment(df$GL21_13) = "GL Interne Variable single: GL13"
comment(df$GL21_14) = "GL Interne Variable single: GL14"
comment(df$GL21_15) = "GL Interne Variable single: GL15"
comment(df$GL21_16) = "GL Interne Variable single: GL16"
comment(df$GL21_17) = "GL Interne Variable single: GL17"
comment(df$GL21_18) = "GL Interne Variable single: GL18"
comment(df$GL21_19) = "GL Interne Variable single: GL19"
comment(
    df$NP01_01
) = "NP01: Wie wahrscheinlich ist es, dass Sie das Seminar Kommiliton*innen oder Kolleg*innen weiterempfehlen?"
comment(
    df$RE02_01
) = "Reflexion: Ich kann die Qualität von KI-generierten Inhalten kritisch beurteilen."
comment(
    df$RE02_02
) = "Reflexion: Ich bin mir den möglichen Voreingenommenheiten (Bias) von KI-Output bewusst."
comment(
    df$RE02_03
) = "Reflexion: Ich kann erkennen, ob ein System für den Bildungskontext erstellt wurde oder nicht."
comment(
    df$RE02_04
) = "Reflexion: Die Verwendung von personenbezogenen Daten birgt Risiken für die Privatsphäre von Lehrenden und Lernenden."
comment(
    df$RE02_05
) = "Reflexion: Ich kann entscheiden, ob der KI-Output in meinem Unterricht sinnvoll genutzt werden kann."
comment(
    df$RE02_06
) = "Reflexion: Ich überprüfe KI-generierte Inhalte auf ihre fachliche Richtigkeit."
comment(
    df$RE02_07
) = "Reflexion: Ich überprüfe KI-generierte Inhalte auf pädagogische Angemessenheit."
comment(
    df$RE02_08
) = "Reflexion: Ich überprüfe KI-generierte Inhalte auf sprachliche Angemessenheit."
comment(
    df$RE02_09
) = "Reflexion: Ich weiß worauf ich achten muss, wenn ich einen KI-generierten Text auf sprachliche Mittel untersuchen möchte."
comment(
    df$TP01_01
) = "Intelligent TK: Ich weiß, wie ich im Alltag mit KI-Tools umgehen kann."
comment(
    df$TP01_02
) = "Intelligent TK: Ich weiß, wie ich bestimmte Aufgaben mit KI-Tools bearbeiten kann."
comment(
    df$TP01_03
) = "Intelligent TK: Ich weiß, wie ich KI-Tools per Text oder Sprache Anweisungen geben kann."
comment(
    df$TP01_04
) = "Intelligent TK: Ich verfüge über ausreichende Kenntnisse, um KI-Tools zu verwenden."
comment(
    df$TP01_05
) = "Intelligent TK: Ich bin mit KI-Tools sowie deren technischen Möglichkeiten und Grenzen vertraut."
comment(
    df$TP02_01
) = "Intelligent TPK: Ich verstehe, welchen pädagogischen Beitrag KI-Tools in meinem Fach leisten können."
comment(
    df$TP02_02
) = "Intelligent TPK: Ich kann den Nutzen von Feedback durch KI-Tools für das Lehren und Lernen einschätzen."
comment(
    df$TP02_03
) = "Intelligent TPK: Ich kann KI-Tools auswählen, mit denen Lernende ihre Kompetenzen anwenden können."
comment(
    df$TP02_04
) = "Intelligent TPK: Ich weiß, wie ich KI-Tools einsetzen kann, um den Lernfortschritt der Lernenden zu verfolgen."
comment(
    df$TP02_05
) = "Intelligent TPK: Ich kann Rückmeldungen von KI-Tools verstehen, um unmittelbar Feedback geben zu können."
comment(
    df$TP02_06
) = "Intelligent TPK: Ich kann Benachrichtigungen von KI-Tools verstehen, um das Lernen der Lernenden zu unterstützen."
comment(
    df$TP02_07
) = "Intelligent TPK: Ich verfüge über das benötigte Wissen, um KI-Tools auszuwählen, mit deren Hilfe ich die Motivation der Lernenden fördern und aufrechterhalten kann."
comment(
    df$TP03_01
) = "Intelligent TCK: Ich kann KI-Tools verwenden, um nach Lehr-Lernmaterial für mein Fach zu suchen."
comment(
    df$TP03_02
) = "Intelligent TCK: Ich kenne KI-Tools, die von Fachleuten und Lehrkräften in meinem Fach genutzt werden."
comment(
    df$TP03_03
) = "Intelligent TCK: Ich kann KI-Tools einsetzen, um die Inhalte meines Fachs besser zu verstehen."
comment(
    df$TP03_04
) = "Intelligent TCK: Ich weiß, wie ich fachbezogene KI-Tools (z.B. intelligente Tutorsysteme für Mathematik) einsetzen kann."
comment(
    df$TP03_05
) = "Intelligent TCK: Ich kann beurteilen, inwieweit die von KI-Tools generierten Inhalte fachlich korrekt und vertrauenswürdig sind."
comment(
    df$TP04_01
) = "Intelligent TPACK: Ich weiß, wie ich in meinem Fach KI-Tools für adaptives Feedback einsetzen kann."
comment(
    df$TP04_02
) = "Intelligent TPACK: Ich weiß, wie ich in meinem Fach KI-Tools für individualisiertes Lernen einsetzen kann."
comment(
    df$TP04_03
) = "Intelligent TPACK: Ich weiß, wie ich in meinem Fach KI-Tools für unmittelbares Feedback einsetzen kann."
comment(
    df$TP04_04
) = "Intelligent TPACK: Ich kann ein Thema mithilfe von KI-Tools mit verschiedenen Lehr-Lernmethoden unterrichten."
comment(
    df$TP04_05
) = "Intelligent TPACK: Ich kann Unterricht gestalten, der meinen Fachinhalt, KI-Tools und Lehr-Lernmethoden sinnvoll miteinander verbindet."
comment(
    df$TP04_06
) = "Intelligent TPACK: Ich kann in meinem Kollegium als Multiplikator oder Multiplikatorin agieren, um KI-Tools in unser Fach zu integrieren."
comment(
    df$TP04_07
) = "Intelligent TPACK: Ich kann für mein Fach begründen, ob und wann der Einsatz spezifischer KI-Tools sinnvoll ist."
comment(
    df$TP04_08
) = "Intelligent TPACK: Ich kann für mein Fach KI-Tools auswählen, um den Lernfortschritt der Lernenden zu verfolgen."
comment(
    df$TP04_09
) = "Intelligent TPACK: Ich weiß, wie ich für mein Fach KI-Tools zur Erstellung von Lehr- Lernmaterial einsetzen kann"
comment(
    df$TP04_10
) = "Intelligent TPACK: Ich weiß, wie ich für mein Fach KI-Tools zur Erstellung von Leistungsüberprüfungen einsetzen kann"
comment(
    df$TP04_11
) = "Intelligent TPACK: Ich weiß, wie ich in meinem Fach KI-Tools zur Bewertung von (Prüfungs-) Leistungen einsetzen kann"
comment(
    df$TP04_12
) = "Intelligent TPACK: Ich weiß, wie ich in meinem Unterricht KI-Tools einsetzen kann"
comment(
    df$TP04_13
) = "Intelligent TPACK: Ich weiß, wie ich in meinem Fach (Prüfungs-) Leistungen bewerten kann, bei denen die Lernenden KI-Tools als Hilfsmittel verwendet haben könnten"
comment(
    df$TP04_14
) = "Intelligent TPACK: Ich weiß, wie mich KI-Tools in meinem Fach bei der Bewertung von (Prüfungs-) Leistungen unterstützen können"
comment(
    df$TP04_15
) = "Intelligent TPACK: Ich kann geeignete KI-Tools auswählen, um bestimmte fachliche oder didaktische Ziele zu erreichen"
comment(
    df$TP05_01
) = "Ethics: Ich kann beurteilen, inwieweit KI-Tools individuelle Unterschiede (z.B. Herkunft und Geschlecht) aller Lernenden berücksichtigen."
comment(
    df$TP05_02
) = "Ethics: Ich kann beurteilen, inwieweit KI-Tools fair gegenüber allen Lernenden sind."
comment(
    df$TP05_07
) = "Ethics: Ich kann die Begründung für jede Entscheidung, die von einem KI-Tool getroffen wird, verstehen."
comment(
    df$TP05_08
) = "Ethics: Ich kann nachvollziehen, wer die Verantwortlichen hinter der Entwicklung von KI-Tools sind."
comment(
    df$TP05_03
) = "Ethics: Ich kann Lernenden ethische Aspekte im Zusammenhang mit der Nutzung von KI-Tools vermitteln."
comment(
    df$TP05_04
) = "Ethics: Ich kann sensible Informationen (z.B. Prüfungen, Noten und weitere persönliche Daten der Lernenden) vor KI-Tools schützen."
comment(
    df$TP05_05
) = "Ethics: Ich kann den Lernenden beibringen, wie sie sicher und verantwortungsvoll mit KI-Tools lernen können."
comment(
    df$TP05_06
) = "Ethics: Ich kann beurteilen, inwieweit KI-Tools gesellschaftliche Vorurteile reproduzieren."
comment(df$TIME001) = "Verweildauer Seite 1"
comment(df$TIME002) = "Verweildauer Seite 2"
comment(df$TIME003) = "Verweildauer Seite 3"
comment(df$TIME004) = "Verweildauer Seite 4"
comment(df$TIME005) = "Verweildauer Seite 5"
comment(df$TIME006) = "Verweildauer Seite 6"
comment(df$TIME007) = "Verweildauer Seite 7"
comment(df$TIME008) = "Verweildauer Seite 8"
comment(df$TIME009) = "Verweildauer Seite 9"
comment(df$TIME010) = "Verweildauer Seite 10"
comment(df$TIME011) = "Verweildauer Seite 11"
comment(df$TIME012) = "Verweildauer Seite 12"
comment(df$TIME013) = "Verweildauer Seite 13"
comment(df$TIME014) = "Verweildauer Seite 14"
comment(df$TIME016) = "Verweildauer Seite 16"
comment(df$TIME017) = "Verweildauer Seite 17"
comment(df$TIME018) = "Verweildauer Seite 18"
comment(df$TIME019) = "Verweildauer Seite 19"
comment(df$TIME020) = "Verweildauer Seite 20"
comment(df$TIME021) = "Verweildauer Seite 21"
comment(df$TIME022) = "Verweildauer Seite 22"
comment(df$TIME024) = "Verweildauer Seite 24"
comment(df$TIME025) = "Verweildauer Seite 25"
comment(df$TIME026) = "Verweildauer Seite 26"
comment(df$TIME027) = "Verweildauer Seite 27"
comment(df$TIME028) = "Verweildauer Seite 28"
comment(df$TIME029) = "Verweildauer Seite 29"
comment(df$TIME030) = "Verweildauer Seite 30"
comment(df$TIME031) = "Verweildauer Seite 31"
comment(df$TIME032) = "Verweildauer Seite 32"
comment(df$TIME033) = "Verweildauer Seite 33"
comment(df$TIME034) = "Verweildauer Seite 34"
comment(df$TIME035) = "Verweildauer Seite 35"
comment(df$TIME036) = "Verweildauer Seite 36"
comment(df$TIME037) = "Verweildauer Seite 37"
comment(df$TIME038) = "Verweildauer Seite 38"
comment(df$TIME039) = "Verweildauer Seite 39"
comment(df$TIME040) = "Verweildauer Seite 40"
comment(df$TIME041) = "Verweildauer Seite 41"
comment(df$TIME042) = "Verweildauer Seite 42"
comment(df$TIME043) = "Verweildauer Seite 43"
comment(df$TIME044) = "Verweildauer Seite 44"
comment(df$TIME045) = "Verweildauer Seite 45"
comment(df$TIME046) = "Verweildauer Seite 46"
comment(df$TIME047) = "Verweildauer Seite 47"
comment(df$TIME048) = "Verweildauer Seite 48"
comment(df$TIME049) = "Verweildauer Seite 49"
comment(df$TIME051) = "Verweildauer Seite 51"
comment(df$TIME052) = "Verweildauer Seite 52"
comment(df$TIME053) = "Verweildauer Seite 53"
comment(df$TIME054) = "Verweildauer Seite 54"
comment(df$TIME055) = "Verweildauer Seite 55"
comment(df$TIME056) = "Verweildauer Seite 56"
comment(df$TIME057) = "Verweildauer Seite 57"
comment(df$TIME058) = "Verweildauer Seite 58"
comment(df$TIME059) = "Verweildauer Seite 59"
comment(df$TIME060) = "Verweildauer Seite 60"
comment(df$TIME_SUM) = "Verweildauer gesamt (ohne Ausreißer)"
comment(
    df$MAILSENT
) = "Versandzeitpunkt der Einladungsmail (nur für nicht-anonyme Adressaten)"
comment(
    df$LASTDATA
) = "Zeitpunkt als der Datensatz das letzte mal geändert wurde"
comment(df$STATUS) = "Status des Interviews (Markierung)"
comment(
    df$FINISHED
) = "Wurde die Befragung abgeschlossen (letzte Seite erreicht)?"
comment(
    df$Q_VIEWER
) = "Hat der Teilnehmer den Fragebogen nur angesehen, ohne die Pflichtfragen zu beantworten?"
comment(df$LASTPAGE) = "Seite, die der Teilnehmer zuletzt bearbeitet hat"
comment(df$MAXPAGE) = "Letzte Seite, die im Fragebogen bearbeitet wurde"
comment(df$MISSING) = "Anteil fehlender Antworten in Prozent"
comment(df$MISSREL) = "Anteil fehlender Antworten (gewichtet nach Relevanz)"
comment(df$TIME_RSI) = "Ausfüll-Geschwindigkeit (relativ)"


# Assure that the comments are retained in subsets
as.data.frame.avector = as.data.frame.vector
`[.avector` <- function(x, i, ...) {
    r <- NextMethod("[")
    mostattributes(r) <- attributes(x)
    r
}
df_tmp = data.frame(
    lapply(df, function(x) {
        structure(x, class = c("avector", class(x)))
    })
)
mostattributes(df_tmp) = attributes(df)
df = df_tmp
rm(df_tmp)
