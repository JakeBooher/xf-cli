@echo off

SET FILE=cmd.php
if exist %FILE% (
    php %FILE% %*
) else (
    if "%XENFORO_PATH%"=="" (
        echo It does not appear you are in a valid XenForo 2 directory.
    ) else (
        php %XENFORO_PATH%%FILE% %*
    )
)
