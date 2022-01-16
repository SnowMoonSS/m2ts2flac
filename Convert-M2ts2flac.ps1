[array]$m2tslist = (Get-Item .\*.m2ts).BaseName
$location = Get-Location

$i = $m2tslist.Count
while ($i -gt 0){
    $i --
    $filename = $script:m2tslist[$i]
    ffmpeg.exe -i "$location\$filename.m2ts" "$location\$filename.flac"
}