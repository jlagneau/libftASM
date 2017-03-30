;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putchar.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/29 23:41:48 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/30 17:46:40 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"
%include "define/macro.s"

section     .text
    global  sym(ft_putchar)     ; int   ft_putchar(char c)

sym(ft_putchar):
    nop
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

    push    rdi                 ; push the char in parameter onto the stack

    mov     rax, SYS_WRITE      ; syscall write
    mov     rdi, 1              ; fd = 1
    lea     rsi, [rsp]          ; str = get address of the char from the stack
    mov     rdx, 1              ; length = 1

    syscall

    pop     rdi                 ; restore rdi

.end:
    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret
