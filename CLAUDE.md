<!-- SPECKIT START -->
For additional context about technologies to be used, project structure,
shell commands, and other important information, read the current plan
<!-- SPECKIT END -->

# Bridge Predictive Maintenance Dashboard

## Quick Start

```powershell
# Activate venv
.\venv\Scripts\Activate.ps1

# 1. Generate synthetic sensor data (first run only)
python data/sample/generate_sample_data.py

# 2. Train the predictive model (first run only)
python data/sample/train_sample_model.py

# 3. Run the dashboard
python src/dashboard/app.py
# Open http://localhost:8050
```

## Project Structure

```
specs/001-bridge-predictive-maintenance/   ← Feature spec, plan, tasks
src/
  dashboard/   ← Dash app, layouts, callbacks, components
  models/      ← SQLAlchemy ORM models
  services/    ← Business logic (data, health, ML, alert)
  utils/       ← DB engine, config, preprocessing
data/
  sample/      ← Synthetic data generator + model trainer
  models/      ← Trained model artifact (bridge_model.pkl)
tests/
  unit/        ← Health service, alert service tests
  integration/ ← Data service integration tests
```

## Running Tests

```powershell
python -m pytest tests/ -v --cov=src
```

## Technology Stack

- **Dashboard**: Plotly Dash 2.x + Dash Bootstrap Components
- **ML**: scikit-learn GradientBoostingClassifier
- **Data**: pandas, numpy, SQLAlchemy + SQLite
- **Testing**: pytest + pytest-cov

## Pages

| URL | Description |
|-----|-------------|
| `/` | Bridge health overview cards |
| `/detail?bridge_id=N` | Sensor time-series drill-down |
| `/prediction` | Failure probability forecast |
| `/alerts` | Alert management panel |
| `/model-performance` | ML model metrics & calibration |

## Spec-Kit Skills Available

- `/speckit-specify` — create/refine feature specs
- `/speckit-plan` — create implementation plans
- `/speckit-tasks` — generate task breakdowns
- `/speckit-implement` — execute implementation tasks
- `/speckit-analyze` — cross-artifact consistency check
