# Hotel Manager

Hotel Manager es un REST API para la gestion de hoteles, permite unicamente la creación de hoteles, acomodaciones de habitaciones dada una información inicial para las ciudades, habitaciones y acomodaciones.

Acontinuación se encuentra la configuración el api localmente.

**Nota: En las carpetas db y collection se encuentran el dump de la base de datos y la colección de postman**

## requerimientos
- php8.2
- composer
- postgres

## setting up

Primero se debe clonar el repositorio con el siguiente comando:

```sh
git clone https://github.com/nasquevedo/hotel-manager-api.git
```
Una vez clonado el repositorio, moverse a la carpeta creada:

```sh
cd hotel-manager-api
```

Estando ya en el repositorio crear un arhivo .env con base a .env.example, puede abrir el proyecto desde la terminal en la raiz usando:
```sh
code .
```

Luego, instalar las dependencias:

```sh
composer install
```

Al finalizar, instalar las migraciones en la base de datos

```sh
php artisan migrate:install
```

Seguido de esto correr la migration

```sh
php artisan migrate
```
Por ultimo generar una key para la app

```sh
php artisan key:generate
```
Finalmente, arrance la aplicación con el siguiente comando
```sh
php artisan serve
```

visitar [http://localhost:8000/](http://localhost:8000/)

## Seeders

Una vez se haya instalado y migrado la base de datos, se pueden crear los datos iniciales para las tablas ciudades, habitaciones y acomodaciones, corriendo el siguiente comando

```sh
php artisan db:seed
```
## Rutas
Acontinuación se describen las rutas disponibles en el API con sus respectivos metodos

Obtiene todos los hoteles
[GET] http://localhost:8000/api/v1/hotels

Crea un nuevo hotel
[POST] http://localhost:8000/api/v1/hotels/create

Obtiene el hotel por su id
[GET] http://localhost:8000/api/v1/hotels/{id}

Actualiza un hotel por medio de su id
[PUT] http://localhost:8000/api/v1/hotels/update/{id}

Elimina un hotel por medio en su id
[DELETE] http://localhost:8000/api/v1/hotels/delete/{id}

Obtiene todas las ciudades
[GET] http://localhost:8000/api/v1/cities

Obtiene los tipos de habitaciones (Estandar, Junior, Suite)
[GET] http://localhost:8000/api/v1/rooms

Obtiene la acomodación por habitacion
[GET] http://localhost:8000/api/v1/accomodations/{room_id}

Crea una nueva acomodacion para un hotel
[POST] http://localhost:8000/api/v1/hotel/rooms/create

Obtiene todas las acomodaciones existentes para todos los hoteles relacionados
[GET] http://localhost:8000/api/v1/hotel/rooms

Obtiene la acomodación por hotel por medio de su id
[GET] http://localhost:8000/api/v1/hotel/rooms/{id}

Actualiza la acomodacion por hotel por medio de su id
[PUT] http://localhost:8000/api/v1/hotel/rooms/update/{id}

Elimina la relacion de la acomodacion con el hotel por medio de su id
[DELETE] http://localhost:8000/api/v1/hotel/rooms/delete/{id}

## Testing
Correr el siguiente comando para correr todos los test

```sh
php artisan test
```
