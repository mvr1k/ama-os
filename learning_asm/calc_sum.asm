.model flat,C
.code

CaclSum_ proc

; initialize the stack frame pointer
push ebp
mov ebp,esp

; load argument values
mov eax,[ebp+8]
mov ecx,[ebp+12]
mov edx,[ebp+16]

;calcilate the sum
add eax,ecx
add eax,edx

pop ebp
ret
CaclSum_ endp
end
