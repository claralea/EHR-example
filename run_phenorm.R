
################## 
###### 1. Prepare the input data
################## 
# 1.1 Create a new table by adding a new column on data.idc called “long_title”, using the icd9_code description 
# table icd.desc. Call this new table data.phe.

# 1.2 Create a column “date” in table data.phe, containing random dates that lay within a period 
# of 2 years: 01-01-2019 and 01-01-2021.

# 1.3 If necessary, modify the data to ensure that for each patient, the same ICD code isn't counted multiple times per day. 
# Each ICD code should appear once per patient and per day.


################## 
###### 2. Map the ICD codes to PheCodes
################## 
# 2.1 In ICD-CM-phecode.txt, keep only the rows with flag=9.

# 2.2 Ensure that the ICD codes are in the same format in your data data.phe and in the mapping table.

# 2.3 Modify the mapping table to rollup to one digit PheCodes.

# 2.4 In data.phe, create a column 'phecode'.


################## 
###### 3. Run PheNorm
################## 
# 3.1 Prepare the input data using data.phe: for each patient, include the total count of PheCode of interest, 
# and the utilization score. This score is the total count of all PheCodes for a patient.

# 3.2 Using the documentation provided for the PheNorm package (see 'Example'), fit PheNorm.


################## 
###### 4. Compute accuracy measures
################## 
# Briefly report the accuracy of the PheNorm algorithm, including AUC, sensitivity and specificity




