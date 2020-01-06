env:
	virtualenv -p `which python3` env
	env/bin/pip install -r requirements.txt
	env/bin/pip install -r test_requirements.txt
	env/bin/python setup.py develop

upload:
	env/bin/python setup.py sdist upload -r pypi
	
docker:
	docker build -f docker/cli/Dockerfile -t pyhydroquebec:3.0 .
