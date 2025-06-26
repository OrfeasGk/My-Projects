Students: Orfeas Ilias Gkonis , ogkonis@ihu.edu.gr \
Nikolaos Laoutaris , nlaoutaris@ihu.edu.gr \
Vasileios Kesopoulos, vkesopoulos@ihu.edu.gr \
Georgios Chrysovelidis, gchrysovelidis@ihu.edu.gr \
Objective \
The aim of this project is to explore data mining methodologies,concepts and algorithms in a healthcare dataset in order to discover patterns and extract knowledge from it.


Methodology \
First, we performed exploratory data analysis to see the distributions the patients' length of stay in hospital (in days), the ratio of male to females and the distribution of the count of readmissions per patient. The dataset was clean, with no Null values, having IDs. The data preprocessing methods we chose to do were outlier removal, one-hot encoding of the categorical data and standard scaling.\
Next, we exerimented with clustering. The clusters were evaluated based on Rand index and Silhouette score. Density based algorithms like DBSCAN and OPTICS failed to identify any unique clusters achieving negative silhouette scores with and without standrdization. Kmeans and Mini Batch Kmeans performed the best even without data preprocessing with 2 clusters. Removing outliers and standardizing the data enhanced the silhoutte scores and rand indexes to 0.44,0.35 and 0.39,0.49 respectively.Mixture Models algorithms barely achieved positive silhoutte scores even with data preprocessing , achieving 0.06 silhoutte score and 0.4 rand index with 2 clusters. Overall, partitioning methods worked the best on this dataset with Kmeans achieving the best performance with 2 clusters, after data preprocessing.\
Continuing, we tried to build models in order to predict the length of stay of the patient in the hospital.Regression models performed the best. We tried the most famous regression models such as Linear Regression , Elastic Net, Decision Trees, Gradient Boost, Ada Boost, XG Boost and K Neighboors.First, we performed 10-fold cross validation on the base models and chose the one that performed best.XG Boost had the highest R-squared and lowest RMSE in it's base, outperforming the rest achieving 0.96 R-squared and 0.41 RMSE and with further parameter tuning/boosting we managed to achieve 0.972 R-squared.\
Furthermore, we used Random Forests to calculate the feature importance. Results showed that rcount contributed the most to the performance of the algorithms, biometric indicators (bmi, glucose etc.) coming second as shown in the barplot above.\
Last but not least, we experimented with classification.Classification algorithms did not seem promising, achieving mediocre accuracy scores, with MLP achieving 0.62 accuracy after data preprocessing and Random Forest achieving ~0.5 accuracy with and without preprocessing. Overall, the large range of classes in the length of stay (0-16) benefited regression more than classification algorithms.


Discussion\
Coming back to clustering, the fact that the best performance was achieved on 2 clusters means that the data where very close together. Also we can notice the the distribution of the length of stay is very skewed to the right. How we interpret this result is that Kmeans categorized the patients in 2 main categories, small length of stay and large length of stay. One observation is that the outliers where ~31k, that is almost 1/3 of the dataset!\
Regression was clearly better suited for predicting the length of stay than classification, achieving very good R-squared and low MSE.XG Boost, a tree ensebling(boosting) algorithm, seems to be the state-of-the art algorithm for classification and regression purposes with gradient boost, it's predecessor, being close second.\
Some challenges we met is that we couldn't extract any meaningful knowledge from association rule mining. The dataset was not in shape to perform asociation rule algorithms and when it was converted, there wasn't any significant outcome.
