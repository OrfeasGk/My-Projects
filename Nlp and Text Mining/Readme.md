Course: Natural Language Processing and Text Mining 

Instructor: Dr. C. Berberidis, Prof. A. Papadopoulos  

Students: Orfeas-Ilias Gkonis ogkonis@ihu.edu.gr  

Chrysovelidis Georgios g.chrysovelidis@ihu.edu.gr  

 

1. Introduction 

In Quora, there is a lot of duplicate content and questions. With this project we aim to develop a model to predict whether two given questions from a dataset ask the same thing or not. The problem is a binary classification task, where the model predicts whether a pair of questions is similar, 1 if yes and 0 if not. 

 

2. Data Preprocessing 

The Quora dataset consists of question pairs, with a label indicating whether these questions are duplicates or not. The columns of the dataset are the below: 

id: Identifier for the question pair 

qid1: ID of the first question 

qid2: ID of the second question 

question1: Text of the first question 

question2: Text of the second question 

is_duplicate: Binary label, indicating if the questions are the same or not (1 or 0) 

We have loaded the dataset using Pandas, checked for missing values, and filled the empty fields with an empty string. We have also preprocessed the text, doing the below: 

Lowercasing: Converting all text to lowercase 

Text normalization: Replacing special characters or common contractions to standardize the text. For example, won’t is replaced with will not, the special character % is replaced with the word percent. 

Emoticon extraction: Finds emoticons based on common patterns and replaces any non-word characters in the detected emoticons with a space. 

Stopword removal: A predefined list of stopwords, which are common, non-informative words, to be removed later. Then text is split into words, and any of the words that are in the list are removed. Then the cleaned words are joined into a single string. 

Handling large numbers: Replaces large numbers to reduce the complexity of handling large numeric data. For instance, 1000000 is transformed to 1m. 

Stemming: Chops words to their original form, for instance running is transformed to run. 

Removing Punctuation: Removes punctuation and replaces it with a space, so text is tokenized more accurately. 

Removing Non-Alphanumeric Characters: Non-alphanumeric characters are removed and replaced with a space to retain word separation. 

HTML Tag Removal: HTML/XML tags are removed from the text using BeautifulSoup. This ensures that only plain text is retained.  

3. Feature Engineering 

To measure similarity between the question pairs, we created multiple features, using a combination of lexical, semantic and statistical techniques. 

Basis Features, with text-based metrics: 

Question Length: The number of characters in each question 

Word Count: Total number of words in each question 

Character Difference: The absolute difference in character length between the two questions 

Word Count Difference: The absolute difference in word count between the questions 

Common words: The number of common words for each pair of questions. 

Common bigrams/trigrams: The number of common bigrams/trigrams for each pair of questions. 

Percentage of common words: The percentage of the number of common words for each pair of questions. 

Advanced Features, where we quantify textual similarity. 

Fuzzy Matching: Uses the Levenshtein edit distance to find the similarity between the strings. 

fuzz_ratio: calculates the edit distance based on the ordering of both input strings 

partial_fuzz_ratio: Finds partial matches. Two strings are partially similar if they have some of the words in a common order. 

token_set_ratio: Handles unordered words by ignoring duplicates. 

token_sort_ratio: Sorts words before comparing, useful for differently ordered but similar content. 

 

Jaccard Similarity: Measures the size of the intersection divided by the size of the union of the union of the sets of words from both questions. 

First/Last word match: Checks if the first/last words of both questions are the same. 

Sentence Embedding with Sentence-BERT: Captures semantic similarity between questions using Sentence-BERT embeddings, following the below steps: 

Loads a pre-trained model Sentence-BERT model. 

Generates embeddings for both question sets. 

Computes the cosine similarity between the embeddings. 

Stores the result as a new feature: semantic_similarity. 

SpaCy: Computes the semantic similarity between the questions. This captures the contextual meaning of words, and not only their surface form. 

 

4. Model Training and Evaluation 

A robust pipeline was employed for model training and evaluation to ensure accuracy and generalization of our predictions. The steps were the below: 

1. Data Splitting 

We divided the dataset into training and testing sets, using a 80% - 20% spit ratio. To ensure stratification and maintain the balance of the target variable. 

2. TF-IDF Vectorization 

TF-IDF (Term Frequency – Inverse Document Frequency) was used to transform the text data into numerical vectors. We included unigram and bigram features to capture both individual words, but also common word pairs. 

3. Model Selection 

Multiple classification algorithms were tested, to identify the most suitable model. 

Logistic Regression: A linear model effective for binary classification problems, optimized using cross-entropy loss. 

Gaussian Naive Bayes: Probabilistic classifier. 

Linear SVC: Support Vector Classifier for binary classification. 

MLPClassifier: Multi-Layer Perceptron for non-linear pattern recognition. 

 

4. Evaluation Metrics 

The below metrics were used for the evaluation of the model performance: 

Accuracy: The proportion of correctly classified pairs. 

F1 Score: The mean of precision and recall, which is useful for imbalanced data. 

Log Loss: A measure of probability-based error, with a focus on minimizing incorrect predictions. 

5. Cross – Validation 

A 5-fold cross-validation was employed to avoid overfitting. We splitted the dataset into 5 equally sized subsets, training the model on 4 subsets and testing on the remaining one. This process was repeated five times. We averaged the score across all folds to get the final performance metric, and this provided a more robust evaluation compared to a single train-test split. 

6. Model Optimization 

