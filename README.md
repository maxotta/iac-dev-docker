# iac-dev-docker
IaC development environment

[![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]

Containerized development environment for Infrastructure as Code (IaC) projects.

```
docker build . -t iac-dev-env
docker run -d --name dev-1 iac-dev-env
docker exec -it dev-1 bash
docker stop dev-1
docker rm dev-1
```

---

This work is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg
