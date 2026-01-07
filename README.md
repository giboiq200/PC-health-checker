````markdown
# System Health Monitoring Script (PowerShell)

This PowerShell script performs a basic system health check on a Windows machine.  
It is designed as a mini project to showcase system monitoring and scripting skills, suitable for IT support, system administration, or network operations roles.

---

## Features

- **Disk Usage Check** – checks C: drive usage and warns if over 80%  
- **Memory Usage Check** – calculates the percentage of used RAM  
- **Service Status Check** – verifies if the Print Spooler service is running  
- **Logging** – outputs results to both the console and a log file (`health_log.txt`) with timestamps

---

## How to Run

1. Open **PowerShell** on your Windows machine.
2. Navigate to the folder containing the script.
3. If needed, allow script execution:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
````

4. Run the script:

```powershell
.\health_check.ps1
```

5. Check the log file:

```
health_log.txt
```

---

## Example Output

```
=== System Health Check ===
Date: 01/07/2026 19:36:29

DISK: OK - 45.23% used
MEMORY: 61.62% used
SERVICE Spooler: RUNNING

Health check complete. Log saved to .\health_log.txt
```

---



