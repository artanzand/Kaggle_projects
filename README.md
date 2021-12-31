# Kaggle_projects
This repo will be about implementation of supervised learning essentials on Kaggle datasets from simple models to ensemble models alongwith feature engineering and model selection. For this I will be using cleaned data acquired from Kaggle while walking you through my analysis in individual `.ipynb` files. Details about each dataset is provided in the notebook and below I will mention the machine learning techniques I will be progressing through. As I progress in the project number, I will include the techniques from the earlier projects, and therefore, the last project would be the most complex project for this repo. I will not demonstrate any deep learning techniques in this repo. 


## Spotify Song Attributes [dataset](https://www.kaggle.com/geomack/spotifyclassification/home)
`Golden Rule`, `Decision Tree`, `data splitting`, `model building`, `hyperparameters`, `Dummy classification`, `cross validation`, `matplotlib`

## The Adult Census [dataset](https://www.kaggle.com/uciml/adult-census-income#)
`K Nearest Neighbors (KNN)`, `Support Vector Machine (RBF SVM)`, `Exploratory Data Analysis (EDA)`, `column transformation`, `preprocessing`, `imputation`, `OneHotEncoder`, `OrdinalEncoder`, `StandardScaler`, `altair`

## SMS Spam Detection [dataset](https://www.kaggle.com/uciml/sms-spam-collection-dataset)
`text classification`, `CountVectorizer`, `model selection`, `hyperparameter optimization` , `GridSearchCV`, `RandomizedSearchCV`, `pipeline`, `ColumnTransformer`

## Happy DB [dataset](https://www.kaggle.com/ritresearch/happydb)
`Naive Bayes`, `BernoulliNB`, `MultinomialNB`, `Logistic Regression`

## Churn in Telecom [dataset](https://www.kaggle.com/becksddf/churn-in-telecoms-dataset)
`Random Forest`,`Ridge`, `confusion matrix`, `classification report`, `F1 score`, `Recall`, `Precision`, `Area Under Curve (AUC)`, `PR curve`, `ROC curve`, `ROC AUC score`, `RMSE`, `MAPE score`, `make_scorer`

## Disaster Tweets [dataset](https://www.kaggle.com/vstepanenko/disaster-tweets)
`Polynomial features`, `RidgeCV`, `RFECV`, `Sequential Feature Selector`, `Forward Selection`, `Backward Selection`, `Recursive Selection`

## Spotify Tracks DB [dataset](https://www.kaggle.com/zaheenhamidani/ultimate-spotify-tracks-db)
`SHAP`, `feature_importances_`, `Ensembles`, `Voting model`, `Stacking model`, `Random Forest`, `Gradient Boosted Trees`, `XGBoost`, `LightGBM`, `CatBoost`,

<br>

# To use this repo
Clone this Github repository, install the dependencies, and run the 
following commands at the command line/terminal from the root directory of the project:

```
conda env create --file env.yaml
conda activate Kaggle_projects
```
## Setting up Kaggle API
To use the Kaggle API, sign up for a Kaggle account at https://www.kaggle.com. Then go to the 'Account' tab of your user profile (https://www.kaggle.com/<username>/account) and select 'Create API Token'. This will trigger the download of kaggle.json, a file containing your API credentials. Place this file in the location `~/.kaggle/kaggle.json`. I have already included the `kaggle` package in the repo environment, and running the below script should download the required files. 

## To download the data files
Run the following commands at the command line/terminal from the root directory of the project to download the data files in a `/downloads` folder:
```
make all
```

To reset the repo to the original state, and delete all downloaded files from Kaggle, run the following commands at the command line/terminal from
the root directory of the project:
```
make clean
```

You can now run each individual notebook file.


# To contribute to the repository:
1. Fork the repository.
2. Add the implementation of the algorithm with a clearly defined filename for the script or the notebook.
3. Test the implementation thoroughly and make sure that it works with some dataset.
4. Add a link with a short description about the file in the [README.md](https://github.com/artanzand/Kaggle_projects/blob/main/README.md).
5. Create a pull request for review with a short description of your changes.
6. Do not forget to add attribution for references and sources used in the implementation.
