up:
	./vendor/bin/sail up -d

down:
	./vendor/bin/sail down

restart:
	./vendor/bin/sail restart

shell:
	./vendor/bin/sail shell

artisan:
	./vendor/bin/sail artisan $(filter-out $@,$(MAKECMDGOALS))
	@:

composer:
	./vendor/bin/sail composer $(filter-out $@,$(MAKECMDGOALS))
	@:

npm:
	./vendor/bin/sail npm $(filter-out $@,$(MAKECMDGOALS))
	@:

migrate:
	./vendor/bin/sail artisan migrate

fresh:
	./vendor/bin/sail artisan migrate:fresh --seed

test:
	./vendor/bin/sail artisan test

logs:
	./vendor/bin/sail logs -f

build:
	./vendor/bin/sail npm run build

dev:
	./vendor/bin/sail npm run dev

%:
	@:
