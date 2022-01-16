#获取当前文件夹下所有m2ts格式文件的文件名，并存入m2tslist
[array]$m2tslist = (Get-Item .\*.m2ts).BaseName
#获取当前文件夹的绝对路径，并存入location
$location = Get-Location

#将数组m2tslist中对象的数量存入i
$i = $m2tslist.Count
#当i大于0时
while ($i -gt 0){
    #i-1；数组中对象的编号是从0开始的
    $i --
    #将数组m2tslist中第(i+1)个对象存入filename
    $filename = $script:m2tslist[$i]
    #调用ffmpeg，将*.m2ts中的音频提取为*.flac
    ffmpeg.exe -i "$location\$filename.m2ts" "$location\$filename.flac"
}