# Kidney MLOps Project

This is a ready-to-use template for an end-to-end MLOps project on the **Kidney Function / CKD dataset**.

## How to use

1. Create a virtual environment and install requirements:

```bash
python -m venv venv
venv\Scripts\activate   # on Windows
pip install -r requirements.txt
```

2. Put your dataset CSV from Kaggle into:

```text
data/raw/kidney_dataset.csv
```

3. Run preprocessing:

```bash
python -m src.data.preprocess
```

4. Train model:

```bash
python -m src.models.train
```

5. (Optional) Evaluate:

```bash
python -m src.models.evaluate
```

The project already includes:
- `params.yaml` with your columns and target `CKD_Status`
- Preprocessing with scaling + one-hot encoding
- RandomForest training with MLflow tracking
