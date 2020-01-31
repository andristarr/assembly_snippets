.code

; this is x64 calling convetion args passed in RCX, RDX, R8, and R9, others come on the stack

;   params on the stack offset from rsp:
; param5 +48
; param4 +40 (doesn't come on the stack but has space allocated because of shadow store)
; param3 +32 (doesn't come on the stack but has space allocated because of shadow store)
; param2 +24 (doesn't come on the stack but has space allocated because of shadow store)
; param1 +16 (doesn't come on the stack but has space allocated because of shadow store)
; old eip +8
; bp +0

AddFiveNumbers proc

	push rbp           ; setup stack frame
	mov rbp, rsp       ; setup stack frame

	sub rsp, 8         ; create space for a local variable

	mov r10, 60        ; initalize it with value 60d
	mov [rbp-8], r10   ; initalize it with value 60d

	xor rax, rax       ; set rax to 0
	add rax, rcx       ; add first param to rax
	add rax, rdx       ; add second param to rax
	add rax, r8        ; add third param to rax
	add rax, r9        ; add fourth param to rax
	add rax, [rbp+48]  ; add fifth param to rax, this comes on the store after the space allocated for the shadow store 
	add rax, [rbp-8]   ; add local var to rax

	add rsp, 8         ; clean up space of locals

	mov rsp, rbp
	pop rbp

	ret

AddFiveNumbers endp

end