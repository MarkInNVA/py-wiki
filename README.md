[![Python app with Github Actions](https://github.com/MarkInNVA/py-wiki/actions/workflows/makefile.yml/badge.svg)](https://github.com/MarkInNVA/py-wiki/actions/workflows/makefile.yml)

# py-wiki  
  idea from: 

    https://www.youtube.com/watch?v=YB-_FsssK8E
    
    https://github.com/noahgift/python-for-devops-april-2022

mess with Wikipedia via Python

1: Create a Python Virtual Environment python3 -m venv ~/.venv or virtualenv ~/.venv
2: Create empty files: Makefile, requirements.txt, main.py, Dockerfile, mylib/__init__.py
3: Populate Makefile
4: Setup Continuous Integration, i.e. check code for issues like lint errors
5: Build cli using Python Fire library  ./cli-fire.py --help, cli-fire.py --length 10  remember to chmod +x filename
