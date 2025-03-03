INCLUDE C:\irvine\Irvine32.inc

.data
msgCF BYTE "Carry Flag (CF) = SET", 0
msgZF BYTE "Zero Flag (ZF) = SET", 0
msgOF BYTE "Overflow Flag (OF) = SET", 0

.code
main PROC
    mov al, 255
    add al, 1

    jc showCF
    jz showZF
    jo showOF

    jmp endProgram

showCF:
    mov edx, OFFSET msgCF
    call WriteString
    call CrLf
    jmp endProgram
showZF:
    mov edx, OFFSET msgZF
    call WriteString
    call CrLf
    jmp endProgram
showOF:
    mov edx, OFFSET msgOF
    call WriteString
    call CrLf
    jmp endProgram
endProgram:
    exit
main ENDP
END main