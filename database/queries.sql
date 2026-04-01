 -- Load data to staging table 

 -- Change the path to match the path where your data is located 
LOAD DATA LOCAL INFILE 'C:/Projects/PricePredictionTeam/PricePredictionTeam/trainmtest1.csv'
INTO TABLE house_staging
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;   -- skip header