$verboseLogFile = "deployment.log"




$StartTime = Get-Date

Function My-Logger {
    param(
    [Parameter(Mandatory=$true)]
    [String]$message
    )

    $timeStamp = Get-Date -Format "MM-dd-yyyy_hh:mm:ss"

    Write-Host -NoNewline -ForegroundColor White "[$timestamp]"
    Write-Host -ForegroundColor Green " $message"
    $logMessage = "[$timeStamp] $message"
    $logMessage | Out-File -Append -LiteralPath $verboseLogFile
}




My-Logger "Deployment Complete!"
My-Logger "StartTime: $StartTime"
#My-Logger "EndTime: $EndTime"
#My-Logger " Duration: $duration minutes"