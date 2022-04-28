select  COUNT(poutcome) from bank_additional_full_csv WHERE poutcome =  'nonexistent'
-- count = 35563

-- Drop column
ALTER TABLE bank_additional_full_csv  
DROP COLUMN poutcome;

-- Pre-processing
SELECT * from bank_additional_full_csv as bank
Where education not like 'unknown' and bank.default  <> 'unknown';