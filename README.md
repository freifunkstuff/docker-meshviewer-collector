# Dockerisierter Meshviewer-Collector

Ein kleines Programm (https://github.com/genofire/meshviewer-collector), welches weitere Karten einsammelt und an Yanic weiterleitet. Wird verwendet, um Libremesh-Nodes in die Karte einzubinden.

Umgebungsvariablen:

* `REMOTE_URL` (benötigt): URL einer Meshviewer-Karte, welche abgerufen werden soll
* `REMOTE_NAME` (benötigt): Name der Remote-Domain (z.B. `meshkit`)
* `YANIC_TYPE` (benötigt): Siehe https://github.com/FreifunkBremen/yanic/blob/04bcaceb2c874e16e8366a6f815d6429486a3684/docs/docs_configuration.md#type (z.B. `udp6`)
* `YANIC_ADDRESS` (benötigt): Adresse des Yanic-Dienstes
