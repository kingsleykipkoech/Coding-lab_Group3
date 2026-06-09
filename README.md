# KNH Secure Hospital Management System
> An automated framework for architecting, securing, and auditing hospital technology infrastructure.

---[
https://docs.google.com/spreadsheets/d/1Te2l_EKtbRbS5P6uxaKBBB_BxgcejEbxcXyvz_L8-AA/edit?usp=sharing](url)   -TEAM TASKS SHEET

## The  Team

### 1. Kingsley Kipkoech
> Defined ICU water reserve logic
>
> Initialized the project structure

### 2. Vanessa Kampiire
> Defined the analysis scripts
>
> Made system refinements

### 3. Rita Akariza
> Enabled script permissions
>
> Worked on the archive system

### 4. Cynthia Umurerwa
> Defined admin infrastructure
>
> Inserted the Python components

### 5. Lilian Kamakikazi
> System initialization
>
> Assisted in project structuring

### 6. Gabriel
> .gitignore security
>
> System testing

---

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

---

## How to Run
## How to Run

> Run these steps in order.



**Step 1 — Start the data engine**
```bash
python3 hospital_system.py start
```

**Step 5 — Stop the engine**
```bash
python3 hospital_system.py stop
```

**Step 3 — Start the environment **
```bash
bash hospital_admin.sh
```
**Step 4 — Run security analysis and log auditing**
```bash
bash hospital_analysis.sh
```

**Step 5 — Archive the logs**
```bash
bash hospital_archive.sh
```


---

## What Each Script Does

- **hospital_admin.sh** — Creates `active_logs`, `archived_logs`, and `reports` directories. SETS the  permissions so only the owner can read and write log data.

- **hospital_analysis.sh** — Scans heart rate and temperature logs for CRITICAL readings and saves them to `reports/critical_alerts.txt`. Calculates the average water usage for the ICU_WATER_RESERVE.

- **hospital_archive.sh** — Moves current logs from `active_logs` to `archived_logs` with a timestamp in the filename. Recreates empty log files so the engine can keep running.

---

