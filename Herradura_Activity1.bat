@echo off
setlocal enabledelayedexpansion

set /p grd1= Enter the score for Exam 1 (out of 100): 
set /p grd2= Enter the score for Exam 2 (out of 100): 
set /p grd3= Enter the score for Exam 3 (out of 100): 
set /p att= Enter the attendance points (out of 10):  

set /a final=(grd1+grd2+grd3)/ 3


echo.

if %att% equ 10 (
    set /a final+=5
    echo Numerical Grade: !final! (including attendance bonus^^^)
)  else (
    echo Numerical Grade: %final%
)

if %final% geq 90 (
    echo Letter Grade: A 
) else if %final% geq 80 (
    echo Letter Grade: B
) else if %final% geq 70 (
    echo Letter Grade: C
) else if %final% geq 60 (
    echo Letter Grade: D
) else (
    echo Letter Grade: F
)

pause
