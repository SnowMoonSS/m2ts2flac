# m2ts2flac
将当前目录的`*.m2ts`文件中的音频提取出来并保存为`*.flac`文件

## 依赖
- Powershell；我只在Windows上用过，其它系统能不能用这个脚本我没试过
- [ffmpeg](https://github.com/FFmpeg/FFmpeg)；需要将其加入环境变量

## 使用
直接运行脚本，脚本会寻找当前文件夹中的`*.m2ts`文件，然后提取其中的音频并以flac格式保存在当前文件夹