GridSearchCV was used to perform hyperparameter tuning and optimize the model parameters. We specified a range of values for each hyperparameter and systematically evaluated each combination. For the final evaluation we selected the model with the best parameter set, as determined by the cross-validated performance. 

7. Performance Analysis 

The model comparison revealed distinct strengths and weaknesses among the tested algorithms: 

Logistic Regression: A strong baseline model. Performed well in cases where there was a clear lexical similarity between question pairs. Its linear nature limited its ability to capture complex patterns, resulting in moderate accuracy. 

Gaussian Naive Bayes: Fast training time and effectiveness for simpler feature sets. However, its assumption of feature independence reduced its effectiveness to capture nuanced similarities between questions. 

Linear SVC: Good performance with linear decision boundaries but lacked the ability to model non-linear relationships effectively. Its interpretability was limited by the absence of probability estimates. 

MLPClassifier (Multi-Layer Perceptron): Promising results with non-linear data. Required longer training time compared to the other models but captured complex interactions because of its multi-layer structure. 

XGBoost: Outperformed the other models, especially in accuracy and F1 score. It is well suited for capturing the complexity of duplicate questions because of its ensemble nature and ability to model non-linear relationships. Its performance was enhanced by tuning the hyperparameters. 

5. Results and Discussion 

After training the models, they were evaluated on the test set using accuracy, F1 score, log loss as the primary metrics. Below is a summary of the key quantitative results: 

Model 

Accuracy 

F1 Score 

Log Loss 

Logistic Regression 

0.789322  

0.717501 

0.422191 

Gaussian Naive Bayes 

0.695429 

0.661954 

2.312102 

Linear SVC 

0.789594 

0.72135 

NaN 

MLPClassifier 

0.818422 

0.760098 

0.373962 

XGBoost 

0.827574 

0.772226 

0.356122 

 

Logistic Regression: The model achieved an accuracy of 79% and an F1 score of 72%. Its primary strength is identifying lexically similar question pairs. However, it underperformed when dealing with complex semantic relationships, as evident from the moderate F1 score. 

Gaussian Naive Bayes: Despite fast training and simplicity, it showed the lowest performance, with an accuracy of 69% and an F1 score of 66%. Its limitation was primarily in modeling complex interactions due to the independence assumption. 

Linear SVC: Performed moderately well with 79% accuracy and 72% F1 score. It captured linear relationships effectively but struggled with non-linear patterns. The lack of probabilistic output limited its utility in certain scenarios. 

MLPClassifier: Achieved a good balance between accuracy (82%) and F1 score (76%). The neural network structure enabled it to capture more complex interactions, albeit with increased training time. 

XGBoost: The top performer with 82% accuracy and 77% F1 score. The model’s ensemble nature and non-linear modeling capabilities were crucial in capturing subtle similarities between questions. Hyperparameter tuning significantly boosted its performance. 

BM25: Best Matching 25 (BM25) is a ranking function. It is used widely in information retrieval, particularly in search engines, to show how relevant a document is to a given query. In the context of question similarity detection, BM25 can measure the lexical relevance between two questions. This is done by treating one as a query and the other as a document. This model can handle varied question lengths and term frequencies by using term saturation and document length optimization. However, BM25 does not capture semantic meaning like neural models or embeddings. We experimented with this model as well, but it was excluded due to its computational inefficiency, taking approximately one second per iteration, making it impractical for large-scale datasets, like the one we are using from Quora. Compared to the other models used in this project, it lacked the scalability and speed required for efficient training, despite its strong lexical matching capabilities. 

Feature Importance 

To better understand the contribution of each feature to the model’s predictions, we examined the feature importance scores. As shown in the figure below, semantic similarity was by far the most important feature in predicting duplicate questions, followed by the percentage of common words and cosine similarity. 

Identification of Likely Misclassified Duplicate Pairs 

During our post training evaluation, we observed that a subset of question pairs are marked as not duplicates even though they exhibit high confidence that these are duplicate questions (confidence more than 0,70). These cases suggest that they may have been incorrectly labeled in the dataset. We identified 3,659 such cases out of a total of 80.558 (the test set) question pairs in the dataset. This is the 22% of test set, which ultimately affects the model’s evaluation by a large margin.

Challenges and Insights 

Questions with slight lexical variations but significant semantic differences remain challenging. The combination of lexical (TF-IDF, n-grams) and semantic (SpaCy) features proved crucial for improving the model’s robustness. The tuning of hyperparameters, especially for XGBoost significantly improved the performance. 

6. Conclusion 

With this project, we successfully addressed the problem of detecting duplicate questions, by combining lexical, statistical and semantic features. We utilized traditional methods – TF-IDF and N-grams – alongside more advanced techniques – semantic similarity using SpaCy – to achieve a robust performance in identifying similar question pairs. Logistic Regression was used as a reliable baseline, whereas XGBoost improved accuracy by capturing complex interactions. 

The importance of combining multiple feature types to detect question similarity as accurately as possible is the key takeaway from this project. We started with simple textual features, which were informative, and then incorporated semantic features as well, which were necessary for handling nuanced differences between the questions. 

Improvement Recommendations

Explore Advanced Embedding Techniques: Sentence-BERT proved effective, but experimenting with newer transformer models like RoBERTa, DistilBERT, or embeddings from LLMs (Large Language Models) could enhance the performance of the model and its ability to capture nuanced relationships. 

Feature Engineering Enhancements: Accuracy could be further improved by exploring contextual embeddings from advanced models. 

Hybrid Models: Combining XGBoost with neural network embeddings could reap the benefits of both traditional and modern techniques. 
