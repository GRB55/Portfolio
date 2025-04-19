# Predicción de Cargos Médicos - Insurance Dataset

Este proyecto utiliza el dataset `insurance.csv` para explorar, analizar y construir un modelo de regresión lineal que predice los costos médicos de pacientes en función de diversas características demográficas y de estilo de vida.
---

## Descripción del Proyecto

El objetivo principal de este proyecto es desarrollar un modelo de regresión lineal que pueda predecir los cargos médicos basándose en factores como la edad, el índice de masa corporal (BMI), el número de hijos, el hábito de fumar, el género y la región de residencia. 

A través de este proyecto se demuestran habilidades en análisis exploratorio de datos (EDA), limpieza de datos, visualización y modelado predictivo.

---

## Dataset

El dataset contiene la siguiente información:
- **age**: Edad del paciente.
- **sex**: Género (masculino o femenino).
- **bmi**: Índice de masa corporal.
- **children**: Número de hijos dependientes.
- **smoker**: Si el paciente es fumador o no.
- **region**: Región geográfica.
- **charges**: Costos médicos (variable objetivo).

### Resumen
- **Filas**: 1,338
- **Columnas**: 7

---

## Análisis Exploratorio de Datos (EDA)

1. **Categorización de Variables**: Identificación de variables numéricas y categóricas.
2. **Visualización de Distribuciones**: 
   - Histogramas y boxplots para analizar la distribución y detectar outliers.
   - Gráficos de dispersión para observar relaciones entre las variables.
3. **Matriz de Correlación**:
   - Exploración de relaciones entre variables numéricas.
   - Se identificaron fuertes correlaciones entre fumar y los cargos médicos.

---

## Modelado

1. **Preparación de Datos**:
   - Se codificaron las variables categóricas `smoker` y `sex` a valores binarios.
   - División del dataset en conjuntos de entrenamiento (70%) y prueba (30%).

2. **Regresión Lineal**:
   - Modelo entrenado utilizando la función `lm()` en R.
   - Métricas principales: R², Mean Absolute Error (MAE).

3. **Visualización del Modelo**:
   - Gráfico comparativo entre predicciones y valores reales.

---

## Resultados

- **R² del modelo**: 76.47
- **MAE**: 4481.268

El modelo puede realizar predicciones razonablemente precisas. Por ejemplo, se estimó que un paciente masculino de 21 años, no fumador, sin hijos y con un BMI de 25, tendría un costo médico aproximado de $809.37.

---

## Requisitos

### Librerías Utilizadas
- tidyverse
- plotly
- broom
- corrplot
- Metrics
- cowplot
- caret

---

## Ejecución

1. Cargar el archivo `insurance.csv`.
2. Ejecutar el script R proporcionado en el archivo `REGRESION LINEAL.Rmd`.
3. Visualizar las métricas del modelo y los gráficos generados.
4. Introducir nuevos datos para realizar predicciones personalizadas.

---

## Contribuciones

Si deseas contribuir, reportar errores o realizar sugerencias, puedes abrir un issue o enviar un pull request.

---
