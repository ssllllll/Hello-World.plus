global _start

section .text

_start:
  mov rax, 1
  mov rdi, 1
  mov rsi, msg
  mov rdx, msglen
  syscall

  mov rax, 60
  mov rdi, 0
  syscall

section .rodata
  msg: db "Hello world!", 10
  msglen: equ $ - msg

; nasm -f elf64 -o hello.o hello.s
; ld -o hello hello.o