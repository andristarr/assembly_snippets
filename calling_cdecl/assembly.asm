.386
.model flat

; this is cdecl so is caller clean-up
; params passed from right to left on stack
; return value in eax

.code

EXTERN _CallMeByCdecl :PROC

_CallCdecl proc

	push ebp           ; setup stack frame
	mov ebp, esp       ; setup stack frame

					   ; sub esp, 16 making space for local vars

					   ; saving caller saved vars
					   ; mov [esp-4], eax    eax saved
					   ; mov [esp-8], ecx    ecx saved
					   ; mov [esp-12], edx   edx saved

	push 100
	push 50
	push 30
	push 10
	push 9

	call _CallMeByCdecl
	
	add eax, 1         ; set the return value to 2

	mov esp, ebp       ; clean up of stack params
	pop ebp

	ret

_CallCdecl endp

end