
STOCK_ID="'"'cod.27.47d20'"'"
OM="'"'baseline'"'"
X_LABEL="'"'F'"'"
vals_ini="'"'seq(0,1,0.1)'"'"

### print details about job

### set working directory
cd 'C:/Users/JR13/Documents/LOCAL_NOT_ONEDRIVE/MSE_risk_comparison(2023)'




'C:/Program Files/R/R-4.2.2/bin/Rscript.exe' n_workers=20 stock_id=$STOCK_ID OM=$OM yr_start=2021 n_iter=10 vals_ini=$vals_ini lower=0 upper=0.7 tol=0.001 plot=TRUE x_label=$X_LABEL save=TRUE

