# Plantilla de Pipeline de Datos
Esta plantilla proporciona una estructura modular para proyectos de análisis de datos en Python o R. Permite automatizar la importación, limpieza, transformación, visualización y generación de reportes.

## Estructura de archivos
```
📁 data_raw               # Datos originales sin procesar
📁 data_cleaned           # Datos limpios y listos para análisis
📁 reports                # Reportes y visualizaciones generadas
📁 scripts
    📚 01_import_data.py         # Importación de datos
    📚 02_clean_data.py          # Limpieza de datos
    📚 03_feature_engineering.py # Creación de variables
    📚 04_export_data.py         # Guardado del dataset final
    📚 05_visualization.py       # Generación de gráficos
    📚 06_generate_report.py     # Creación de reportes
📚 main_pipeline.py       # Script maestro que ejecuta todo
📚 README.md              # Documentación del proyecto
📚 requirements.txt       # Dependencias necesarias
```

### Ejemplo de archivo en /scripts
```
import pandas as pd

def load_data(file_path):
    df = pd.read_csv(file_path)
    return df

if __name__ == "__main__":
    df = load_data("data_raw/data.csv")
    print(df.head())
```

### Ejemplo de main_pipeline.py
```
from scripts import import_data, clean_data, feature_engineering, export_data
import pandas as pd

# 1. Importar datos
df = import_data.load_data("data_raw/data.csv")

# 2. Limpiar datos
df_clean = clean_data.clean_data(df)

# 3. Agregar variables nuevas
df_final = feature_engineering.add_features(df_clean)

# Resto de etapas....

# 4. Guardar datos finales
export_data.save_final_data(df_final, "data_cleaned/entregas_ba_ready.csv")

print("✅ Pipeline ejecutado con éxito. Datos listos para análisis.")
```


## Ejemplo de Instalación y Uso con Python
Con un proyecto terminado...

1. Instalar dependencias
```
pip install -r requirements.txt
```

2.Ejecutar el pipeline completo
```
python main_pipeline.py
```

## Salida Esperada
- data_cleaned/ ➔ Contiene los datos procesados y listos para análisis.
- reports/ ➔ Carpeta con los reportes y visualizaciones generadas en HTML/PDF.
