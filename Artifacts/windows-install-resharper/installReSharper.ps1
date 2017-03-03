$reSharperUrl = "https://download.jetbrains.com/resharper/JetBrains.ReSharperUltimate.2016.3.2.exe";
$reSharperExe = "${env:Temp}\JetBrains.ReSharperUltimate.2016.3.2.exe";

try
{
    Invoke-WebRequest -Uri $reSharperUrl -OutFile $reSharperExe;
}
catch
{
    Write-Error "Failed to download Resharper Ultimate";
}

try
{
    Start-Process -FilePath $reSharperExe -ArgumentList "/VsVersion=15.0_385bed55 /SpecificProductNames=ReSharper /Silent=True";
}
catch
{
    Write-Error "Failed to install ReSharper";
}
