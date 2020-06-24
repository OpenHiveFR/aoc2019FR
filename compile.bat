@echo off

set back = %cd%

for /d %%i in (day*) do (
    echo compiling %%i
    cd %%i
    pandoc -t html -o part1.phtml part1.md
    pandoc -t html -o part2.phtml part2.md
    del "%%i".html >NUL 2>&1
    copy /y NUL "%%i".html >NUL
    echo ^<section id='translation_part_one'^> > "%%i".html
    copy "%%i".html+part1.phtml "%%i".html >NUL
    echo ^</section^> >> "%%i".html
    echo ^<section id='translation_part_two'^> >> "%%i".html
    copy "%%i".html+part2.phtml "%%i".html >NUL
    echo ^</section^> >> "%%i".html
    cd ..
)