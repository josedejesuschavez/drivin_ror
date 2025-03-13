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

El modelo Route representa una ruta en la aplicación. Cada ruta puede tener múltiples viajes (Trip). Aquí están los campos del modelo

[["id", :integer], 
 ["name", :string],
 ["description", :text],
 ["created_at", :datetime],
 ["updated_at", :datetime]]

Trip

El modelo Trip representa un viaje asociado a una ruta. Cada viaje puede tener múltiples entregas (Delivery)

[["id", :integer],
 ["route_id", :integer],
 ["departure_time", :datetime],
 ["arrival_time", :datetime],
 ["created_at", :datetime],
 ["updated_at", :datetime]]

Delivery

El modelo Delivery representa una entrega asociada a un viaje.

[["id", :integer],
 ["trip_id", :integer],
 ["delivery_type", :string],
 ["recipient", :string],
 ["address", :string],
 ["status", :string],
 ["created_at", :datetime],
 ["updated_at", :datetime]]
```


## Controladores

Se agrego documentacion en postman, el cual es el archivo que se encuentra en raiz con el nombre de Drivin.postman_collection.json

# Create Route

```sh
POST http://127.0.0.1:3000/routes
Data {
  "route": {
    "name": "Ruta 1", "description": "Ruta 1"
  }
}
```

# Create Trip

```sh
POST http://127.0.0.1:3000/trips
DATA {
  "trip": {
    "route_id": 1,
    "departure_time": "2025-03-12",
    "arrival_time": "2025-03-12"
  }
}
```

# Create Delivery

```sh
POST http://127.0.0.1:3000/deliveries
DATA {
  "delivery": {
    "trip_id": 1,
    "delivery_type": "Entrega",
    "recipient": "Juan Pérez",
    "address": "Av. Siempre Viva 742",
    "status": "Pendiente"
  }
}
```

# Get Route By Id

```sh
GET http://127.0.0.1:3000/routes/1

RESPONSE {
    "id": 1,
    "name": "Ruta 1",
    "description": null,
    "created_at": "2025-03-13T02:25:23.346Z",
    "updated_at": "2025-03-13T02:25:23.346Z",
    "trips": [
        {
            "id": 1,
            "route_id": 1,
            "departure_time": "2025-03-12T00:00:00.000Z",
            "arrival_time": "2025-03-12T00:00:00.000Z",
            "created_at": "2025-03-13T03:24:55.047Z",
            "updated_at": "2025-03-13T03:24:55.047Z",
            "deliveries": [
                {
                    "id": 1,
                    "trip_id": 1,
                    "delivery_type": "Entrega",
                    "recipient": "Juan Pérez",
                    "address": "Av. Siempre Viva 742",
                    "status": "Pendiente",
                    "created_at": "2025-03-13T03:26:04.267Z",
                    "updated_at": "2025-03-13T03:26:04.267Z"
                }
            ]
        }
    ]
}
```