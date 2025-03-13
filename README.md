# Drivin ROR

Esta es una aplicación Ruby on Rails para gestionar rutas y viajes.

## Requisitos

- Ruby 3.4.2
- Rails 8.0.2

## Configuración

1. Clona el repositorio:

   ```sh
   git clone https://github.com/tu_usuario/drivin_ror.git
   cd drivin_ror
   ```

2. Instalar las dependencias

```sh
bundle install
```

3. Configurar la base de datos

```sh
rails db:create
rails db:migrate
```

4. Ejecutar proyecto

```sh
rails server
```

5. Ejecutar tests

```sh
rails test
```

## Modelos

```sh
Route
[["id", :integer], 
 ["name", :string],
 ["description", :text],
 ["created_at", :datetime],
 ["updated_at", :datetime]]

Trip
[["id", :integer],
 ["route_id", :integer],
 ["departure_time", :datetime],
 ["arrival_time", :datetime],
 ["created_at", :datetime],
 ["updated_at", :datetime]]

Delivery
[["id", :integer],
 ["trip_id", :integer],
 ["delivery_type", :string],
 ["recipient", :string],
 ["address", :string],
 ["status", :string],
 ["created_at", :datetime],
 ["updated_at", :datetime]]
```