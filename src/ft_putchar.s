;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putchar.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/29 23:41:48 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/30 18:05:03 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

section     .text
    global  sym(ft_putchar)     ; int   ft_putchar(char c)
    extern  sym(ft_putchar_fd)  ; int   ft_putchar_fd(char c, int fd)

sym(ft_putchar):
    nop
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

    push    rdi                 ; save rdi
    push    rsi                 ; save rsi

    mov     rsi, STDOUT         ; set the fd

    call    sym(ft_putchar_fd)

    pop     rsi                 ; restore rsi
    pop     rdi                 ; restore rdi

    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret
