;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putchar_fd.s                                    :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/30 17:53:37 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:29:38 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

global  sym(ft_putchar_fd)

section     .text

sym(ft_putchar_fd):
    nop
    push    rdi                 ; push the char in parameter onto the stack

    mov     rax, SYS_WRITE      ; syscall write
    mov     rdi, rsi            ; fd = rsi
    lea     rsi, [rsp]          ; str = get address of the char from the stack
    mov     rdx, 1              ; length = 1

    syscall

    pop     rdi                 ; restore rdi
    ret
