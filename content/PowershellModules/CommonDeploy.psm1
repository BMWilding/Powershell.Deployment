# Common deployment module$global:ErrorActionPreference = "Stop"$CurrentPath = Split-Path -parent $MyInvocation.MyCommand.DefinitionImport-Module $CurrentPath\Utils.psm1 -Force -DisableNameCheckingImport-Module $CurrentPath\Installation.psm1 -Force -DisableNameCheckingImport-Module $CurrentPath\CertificateInstallation.psm1 -Force -DisableNameCheckingImport-Module $CurrentPath\FilePermissionInstallation.psm1 -Force -DisableNameCheckingImport-Module $CurrentPath\ServiceInstallation.psm1 -Force -DisableNameCheckingImport-Module $CurrentPath\ServiceBusInstallation.psm1 -Force -DisableNameChecking$m = Get-Module WebAdministration -ListAvailableif($m) {    Import-Module WebAdministration    Import-Module $CurrentPath\WebInstallation.psm1 -Force -DisableNameChecking} else {    Write-Warning "WebAdministration module is not installed. It is not required for all installations but if you're trying to configure a website your installation will fail"}