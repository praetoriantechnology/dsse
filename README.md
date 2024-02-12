Decopuled Support Services Environment
======================================

Set of containers which support backend of the application for local development.
You are not forced to use this. It is merely here to help you in everyday work.
Prepares: `MariaDB`, `Mercure`, `BeanstalkD` and `nginx` to serve assets.

Default `.env` files of both backend and frontend repositories are configured
to use this environment.

The idea of this being decoupled from the main apps is to give you freedom of
development ways: if you already have installed MySQL or Redis you may disable
them from this docker compose and use own instances.

# To build:

1. clone
2. override .env with .env.local if needed
2. run `docker compose up -d`

You may also load default database and assets using: `install-defaults.sh`.
Yet be aware that these may be outdated.

# Where are assets stored?

By default they are stored in here, in folder `assets` but you may override it via
.env.local. **Be sure to point your backend to the same directory!**

# Default ports?

* ASSETS_PORT: 5000
* DB_PORT: 5001
* MERCURE_PORT: 5002
* BEANSTALKD_PORT: 5003
* REDIS_PORT: 5004

You may now enter MariaDB using any tool like HeidiSQL directly from your machine.
Root's password is defined in `docker-compose.yaml` as `devroot`.

# How to run backend or frontend?

Refer to README.md files of these repositories.