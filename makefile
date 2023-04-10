include .env

install:
	python3 -m pip install --upgrade pip
	python3 -m pip install -r requirements.txt
	python3 -m pip install --upgrade prodigy -f "https://${PRODIGY_KEY}@download.prodi.gy"

download:
	git clone https://github.com/alireza116/visualstudy.git
	mv visualstudy/public/* flask-app/static/img
	rm -rf visualstudy

clean:
	rm -rf flask-app/static/img/
	rm -rf base64_images