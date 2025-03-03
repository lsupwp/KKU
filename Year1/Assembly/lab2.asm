INCLUDE C:\irvine\Irvine32.inc

.data
welcome BYTE "Welcome to Advanced Adder program!",0dh,0ah,0
one BYTE "Enter first number: ",0
two BYTE "Enter second number: ",0
three BYTE "Enter third number: ",0
asn BYTE "Total sum is: ",0

numone SDWORD ?
numtwo SDWORD ?
numthree SDWORD ?

.code
main PROC
    mov edx, OFFSET welcome
    call WriteString

    mov edx, OFFSET one
    call WriteString
    call ReadInt
    mov numone, eax

    mov edx, OFFSET two
    call WriteString
    call ReadInt
    mov numtwo, eax

    mov edx, OFFSET three
    call WriteString
    call ReadInt
    mov numthree, eax

    call DumpRegs

    mov eax, numone
    add eax, numtwo
    add eax, numthree

    mov edx, OFFSET asn
    call WriteString
    call WriteInt

main ENDP
END main