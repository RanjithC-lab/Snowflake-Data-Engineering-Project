-- Add Premium_Flag column to TrainData
ALTER TABLE TrainData ADD Premium_Flag BOOLEAN;

-- Update Premium_Flag based on Annual_Premium
UPDATE TrainData
SET Premium_Flag = CASE
    WHEN Annual_Premium > 30000 THEN TRUE
    ELSE FALSE
END;
