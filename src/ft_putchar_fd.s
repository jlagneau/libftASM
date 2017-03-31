;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putchar_fd.s                                    :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/30 17:53:37 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/30 18:04:35 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

section     .text
    global  sym(ft_putchar_fd)  ; int   ft_putchar_fd(char c, int fd)

sym(ft_putchar_fd):
    nop
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

    push    rdi                 ; push the char in parameter onto the stack

    mov     rax, SYS_WRITE      ; syscall write
    mov     rdi, rsi            ; fd = rsi
    lea     rsi, [rsp]          ; str = get address of the char from the stack
    mov     rdx, 1              ; length = 1

    syscall

    pop     rdi                 ; restore rdi

    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret
