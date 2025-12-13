SHAP / Model explanation instructions
------------------------------------
To add SHAP explanations for the Random Forest models in R, consider the following options:

1) 'iml' package:
   - Use Predictor$new(model, data = X_train) then Shapley$new(...) or FeatureImp() for importance.

2) 'DALEX' + 'shapper':
   - Use DALEX::explain() to wrap model+data, then shapper::shap() for per-observation explanations.

3) Python SHAP:
   - Export model predictions and features, run SHAP in Python (if you prefer), and import visualizations.

Example (DALEX):
library(DALEX); explainer <- explain(rf_model, data = X_train, y = y_train); plot(importance(explainer))
