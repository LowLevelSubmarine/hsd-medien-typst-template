Ein typst Template für das Erstellen wissenschaftlicher Arbeiten an der Hochschule Düsseldorf im Fachbereich Medien

# Verwendung
1. **In einem Git-Repository:** Führe
`git submodule add https://github.com/LowLevelSubmarine/hsd-medien-typst-template`
im Repository Wurzelverzeichnis aus \
**Oder außerhalb eines Git-Repository:** Führe
`git clone https://github.com/LowLevelSubmarine/hsd-medien-typst-template` im Projekt Wurzelverzeichniss aus
2. Erstelle eine Typst-Datei mit folgendem Inhalt
```
#import "../hsd-medien-typst-template/template.typ": hsd

#show: doc => hsd(
  title: [Mustertitel],
  author: "Max Mustermann",
  type_of_work: "Bachelorarbeit",
  degree_program: "B.Sc. Medieninformatik",
  time_of_submission: "Oktober 2025",
  examiners: ("Prof. Dr. Maxime Musterfrau",),
  doc,
)
```
3. Verfasse wie gewohnt dein Typst-Dokument

# Disclaimer
Der Autor und sämtliche Beteiligte übernehmen keine Verantwortung für die korrektheit des Templates. Nutzer sind dazu verpflichtet die Tauglichkeit des Templates für den jeweiligen Anwendungszweck in eigenverantwortung zu prüfen.
