![table](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Images%20for%20ReadMe/AmazonVine.jpeg)

# Big Data Analysis of Amazon Product Reviews in Cloud

## Brief Introduction: 

Many of Amazon's shoppers depend on product reviews to make a purchase. Amazon makes these review datasets publicly available ([data](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt)). These datasets are quite large to be handled by local machines. Therefore the entire analysis on the product reviews will be completed on AWS cloud employing S3 Bucket (to store the dataset) and RDS (Relational Database System). 

## Dataset: 
(1) Datasets chosen for the project include -

    (a) Camera - containing 1801849 unique records
    (b) Mobile phones - containing 104972 unique records  

(2) These big datasets were uploaded onto the S3 Bucket ([S3](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Images%20for%20ReadMe/S3%20Bucket.jpg))


## Cloud ETL (Level1): 

        (1) The dataset were extracted from S3, cleaned, transformed and uploaded onto AWS RDS using a SparkSession (Pyspark). 
        
        (2) The transformed dataframes (for both datasets) that correspond to tables were loaded into an RDS instance
                (a) review_id_table (shown below)
                (b) products (Screenshots in L1 folder)
                (c) customers (Screenshots in L1 folder)
                (d) vine_table (Screenshots in L1 folder)
                
 
([RDS Instance on AWS ](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Images%20for%20ReadMe/AWS%20-%20RDS%20Instance.jpg))

## Camera
![table](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Level%201/Camera_Postgres_data_table_Images/Review_id_Table_Camera.png)    

Other SQL tables can be found at 
([Other SQL tables](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_in_Cloud/tree/main/Level%201/Camera_Postgres_data_table_Images))

## Mobile 
![table](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Level%201/Mobile_Postgres_data_table_images/Review_id_Table_Mobile.png)

Other SQL tables can be found at 
([Other SQL tables](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_in_Cloud/tree/main/Level%201/Camera_Postgres_data_table_Images))

## Analysis of Amazon Vine Reviews using PySpark (Level2)

In Amazon's Vine program, reviewers receive free products in exchange for reviews. Amazon has developed several policies to reduce the bias of its Vine reviews: https://www.amazon.com/gp/vine/help?ie=UTF8. 

However, in this part of the project, trustworthiness of these Vine reviews will be investigated and whether these reviews are free of bias will be determined. 

The demand for mobile phones and camera are ever increasing. These two datasets would give us much clear indication of the real demand for these products in assessing the Vine program and help us detect any bias introduced by paid campaigns to promote these categories of products. 

Conditions for this analysis include -

        (1) Paid or unpaid (Vine = Y or N)
        (2) Review count >= 20
        (3) (helpful_votes/total_votes) >= 50%
        (4) Star Rating == 5

## Camera
 
### Main finding: 
42% of Vine (paid) and 49% of regular (unpaid) customers gave 5 STARS rating to Camera

![table](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Level%202/Camera/comparison_vine%26_normal%20_customers_Camera.jpg)


## Mobile 

### Main finding: 
49% of regular (unpaid) customers gave 5 STARS rating to this category. However, just 1 vine reviewer gave 5 STARS rating to this category. Mobile category was not found to be popularly promoted by Vine Reviews as only 4 met the above conditions in the Vine group.  

![table](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Level%202/Mobile/comparison_vine%26_normal%20_customers_Mobile.jpg)


## Analysis of Amazon Vine Reviews using BigQuery (RDS, SQL) - (Level2)

Conditions set for this analysis include -

        (1) Paid or unpaid (Vine = Y or N)
        (2) Review count >= 20
        (3) Star Rating >= 4
        (4) Purchase verified (Yes or No).

## Camera

![table](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Level%202/Camera/Vine_N_Verified_N.jpg)

    (1) 464 Vine reviewers met the conditions set for this analysis. As one would expect, almost all of them (N=459) had no verified purchase.

    (2) On the other hand, unpaid customers (N= 36999) had an interesting split. 52% had no verifed purchase while the remaining 48% showed 
        verfied purchase.
    
    (3) This was quite interesting to note as overwhelming majority of 'supposedly unpaid' customers with no verfied purchase history gave 5 star 
        ratings for this category of products. 
    
    (4) The reviews given to this category by 'supposedly unpaid' vine customers is therefore doubtful. These customers are not part of the vine program
        however they might be a part of a vendor run paid schemes in its internal workings. 

([camera analysis screenshots](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/tree/main/Level%202/Camera))

## Mobile 

![table](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/blob/main/Level%202/Mobile/Vine_N_Verified_N.jpg)

    (1) 3 Vine reviewers met the conditions set for this analysis in this category and all 3 had no verfied history of purchase. 
    
    (2) In the non-Vine customer group (N=743), 37% had no verified purchase while the remaining 63% had. 
    
    (3) As seen before, mobile phone category purchases are also influenced by some sort of the underlying paid schemes as 'Camera' did.

([Mobile analysis screenshots](https://github.com/fbrowther/Amazon_Product_Reviews_Analysis_on_Cloud/tree/main/Level%202/Mobile))


## Summary of findings and analysis.

    (1) Amazon reviews obtained as a part of Vine Program seem to be fair so far. However, vast majority of 5 star reviews were given 
        by 'supposedly unpaid' customers with no verfied purchase history in both categories analysed. 
    
    (2) Amazon needs to keep an eye on these reviews that appear inspite of no prior history of purchases. 
        These reviews might be due to informal paid review schemes going on that are heavily influencing the purchasing trend of the customers.
    
    (3) Each category of products showed its own trend. Therefore, keeping an eye on them individually might be necessary.
    

