# Github-Homework
Devops training 2024 - 9. homework


Created by Soós Attila - 2025.03.10.

## Leírás  
A házi feladat szerint létrehozott Github Action Workflow segítségével a gyökér könyvtárban található Dockerfile-ból felépül egy image, amely feltöltődik a Dockerhub-ra, homework:latest néven.
A docker container egy nginx webszervert futtat, a 80-as porton a futtató hoston elérhető, megjeleníti a kiírás szerinti szöveget, mint main-page.


A feladat szerinti konténer a Dockerhub-on elérhető: [soosatti/homework](https://hub.docker.com/repository/docker/soosatti/homework/general)

A feladat előírása szerint Workflow/Actions készült a Github-on. Itt elérhető: [Github-Homework](https://github.com/soosatti/Github-Homework/)

A projekt tartalma:
  * `Dockerfile`  - ez a docker file definiálja a konténerünket, amiben nginx fog futni
  * `index.html`  - ez tartalmazza a main-page szerint kiírandó üzenetet
  * `nginx.conf`  - nginx konfigurációs fájl, alaphelyzetben van, ezt lehet testreszabni, default port: 80
  * `README.md`   - a kiírás szerint ez a dokumentációs fájl
  * `./workflows/docker-image.yml` - ez konfigurálja a Github Actions folyamatot

### A Github Workflow leírása
 * a main brachet használja
 * ubuntu-latest gépet fog létrehozni
 * repo checkout
 * Belép a Dockerhub-ra, a felhasználó név és secret key a Github-ban van letárolva
 * Felépíti a Dockjerfile alapján a konténert
 * Feltölti a Dockehub-ra a soosatti/homewrok-be, latest tag-gel

### Használata:  
```bash
sudo docker pull soosatti/homework
sudo docker run -d -p 80:80 soosatti/homework:latest
```
   
## Ellenőrzés

A felhasználó gépén a http://localhost weboldalnak a következő kimenetet kell mutatnia:
 
```
DevOps homework by: Soós Attila
```
