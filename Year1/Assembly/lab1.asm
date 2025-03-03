INCLUDE C:\irvine\Irvine32.inc

.data
hello BYTE "Hello World!", 0dh, 0ah, 0

.code
main PROC
    mov edx, OFFSET hello
    call WriteString
main ENDP
END main