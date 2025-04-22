# 🚗 Predicción del Precio de Automóviles Usados: Una Aproximación con Regresión Lineal

## 🔄 Introducción
Este proyecto busca predecir los precios de automóviles usados utilizando técnicas de Machine Learning. Para ello, se implementa un modelo de regresión lineal entrenado con un conjunto de datos que contiene información clave sobre los automóviles, como marca, modelo, año de fabricación, tipo de combustible, entre otros. El objetivo es proporcionar una herramienta predictiva que pueda ser utilizada para evaluar precios en el mercado de automóviles.

## 📝 Dataset
**🔍 Fuente:** https://www.kaggle.com/datasets/mustafaoz158/car-price

**📊 Descripción de las columnas:**
- `Brand`: Marca del automóvil.
- `Model`: Modelo del automóvil.
- `Year`: Año de fabricación.
- `Engine_Size`: Tamaño del motor (en litros).
- `Fuel_Type`: Tipo de combustible (Diesel, Híbrido, Eléctrico, etc.).
- `Transmission`: Tipo de transmisión (Manual, Automática, Semi-Automática).
- `Mileage`: Kilometraje (en kilómetros).
- `Doors`: Número de puertas.
- `Owner_Count`: Cantidad de dueños previos.
- `Price`: Precio del automóvil (en dólares).

## 🎯 Metodología
1. **💡 Carga de Datos:**
   - Lectura del archivo CSV y revisión de su estructura.
2. **🎨 Análisis Exploratorio de Datos (EDA):**
   - Visualización de la distribución de las variables.
   - Identificación de correlaciones.
3. **🤷‍♂️ Procesamiento de Datos:**
   - Estandarización de variables numéricas.
   - Codificación de variables categóricas.
4. **🏋️‍♂️ Entrenamiento del Modelo:**
   - Implementación de regresión lineal.
   - Evaluación mediante validación cruzada.
5. **🔢 Evaluación del Modelo:**
   - Métricas como R² y error medio absoluto (MAE).

## 🏆 Resultados
- **Métrica principal:** El modelo logró un R² de 0.9994 y un MAE de 20.589.
- **Conclusión:** La regresión lineal proporciona una estimación adecuada para predecir precios.

## 🔧 Requisitos
- Python 3.11+, Scikit-Learn 1.6+, XGBoost 2.1.4+.
- Librerías: pandas, numpy, matplotlib, seaborn, scikit-learn, xgboost

## 🔁 Instrucciones para ejecutar el proyecto
1. Clonar este repositorio.
2. Instalar las dependencias necesarias con el siguiente comando:
   ```bash
   pip install pandas numpy matplotlib seaborn scikit-learn xgboost
   ```
3. Ejecutar el archivo Jupyter Notebook `REGRESIÓN LINEAL PRECIO DE AUTOS.ipynb`.

---

# 🚗 Predicting Used Car Prices: A Linear Regression Approach

## 🔄 Introduction
This project aims to predict used car prices using Machine Learning techniques. A linear regression model is trained with a dataset containing key information about cars, such as brand, model, manufacturing year, fuel type, and more. The goal is to provide a predictive tool for assessing car market prices.

## 📝 Dataset
**🔍 Source:** https://www.kaggle.com/datasets/mustafaoz158/car-price

**📊 Column Description:**
- `Brand`: Car brand.
- `Model`: Car model.
- `Year`: Manufacturing year.
- `Engine_Size`: Engine size (in liters).
- `Fuel_Type`: Fuel type (Diesel, Hybrid, Electric, etc.).
- `Transmission`: Transmission type (Manual, Automatic, Semi-Automatic).
- `Mileage`: Mileage (in kilometers).
- `Doors`: Number of doors.
- `Owner_Count`: Number of previous owners.
- `Price`: Car price (in USD).

## 🎯 Methodology
1. **💡 Data Loading:**
   - Reading the CSV file and reviewing its structure.
2. **🎨 Exploratory Data Analysis (EDA):**
   - Visualizing variable distributions.
   - Identifying correlations.
3. **🤷‍♂️ Data Processing:**
   - Standardizing numerical variables.
   - Encoding categorical variables.
4. **🏋️‍♂️ Model Training:**
   - Implementing linear regression.
   - Evaluating with cross-validation.
5. **🔢 Model Evaluation:**
   - Metrics such as R² and Mean Absolute Error (MAE).

## 🏆 Results
- **Key Metric:** The model achieved an R² of 0.9994 and an MAE of 20.589.
- **Conclusion:** Linear regression provides a reasonable estimate for predicting prices.
## 🔧 Requirements
- Python 3.11+, Scikit-Learn 1.6+, XGBoost 2.1.4+.
- Libraries: pandas, numpy, matplotlib, seaborn, scikit-learn, xgboost

## 🔁 Instructions to Run the Project
1. Clone this repository.
2. Install the necessary dependencies using:
   ```bash
   pip install pandas numpy matplotlib seaborn scikit-learn xgboost
   ```
3. Run the Jupyter Notebook file `REGRESIÓN LINEAL PRECIO DE AUTOS.ipynb`. 
