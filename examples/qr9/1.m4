include(`commons.m4').text:00541348 push    ebx
.text:00541349 push    esi
.text:0054134A push    edi
.text:0054134B push    2               ; Origin
.text:0054134D push    0               ; Offset
.text:0054134F push    ebp             ; File

; _EN(`move current file position to the end')_RU(`переместить текущую позицию файла на конец')
.text:00541350 call    _fseek
.text:00541355 push    ebp             ; File
.text:00541356 call    _ftell          ; _EN(`get current file position')_RU(`узнать текущую позицию')
.text:0054135B push    0               ; Origin
.text:0054135D push    0               ; Offset
.text:0054135F push    ebp             ; File
.text:00541360 mov     [esp+2Ch+Str], eax

; _EN(`move current file position to the start')_RU(`переместить текущую позицию файла на начало')
.text:00541364 call    _fseek