ABSTRACT
Image classification is a complex process that may be affected by many factors. This report examines current practices, problems, and prospects of food image classification. Non-parametric classifiers such as neural networks have become increasingly popular in image classification problems, that said we implemented many different pretrained models with different architectures in-order to solve a multi label classification problem through a competition in Kaggle. Finally, we have also summarized the main analysis and discussion in this article, as well as introducing some of the current trends.\
DATA AND PROBLEM DESCRIPTION
Multi-label image classification is the task of predicting a set of labels corresponding to objects, attributes or other entities present in an image. Our data consists of 41.000 images, where 40.000 of them are for training and 1.000 for testing. Our task is to build/fine tune a Neural Network to detect all the labels present in each of the test images.
Each image in the dataset might contain multiple food items, making this a challenging classification task. The labels span 498 unique categories, ranging from common ingredients to specific dishes. Class imbalance is an issue, as some foods appear frequently while others are rare. With over 40,000 high-resolution images, training deep models is computationally expensive and experimenting freely with many architectures or hyperparameters is not feasible. This required us to be selective and strategic with our choices. 
The data was given to us through a Kaggle competition that started in March 2025 and ended in June 2025. There was a public test set which was 51% of the test set (1000 images), but the winner was determined by the best private score in the private set which was 49% of the test set. \
RESULTS
![image](https://github.com/user-attachments/assets/997fb0ce-d6bf-4dbd-b8f8-b359b6fc71a7)
![image](https://github.com/user-attachments/assets/7813666f-0c4f-41b5-ba56-b4504f61849d)

