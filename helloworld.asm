extern _GetStdHandle@4      
extern _WriteFile@20        
extern _ExitProcess@4       

global Start                

section .text               

Start:                      

    push    -11             
    call    _GetStdHandle@4 
    mov     ebx, eax        


    push    0               
    lea     eax, [ebp-4]    
    push    eax             
    push    msg_len         
    push    msg             
    push    ebx             
    call    _WriteFile@20   


    push    0               
    call    _ExitProcess@4  

section .data               
    msg db  'Hello world!'  
    msg_len equ $-msg       
