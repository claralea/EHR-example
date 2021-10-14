# EHR-example

In this exercise, we use publicly available EHR data to run the PheNorm algorithm and estimate for each patient the probability of having type 2 diabetes (T2D).
All the steps should be done using R.


## 1. Prepare the input data

The mimic 3 db is an example of Electronic Health Records data. For these tasks, you will be working with a small dataset within the MIMIC3 dataset https://physionet.org/content/mimiciii-demo/1.4/. 

Download the MIMIC 3 demo ICD dataset from the following link https://physionet.org/content/mimiciii-demo/1.4/DIAGNOSES_ICD.csv. Call the table data.idc.

Download the ICD Description from the following link and and call it icd.desc :
https://physionet.org/content/mimiciii-demo/1.4/D_ICD_DIAGNOSES.csv

1. Create a new table by adding a new column on data.idc called “long_title”, using the icd9_code description table icd.desc. Call this new table data.phe. 
2. Create a column “date” in table data.phe, containing random dates that lay within a period of 2 years: 01-01-2019 and 01-01-2021.
3. If necessary, modify the data to ensure that for each patient, the same ICD code isn't counted multiple times per day. Each ICD code should appear once per patient and per day.


## 2. Map the ICD codes to PheCodes
Map the ICD codes to PheCodes, using the file ICD-CM-phecode.txt. We need to ensure that each ICD code is mapped to a PheCode with one digit (format abc.x), or zero digits (format abc) if no one digit PheCode is available. PheCodes with two digits (format abc.xx) should not be included, and be rolled up to one digit PheCodes.
1. In ICD-CM-phecode.txt, keep only the rows with flag=9. 
2. Ensure that the ICD codes are in the same format in your data data.phe and in the mapping table.
3. Modify the mapping table to rollup to one digit PheCodes.
4. In data.phe, create a column 'phecode'. 


## 3. Run PheNorm
PheNorm is a phenotyping algorithm that computes for each patient the predicted probability of having a phenotype of interest. The documentation for Phenorm algorithm can be found here https://celehs.github.io/PheNorm/.
For this exercise, the phenotype of interest is T2D (PheCode 250.2).

1. Prepare the input data using data.phe: for each patient, include the total count of PheCode of interest, and the utilization score. This score is the total count of all PheCodes for a patient.
2.  Using the documentation provided for the PheNorm package (see 'Example'), fit PheNorm.


## 4. Compute accuracy measures
The file fake_t2d_labels.csv contains fake labels for patients. This file mimics the true patient labels obtained by manual chart review.
1. Briefly report the accuracy of the PheNorm algorithm, including AUC, sensitivity and specificity.

