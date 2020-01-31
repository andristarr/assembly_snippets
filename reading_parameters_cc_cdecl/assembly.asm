.model flat

.code

; this is cdecl calling convetion args passed on the stack

;   params on the stack offset from esp:
; param5 +24
; param4 +20 
; param3 +16 
; param2 +12 
; param1  +8 
; old eip +4
; bp +0

_AddFiveNumbers proc

	push ebp           ; setup stack frame
	mov ebp, esp       ; setup stack frame

	sub esp, 4         ; create space for a local variable

	mov ecx, 60        ; initalize it with value 60d
	mov [ebp-4], ecx   ; initalize it with value 60d

	xor eax, eax       ; set eax to 0
	add eax, [ebp+8]   ; add first param to eax, comes from stack
	add eax, [ebp+12]  ; add second param to eax, comes from stack
	add eax, [ebp+16]  ; add third param to eax, comes from stack
	add eax, [ebp+20]  ; add fourth param to eax, comes from stack
	add eax, [ebp+24]  ; add fifth param to eax, comes from stack
	add eax, [ebp-4]   ; add local var to eax

	add esp, 4         ; clean up space of locals

	mov esp, ebp
	pop ebp

	ret

_AddFiveNumbers endp

end