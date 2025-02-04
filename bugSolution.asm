cmp ebx, -4
jle invalid_memory_access ; Check if ebx+4 is a valid address
mov eax, [ebx + 4] ; Read from memory only if the address is valid
jmp next_instruction
invalid_memory_access:
; Handle the invalid memory access error
; For example, you might set eax to 0 or call an error handler.
mov eax, 0
next_instruction: ; Continue execution