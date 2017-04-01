;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 01:44:18 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:52:48 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

global  sym(ft_toupper)

section     .text

sym(ft_toupper):
    nop
    cmp     rdi, 0x61           ; if rdi < 'a'
    jl      .false

    cmp     rdi, 0x7A           ; if rdi > 'z'
    jg      .false

    mov     rax, rdi            ; store rdi into rax
    sub     rax, 0x20           ; substract 32 to rax
    jmp     .end

.false:
    nop
    mov     rax, rdi

.end:
    ret
