-- Load data into TrainData table
COPY INTO TrainData
FROM @my_s3_stage/train.csv
FILE_FORMAT = (TYPE = 'CSV' FIELD_OPTIONALLY_ENCLOSED_BY = '"' SKIP_HEADER = 1)
ON_ERROR = 'CONTINUE';
