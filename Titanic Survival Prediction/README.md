# 🚢 **Predicción de Supervivencia en el Titanic**  
### 🌟 Proyecto de Clasificación con Python  

Este proyecto utiliza el famoso dataset del Titanic para predecir la supervivencia de los pasajeros mediante algoritmos de clasificación.  

---

## 🔍 **Descripción del Proyecto**  
El análisis tiene como objetivo explorar, preprocesar y construir modelos de clasificación para predecir si un pasajero sobrevivió o no al desastre del Titanic. Se emplean herramientas como Python, bibliotecas de análisis de datos y aprendizaje automático, y técnicas de visualización.  

---

## 🗂️ **Estructura del Proyecto**  
1. **Exploración de Datos (EDA)**  
   - 📊 Análisis estadístico y visualización de datos.  
   - 🕵️‍♂️ Identificación de valores nulos, duplicados y outliers.  
   - 🔗 Relación entre variables y la variable objetivo (`Survived`).  

2. **Preprocesamiento de Datos**  
   - 🛠️ Imputación de valores faltantes (mediana para numéricos, moda para categóricos).  
   - 🗑️ Eliminación de columnas irrelevantes como `PassengerId`, `Name`, `Ticket` y `Cabin`.  
   - 📏 Escalado de variables numéricas y codificación de variables categóricas (`Sex` y `Embarked`).  

3. **Modelado y Evaluación**  
   - ⚙️ **Modelos utilizados:**  
     - 🌲 Árbol de Decisión (DecisionTreeClassifier)  
     - 📉 Naive Bayes Gaussiano (GaussianNB)  
     - 🤝 K-Vecinos Más Cercanos (KNeighborsClassifier)  
     - 🚀 XGBoost (XGBClassifier)  
   - 🧮 **Métricas de evaluación:**  
     - 📃 Reporte de clasificación  
     - 🗂️ Matriz de confusión  
     - 📊 Precisión, sensibilidad y F1-Score  
 
## 📌 **Conclusiones**  

1. **Impacto del Género en la Supervivencia**  
   - 👩‍🦱 **Las mujeres tienen una tasa de supervivencia más alta** que los hombres. Esto se debe probablemente a la política de evacuación, donde se priorizaba a las mujeres y niños. La variable `Sex` se mostró muy relevante en los modelos de predicción.

2. **Clase de Pasajero y Supervivencia**  
   - 🏰 **Los pasajeros de primera clase tienen una probabilidad de supervivencia significativamente mayor** en comparación con los de segunda y tercera clase. Esto indica que los pasajeros de clase alta probablemente tenían más acceso a los botes salvavidas y otras medidas de evacuación.

3. **Edad y Supervivencia**  
   - 👶 **Los niños tienen una tasa de supervivencia más alta** que los adultos. Esto sugiere que se dio preferencia a los niños durante el proceso de evacuación, tal vez debido a la política de "mujeres y niños primero".

4. **Impacto del Embarque**  
   - 🚢 **El puerto de embarque (variable `Embarked`) tiene un impacto menor en la supervivencia**, aunque algunos modelos muestran una leve correlación. En general, los pasajeros embarcados en `Cherbourg` tuvieron una tasa de supervivencia más alta que los de `Southampton`.

5. **Estrategias de Preprocesamiento Efectivas**  
   - 🛠️ **El preprocesamiento de los datos, como la imputación de valores faltantes y la codificación de variables categóricas**, permitió que los modelos trabajaran de manera eficiente. Imputar las edades con la mediana fue una estrategia que mejoró la precisión de los modelos.

6. **Desempeño de Modelos**  
   - 🌲 **Árbol de Decisión**: El modelo más interpretable, pero con cierto sobreajuste.  
   - 📉 **Naive Bayes Gaussiano**: Rápido y eficiente, pero con menor precisión comparado con otros modelos.  
   - 🤝 **K-Vecinos Más Cercanos (KNN)**: Buen desempeño, aunque más lento para grandes volúmenes de datos.  
   - 🚀 **XGBoost**: El modelo más robusto, mostrando la mayor precisión, especialmente en la clasificación binaria de supervivientes y no supervivientes.

7. **Optimización de Modelos**  
   - 🔧 **El ajuste de hiperparámetros** en el modelo XGBoost, como el número de árboles (`n_estimators`) y la tasa de aprendizaje (`learning_rate`), ayudó a mejorar la precisión, destacándose en comparación con otros modelos probados.

---

## 🛠️ **Requisitos**  
- **Python 3.11**  
- **Bibliotecas:**  
  - 🐍 `numpy`, `pandas`, `matplotlib`, `seaborn`  
  - 🤖 `scikit-learn`, `xgboost`  

---

## 🚀 **Instrucciones de Ejecución**  
1. Instalar las dependencias:  
   ```bash
   pip install numpy pandas matplotlib seaborn scikit-learn xgboost
2. Descargar el dataset de entrenamiento y el de prueba localizados en la carpeta
3. Ejecutar el archivo del proyecto en un entorno como Jupyter Notebook, VSCode o Google Colab.
