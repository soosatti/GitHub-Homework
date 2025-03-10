# Github-Homework
Devops training 2024 - 9. homework


Created by Soós Attila - 2025.03.10.

## Leírás  
A házi feladat szerint létrehozott Github Action Workflow segítségével a gyökér könyvtárban található Dockerfile-ból felépül egy image, amely feltöltődik a Dockerhub-ra, homework:latest néven.
A docker container egy nginx webszervert futtat, a 80-as porton a futtató hoston elérhető, megjeleníti a kiírás szerinti szöveget, mint main-page.


A feladat szerinti konténer a Dockerhub-on elérhető: [soosatti/homework](https://hub.docker.com/repository/docker/soosatti/homework/general)

Használata:  ___docker pull soosatti/homework___


A feladat előírása szerint Workflow/Actions készült a Github-on. Itt elérhető: [Github-Homework](https://github.com/soosatti/Github-Homework/)

A projekt tartalma:
  * `Dockerfile`  - ez a docker file definiálja a konténerünket, amiben nginx fog futni
  * `index.html`  - ez tartalmazza a main-page szerint kiírandó üzenetet
  * `nginx.conf`  - nginx konfigurációs fájl, alaphelyzetben van, ezt lehet testreszabni, default port: 80
  * `README.md`   - a kiírás szerint ez a dokumentációs fájl
  
  * ./workflows/docker-image.yml - ez konfigurálja a Github Actions folyamatot

 

