![table](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Images%20for%20ReadMe/AmazonVine.jpeg)

# Amazon_Product_Reviews_Analysis_on_Cloud

## Brief Introduction: 

Many of Amazon's shoppers depend on product reviews to make a purchase. Amazon makes these datasets publicly available ([data](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt)). These datasets are quite large to be handled by local machines. Therefore the entire analysis on the product reviews will be completed on AWS cloud employing S3 Bucket (to store the dataset) and RDS (Relational Database System). 

## Dataset: 
(1) Datasets chosen for the project include -

    (a) Camera - containing 1801849 unique records
    (b) Mobile phones - containing 104972 unique records  
    
(2) These big datasets were uploaded onto the S3 Bucket ([S3](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Images%20for%20ReadMe/S3%20Bucket.jpg))

## Cloud ETL:

        (1) The dataset were extracted from S3, cleaned, transformed and uploaded onto AWS RDS using a SparkSession (Pyspark). 
        
        (2) The transformed dataframes were upload as four tables 
                (a) review_id_table (shown below)
                (b) products (Screenshots in L1 folder)
                (c) customers Screenshots in L1 folder
                (d) vine_table Screenshots in L1 folder

## Camera
![table](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Level%201/Camera_Postgres_data_table_Images/Review_id_Table_Camera.png)    


## Mobile 
![table](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Level%201/Mobile_Postgres_data_table_images/Review_id_Table_Mobile.png)



They are quite large and can exceed the capacity of local machines. One dataset alone contains over 1.5 million rows; with over 40 datasets, data analysis can be very demanding on the average local computer. Your first goal for this assignment will be to perform the ETL process completely in the cloud and upload a DataFrame to an RDS instance. 

The second goal will be to use PySpark or SQL to perform a statistical analysis of selected data.
This homework assignment contains two levels. The second level is optional but highly recommended.


Create DataFrames to match production-ready tables from two big Amazon customer review datasets.


Analyze whether reviews from Amazon's Vine program are trustworthy.





Big data on amazon reviews 

https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt
containing 1.5 million reviews on Amazon Products will be analysed on AWS cloud.

