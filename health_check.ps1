# ================================
# System Health Check Script
# ================================

# Log fajl (u istom folderu)
$logFile = ".\health_log.txt"

# Approved verb funkcija za logovanje
function Write-Log {
    param([string]$Message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$timestamp - $Message" | Out-File -Append $logFile
    Write-Host $Message
}

Write-Host "=== System Health Check ==="
Write-Host "Date: $(Get-Date)"
Write-Host ""

# --------------------------
# Disk Check (C:)
# --------------------------
# --------------------------
# Disk Check (C:)
# --------------------------
$disk = Get-PSDrive C

if ($disk -and $disk.Size -gt 0) {
    $diskPercent = ($disk.Used / $disk.Size) * 100
    $diskPercentRounded = [math]::Round($diskPercent, 2)

    if ($diskPercentRounded -gt 80) {
        Write-Log ("DISK: CRITICAL - {0}% used" -f $diskPercentRounded)
    } else {
        Write-Log ("DISK: OK - {0}% used" -f $diskPercentRounded)
    }
} else {
    Write-Log "DISK: Unable to read C: drive info"
}


# --------------------------
# Memory Check
# --------------------------
$mem = Get-CimInstance Win32_OperatingSystem
$memUsedPercent = (($mem.TotalVisibleMemorySize - $mem.FreePhysicalMemory) / $mem.TotalVisibleMemorySize) * 100
$memUsedRounded = [math]::Round($memUsedPercent, 2)
Write-Log ("MEMORY: {0}% used" -f $memUsedRounded)

# --------------------------
# Service Check (Print Spooler)
# --------------------------
$serviceName = "Spooler"
$service = Get-Service -Name $serviceName

if ($service.Status -eq "Running") {
    Write-Log ("SERVICE {0}: RUNNING" -f $serviceName)
} else {
    Write-Log ("SERVICE {0}: STOPPED" -f $serviceName)
}

Write-Host ""
Write-Host "Health check complete. Log saved to $logFile"
