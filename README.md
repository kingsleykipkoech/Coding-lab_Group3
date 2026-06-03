KNH Secure Hospital Management System
An automated framework for architecting, securing, and auditing hospital technology infrastructure.
			##THE ULTIMATE TEAM

### 1. Kingsley Kipkoech
> Defined ICU water reserve logic
> Initialized the Project structure

### 2. Vanessa Kampiire
> Defined the  Analysis scripts
> Made refinements

### 3. Rita Akariza
> Enabled Script permissions
> Worked on the Archive system

### 4. Cynthia Umurerwa
> Defined Admin infrastructure
> Inserted the Python components

### 5. Lilian Kamakikazi
> System initialization
> Assisted inProject structuring

### 6. Gabriel
> .gitignore security
> System testing

## Project Structure
```
Coding-lab_Group3/
├── .gitignore
├── hospital_admin.sh
├── hospital_analysis.sh
├── hospital_archive.sh
├── hospital_system.py
├── README.md
├── active_logs/
│   ├── heart_rate_log.log
│   ├── temperature_log.log
│   └── water_usage_log.log
├── archived_logs/
│   ├── heart_rate_YYYYMMDD_HHMM.log
│   ├── temperature_YYYYMMDD_HHMM.log
│   └── water_usage_YYYYMMDD_HHMM.log
└── reports/
    └── critical_alerts.txt
```

## How to Run

> Make sure you run these steps in order.

**Step 1 — Set up the environment**
```bash
bash hospital_admin.sh
```

**Step 2 — Start the data engine**
```bash
python3 hospital_system.py start
```

**Step 3 — Run the analysis**
```bash
bash hospital_analysis.sh
```

**Step 4 — Archive the logs**
```bash
bash hospital_archive.sh
```

**Step 5 — Stop the engine**
```bash
python3 hospital_system.py stop
```

---

## What Each Script Does

- **hospital_admin.sh** — Creates `active_logs`, `archived_logs`, and `reports` directories. Locks down permissions so only the owner can read and write sensitive log data.

- **hospital_analysis.sh** — Scans heart rate and temperature logs for CRITICAL readings and saves them to `reports/critical_alerts.txt`. Also calculates the average water usage for the ICU_WATER_RESERVE.

- **hospital_archive.sh** — Moves current logs from `active_logs` to `archived_logs` with a timestamp in the filename. Recreates empty log files so the engine can keep running.

---
