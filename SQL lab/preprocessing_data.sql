select  COUNT(poutcome) from bank_additional_full_csv WHERE poutcome =  'nonexistent'
-- count = 35563

-- Drop column is not importance
ALTER TABLE bank_additional_full_csv  
DROP COLUMN poutcome;

-- Pre-processing - remove all unknown records
SELECT * from bank_additional_full_csv as bank
Where education not like 'unknown' 
and job <> 'unknown' 
and bank.default  <> 'unknown'
and marital <> 'unknown'
and education <> 'unknown';