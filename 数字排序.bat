@echo off
setlocal enabledelayedexpansion

:: 设置文件前缀和初始编号
set "prefix=high-res-image
set "number=1"

:: 遍历当前目录中所有的 .jpg 文件
for %%f in (*.jpg) do (
    :: 设置文件名格式为三位数，使用前导零补足
    set "newname=!prefix!!number:~-3!.jpg"
    echo Renaming "%%f" to "!newname!"
    
    :: 进行重命名
    ren "%%f" "!newname!"
    
    :: 编号递增
    set /a number+=1
)

echo All files have been renamed.
pause
