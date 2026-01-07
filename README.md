# 🖥️ System Health Monitoring Script (PowerShell)

A simple yet powerful PowerShell script to monitor the health of a Windows system.  
---

## ⚡ Features

- **Disk Usage Check** – Monitors C: drive usage and flags if over 80%.  
- **Memory Usage Check** – Calculates the percentage of used RAM.  
- **Service Status Check** – Checks if the Print Spooler service is running.  
- **Logging** – Saves all results to `health_log.txt` with timestamps for future reference.  

---

## 🚀 How to Run

1. Open **PowerShell** and navigate to the folder containing the script.  
2. Allow script execution if necessary:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

```
3. **Run the script**:
```
.\health_check.ps1

```
4. **Check the generated log file**:
```
health_log.txt
```

📊 **Example Output**
```
=== System Health Check ===
Date: 01/07/2026 19:36:29

DISK: OK - 45.23% used
MEMORY: 61.62% used
SERVICE Spooler: RUNNING

Health check complete. Log saved to .\health_log.txt
```
🌟 **Optional Enhancements**
```
Add multiple service or disk checks.

Include CPU usage monitoring.

Implement automatic alerts for critical statuses (e.g., email or notifications).

Make it cross-platform for Linux/Windows environments.
