mov ecx, [some_size_register]

; Check for potential overflow before calculation
cmp ecx, 0xFFFFFFFF ; Assuming 32-bit registers
jge overflow_check

mov eax, [ebx+ecx*4]
jmp after_calculation

; Overflow handling section
overflow_check:
; Handle the overflow - for example, signal an error or use a safe default address
; ... your overflow handling code here...
mov eax, 0; Set a safe default value
after_calculation: