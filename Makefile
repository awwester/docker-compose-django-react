setup:
	cp api/.env.example api/.env
	cp api/api/api/settings/local_example.py api/api/api/settings/local.py

# When django-admin creates files (makemigrations, startapp, etc) we need to own
# the files to modify them.
chown:
	sudo chown -R ${USER}:${USER} .

migrate:
	docker-compose exec django ./api/manage.py migrate

makemigrations:
	docker-compose exec django ./api/manage.py makemigrations
	make chown

shell:
	docker-compose exec django ./api/manage.py shell

test:
	docker-compose exec django ./api/manage.py test --noinput
