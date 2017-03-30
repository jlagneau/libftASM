;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 01:44:18 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/31 01:56:29 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

section     .text
    global  sym(ft_toupper)     ; int ft_toupper(int c)

sym(ft_toupper):
    nop
    cmp     rdi, 0x61           ; if rdi < 'a'
    jl      .false
    cmp     rdi, 0x7A           ; if rdi > 'z'
    jg      .false
    mov     rax, rdi            ; store rdi into rax
    sub     rax, 0x20           ; add 32 to rax
    jmp     .end

.false:
    nop
    mov     rax, rdi

.end:
    ret
