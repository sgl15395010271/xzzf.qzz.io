@echo off
chcp 65001 >nul
cd /d "%~dp0"

set /p NAME=请输入文章文件夹名（直接输中文也行）: 
set /p TITLE=请输入文章标题: 
set /p DESC=请输入文章简介（description）: 
set /p WEIGHT=请输入排序权重（weight，数字越小越靠前）: 
set /p TAGS=请输入标签（多个用逗号分隔，如 OI,学习笔记）: 
set /p URGENT=是否急着要（1=急，用昨天日期；0=不急，用今天日期）: 

if "%URGENT%"=="1" (
    for /f %%i in ('powershell -Command "Get-Date (Get-Date).AddDays(-1) -Format 'yyyy-MM-dd'"') do set DATE=%%i
) else (
    for /f %%i in ('powershell -Command "Get-Date -Format 'yyyy-MM-dd'"') do set DATE=%%i
)

set "TARGET=%~dp0content\post\%NAME%"
mkdir "%TARGET%"

(
echo ---
echo title: "%TITLE%"
echo date: "%DATE%"
echo description: "%DESC%"
echo weight: %WEIGHT%
) > "%TARGET%\index.md"

REM 处理 tags：把逗号分隔转成 YAML 列表
if not "%TAGS%"=="" (
    echo tags: >> "%TARGET%\index.md"
    for /f "tokens=1,* delims=," %%a in ("%TAGS%") do (
        echo   - %%a >> "%TARGET%\index.md"
        if not "%%b"=="" (
            for /f "tokens=1,* delims=," %%c in ("%%b") do (
                echo   - %%c >> "%TARGET%\index.md"
                if not "%%d"=="" (
                    for /f "tokens=1,* delims=," %%e in ("%%d") do (
                        echo   - %%e >> "%TARGET%\index.md"
                    )
                )
            )
        )
    )
)

echo --- >> "%TARGET%\index.md"
echo. >> "%TARGET%\index.md"

echo.
echo 已创建 %TARGET%\index.md
echo 日期: %DATE%
echo.
echo 现在用编辑器打开 index.md 写正文
pause