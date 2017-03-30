;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putstr_fd.s                                     :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/30 18:08:01 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/30 22:24:02 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"
%include "define/macro.s"

section     .text
    global  sym(ft_putstr_fd)   ; int       ft_putstr_fd(char *s, int fd)
    extern  sym(ft_strlen)      ; size_t    ft_strlen(char *s)

sym(ft_putstr_fd):
    nop
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

    push    rdi                 ; save rdi

    call    sym(ft_strlen)      ; put rdi string's length into rax

    mov     rdx, rax            ; store string's length into rdx
    mov     rdi, rsi            ; swap rdi and rsi
    pop     rsi

    test    rax, rax            ; if string length is 0
    jz      .end                ; return 0

    mov     rax, SYS_WRITE

    syscall

.end:
    nop
    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret
