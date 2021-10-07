$verboseLogFile = "deployment.log"

$param1=$args[0]
$param2=$args[1]
$param3=$args[2]
$param4=$args[3]

#write-host $param1



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
My-Logger "param1: $param1"
My-Logger "param2: $param2"
My-Logger "param3: $param3"
My-Logger "param4: $param4"

#My-Logger "param3: $args[2]"
#My-Logger "param4: $args[3]"

#My-Logger "EndTime: $EndTime"
#My-Logger " Duration: $duration minutes"