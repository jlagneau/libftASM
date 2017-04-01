;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/24 18:15:48 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:37:17 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include    "define/define.s"
%include    "define/macro.s"

global  sym(ft_puts)
extern  sym(ft_putendl)

section     .text

sym(ft_puts):
    nop
    test    rdi, rdi            ; if rdi is a null pointer
    jz      .is_null            ; goto .is_null

    call    sym(ft_putendl)     ; call ft_putendl

    jmp     .end                ; return rax

.is_null:
    nop

    sys_write STDOUT, .null, 7

    test    rax, rax            ; if rax < 0
    js      .end                ; return rax

    xor     rax, rax            ; rax = 0

.end:
    ret

section     .data

.null db    "(null)", 0x0a
