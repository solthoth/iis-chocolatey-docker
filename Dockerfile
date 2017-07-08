# escape=`
FROM microsoft/iis
MAINTAINER github.com/solthoth/iis-chocolatey-docker

RUN powershell -Command `
    $env:ChocolateyUseWindowsCompression='false'; `
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))