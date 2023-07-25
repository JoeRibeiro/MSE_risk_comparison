### This is Joe's script to address task number 4 set by simon, "4.	Run the code for the category 1 ICES MSY rule based on SAM (https://github.com/shfischer/MSE_risk_comparison/blob/master/MP_run.R, reduce iterations to e.g. n_iter=10, set MP="ICES_SAM", stock_id="cod.27.47d20", ga_search=FALSE) "
### I have been pasting the contents into Git Bash / MINGW64
STOCK_ID="'"'cod.27.47d20'"'"
OM="'"'baseline'"'"
optimised="'"'default'"'"
SCENARIO="'"''"'"
MP="'"'ICES_SAM'"'"
stat_yrs="'"'multiple'"'"


### set working directory
cd 'C:/Users/JR13/Documents/LOCAL_NOT_ONEDRIVE/MSE_risk_comparison(2023)'

### create OM, this script was set up for 10 iterations
'C:/Program Files/R/R-4.2.2/bin/Rscript.exe' OM_cod.27.47d20.R

### Assess management procedures
'C:/Program Files/R/R-4.2.2/bin/Rscript.exe' MP_run.R use_MPI=FALSE n_workers=13 n_blocks=1 stock_id=$STOCK_ID n_iter=10 n_yrs=20 scenario=$SCENARIO MP=$MP OM=$OM rec_failure=FALSE ga_search=FALSE stat_yrs=$stat_yrs save_MP=TRUE optimised=$optimised
