
# 🚗 Análisis de Desempeño de Ventas y Flota – Proyecto Simulado para Stellantis

Este proyecto simula una solución de Business Intelligence implementada para Stellantis, con el objetivo de monitorear el desempeño comercial de su red de concesionarios, analizar su flota de vehículos y segmentar sus clientes por región.

## 🧱 Tecnologías utilizadas

- DBT Cloud (modelado, tests, documentación, versionado)
- Snowflake (almacenamiento y ejecución de SQL)
- GitHub (control de versiones y entrega)
- Python + Faker (para generación de datasets sintéticos)

## 📁 Estructura del Proyecto

```bash
dbt_stellantis/
├── models/
│   ├── staging/
│   │   ├── stg_sales.sql
│   │   ├── stg_clients.sql
│   │   └── stg_fleet.sql
│   ├── intermediate/
│   │   └── int_sales_with_clients.sql
│   ├── marts/
│   │   └── core/
│   │       ├── fct_sales.sql
│   │       ├── fct_fleet_usage.sql
│   │       └── dim_customer.sql
├── snapshots/
│   └── snap_customers.sql
├── macros/
│   └── generate_regional_filters.sql
├── seeds/
│   └── regions.csv
├── dbt_project.yml
├── packages.yml
└── README.md
```

## 🔄 Flujo de Transformación

1. **Staging**  
   Se crean vistas limpias y estandarizadas desde tablas crudas cargadas en Snowflake.

2. **Intermediate**  
   Se realiza enriquecimiento de datos y joins para construir métricas intermedias.

3. **Marts (core)**  
   Modelos finales listos para consumo por herramientas de BI (como Power BI, Tableau o Streamlit).

4. **Snapshots**  
   Seguimiento de cambios históricos en la información de clientes.

5. **Tests**  
   Se validan unicidad, nulos y relaciones entre claves primarias y foráneas.

6. **Macros personalizadas**  
   Por ejemplo, generación de filtros dinámicos por región.

## 📊 Datos simulados

- `sales_data.csv` — Ventas por concesionario
- `clients_data.csv` — Clientes segmentados por región
- `fleet_data.csv` — Estado y uso de vehículos

Los datos fueron generados con Python y Faker para representar una situación realista de negocio.

## 🧪 Ejecución DBT

```bash
dbt run
dbt test
dbt snapshot
dbt docs generate
dbt docs serve
```

## 📚 Documentación generada

DBT genera una interfaz web navegable con la documentación y linaje de modelos. Se puede activar con:

```bash
dbt docs serve
```


