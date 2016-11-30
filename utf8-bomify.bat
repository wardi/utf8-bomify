@echo off

if exist "%1" (
    echo creating %1-bom.csv...
) else (
    echo drag a CSV file onto this script to create
    echo a copy of with a UTF8 BOM prepended, then
    echo automatically open that file in Excel
    pause
    exit
)

set "BOM=﻿"
<nul set /p = %BOM%> %1-bom.csv
type %1 >> %1-bom.csv
start %1-bom.csv
