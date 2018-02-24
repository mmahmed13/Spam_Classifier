# Spam_Classifier

Many email services today provide spam filters that are able to classify emails into spam and non-spam email with high accuracy. This project uses SVMs to build a spam filter.

It first normalizes emails in the dataset by lower-casing, stripping HTML tags, normalizing URLs, numbers, email address and word stemming (reducing words to their stemmed form e.g "discount", "discounts", "discounted" and "discounting" are all replaced with "discount").

Then, a feature vector is made in which the words in the email are compared with the frequently occuring words in vocab.txt. 

After feature extraction, a preprocessed training dataset spamTrain.m, containing 4000 training examples of spam and non-spam email, is loaded and trained on an SVM classifier. Once the training completes, you should see that the classifier gets a training accuracy of about 99.8% and a test accuracy of about 98.5%.


This project was done as part of Machine Learning assignment on Coursera.
