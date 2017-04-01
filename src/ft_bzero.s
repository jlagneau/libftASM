;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 05:37:22 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/31 19:04:23 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

section     .text
    global  sym(ft_bzero)       ; void *ft_bzero(void *s, size_t n)
    extern  sym(ft_memset)      ; void *ft_memset(void *s, int c, size_t n)

sym(ft_bzero):
    nop
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

    mov     rdx, rsi            ; rdx = rsi
    xor     rsi, rsi            ; rsi = 0

    call    sym(ft_memset)

    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret
