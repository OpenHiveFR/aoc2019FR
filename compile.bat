@echo off

set back = %cd%

for /d %%i in (day*) do (
    echo compiling %%i
    cd %%i
    pandoc -t html -o part1.phtml part1.md
    pandoc -t html -o part2.phtml part2.md
    cd ..
)