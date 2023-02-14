![table](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Images%20for%20ReadMe/AmazonVine.jpeg)

# Big Data Analysis of Amazon Product Reviews on Cloud

## Brief Introduction: 

Many of Amazon's shoppers depend on product reviews to make a purchase. Amazon makes these datasets publicly available ([data](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt)). These datasets are quite large to be handled by local machines. Therefore the entire analysis on the product reviews will be completed on AWS cloud employing S3 Bucket (to store the dataset) and RDS (Relational Database System). 

## Dataset: 
(1) Datasets chosen for the project include -

    (a) Camera - containing 1801849 unique records
    (b) Mobile phones - containing 104972 unique records  

(2) These big datasets were uploaded onto the S3 Bucket ([S3](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Images%20for%20ReadMe/S3%20Bucket.jpg))


## Cloud ETL (L1):

        (1) The dataset were extracted from S3, cleaned, transformed and uploaded onto AWS RDS using a SparkSession (Pyspark). 
        
        (2) The transformed dataframes for both datasets were upload as four tables onto RDS
                (a) review_id_table (shown below)
                (b) products (Screenshots in L1 folder)
                (c) customers (Screenshots in L1 folder)
                (d) vine_table (Screenshots in L1 folder)

## Camera
![table](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Level%201/Camera_Postgres_data_table_Images/Review_id_Table_Camera.png)    


## Mobile 
![table](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Level%201/Mobile_Postgres_data_table_images/Review_id_Table_Mobile.png)


## Analysis of Amazon Vine Reviews using PySpark

In Amazon's Vine program, reviewers receive free products in exchange for reviews. Amazon has developed several policies to reduce the bias of its Vine reviews: https://www.amazon.com/gp/vine/help?ie=UTF8. 

However, in this part of the project, trustworthiness of these Vine reviews will be investigated and whether these reviews are free of bias will be determined. 

The demand for mobile phones and camera are ever increasing. These two datasets would give us much clear indication of the real demand for these products in assessing the Vine program and help us prevent any bias introduced by forceful campaign to promote these categories of products. 

## Camera
![table](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Level%202/Camera/comparison_vine%26_normal%20_customers_Camera.jpg)


## Mobile 
![table](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Level%202/Mobile/comparison_vine%26_normal%20_customers_Mobile.jpg)


## Analysis of Amazon Vine Reviews using BigQuery (RDS, SQL)



## Submit a summary of your findings and analysis.









