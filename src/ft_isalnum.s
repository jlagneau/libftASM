;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 00:50:10 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/31 01:00:35 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

section     .text
    global  sym(ft_isalnum)     ; int ft_isalnum(int n)
    extern  sym(ft_isalpha)     ; int ft_isalpha(int n)
    extern  sym(ft_isdigit)     ; int ft_isdigit(int n)

sym(ft_isalnum):
    nop
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

    call    sym(ft_isalpha)

    test    rax, rax
    jnz     .end

    call    sym(ft_isdigit)

.end:
    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret
