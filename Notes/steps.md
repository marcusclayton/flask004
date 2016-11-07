#Created virtual environment
cd C:\gitrepos\flask004
python.exe -m venv flask
.\flask\Scripts\pip.exe install flask
.\flask\Scripts\pip.exe install flask-httpauth

#generate requirements for future use
.\flask004\flask\Scripts\pip.exe freeze > C:\GitRepos\flask004\requirements.txt
#using requirements
.\path\to\pip install -r .\path\to\requirements.txt
cd flask

#created app.py: https://blog.miguelgrinberg.com/post/designing-a-restful-api-with-python-and-flask
#and app2.py: http://blog.luisrei.com/articles/flaskrest.html
#to execute
.\Scripts\python.exe .\app.py
.\Scripts\python.exe .\app2.py

tested output
open http://localhost:5000 #for app.py and app2.py

#web request: for app2.py
Invoke-RestMethod -Method get -Uri http://localhost:5000/
Invoke-RestMethod -Method get -Uri http://localhost:5000/articles
Invoke-RestMethod -Method get -Uri http://localhost:5000/articles/1