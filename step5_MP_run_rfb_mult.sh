STOCK_ID="'"'cod.27.47d20'"'"
OM="'"'baseline'"'"
optimised="'"'default'"'"
SCENARIO="'"'multiplier'"'"
MP="'"'rfb'"'"
stat_yrs="'"'multiple'"'"
OBJ_FUN="'"'ICES'"'"
OBJ_YRS="'"'11:20'"'"
STAT_YRS="'"'multiple'"'"
MULTIPLIER="'"'seq(0,2,0.01)'"'"


### set working directory
cd 'C:/Users/JR13/Documents/LOCAL_NOT_ONEDRIVE/MSE_risk_comparison(2023)'

### Assess management procedures
'C:/Program Files/R/R-4.2.2/bin/Rscript.exe' MP_run.R use_MPI=FALSE n_workers=13 n_blocks=1 popSize=201 maxiter=1 run=1 stock_id=$STOCK_ID n_iter=10 n_yrs=20 scenario=$SCENARIO MP=$MP OM=$OM ga_search=FALSE stat_yrs=$stat_yrs save_MP=TRUE comp_r=TRUE comp_f=TRUE comp_b=TRUE cap_below_b=FALSE lag_idx=FALSE range_idx_1=FALSE range_idx_2=FALSE range_catch=FALSE exp_r=FALSE exp_f=FALSE exp_b=FALSE interval=FALSE multiplier=$MULTIPLIER upper_constraint=1.2 lower_constraint=0.7 obj_fun=$OBJ_FUN obj_yrs=$OBJ_YRS stat_yrs=$STAT_YRS pen_neg=FALSE pen_max=1 pen_infl=0.06 pen_steep=1000 collate=TRUE add_suggestions=TRUE