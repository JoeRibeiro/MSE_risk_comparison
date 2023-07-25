STOCK_ID="'"'cod.27.47d20'"'"
OM="'"'baseline'"'"
optimised="'"'default'"'"
SCENARIO="'"'multiplier'"'"
MP="'"'hr'"'"
OBJ_FUN="'"'ICES'"'"
OBJ_YRS="'"'11:20'"'"
STAT_YRS="'"'multiple'"'"



### set working directory
cd 'C:/Users/JR13/Documents/LOCAL_NOT_ONEDRIVE/MSE_risk_comparison(2023)'

### Assess management procedures
'C:/Program Files/R/R-4.2.2/bin/Rscript.exe' MP_run.R use_MPI=FALSE n_workers=13 n_blocks=1 stock_id=$STOCK_ID n_iter=10 n_yrs=20 scenario=$SCENARIO MP=$MP OM=$OM comp_b=TRUE ga_search=FALSE upper_constraint=1.2 lower_constraint=0.7 obj_fun=$OBJ_FUN obj_yrs=$OBJ_YRS pen_neg=FALSE pen_max=1 pen_infl=0.06 pen_steep=1000 collate=TRUE add_suggestions=TRUE  popSize=1000 maxiter=100 run=10 idxB_lag=TRUE idxB_range_3=TRUE exp_b=FALSE comp_b_multiplier=TRUE
