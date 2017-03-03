# We need a repo to store exe install files
$vs2017Url = "https://github.com/jdbriaris/azure-formulas/releases/download/v1/vs_professional.exe";
$vs2017Exe = "${env:Temp}\vs_professional.exe";

try
{
    Invoke-WebRequest -Uri $vs2017Url -OutFile $vs2017Exe;
}
catch
{
    Write-Error "Failed to download VS 2017";
}

try
{
    Start-Process -FilePath $vs2017Exe -ArgumentList "--add Microsoft.VisualStudio.Workload.NetCoreTools;includeRecommended --passive";
}
catch
{
    Write-Error "Failed to install ReSharper";
}
