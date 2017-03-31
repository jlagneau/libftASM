;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 01:29:42 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/31 01:31:44 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

section     .text
    global  sym(ft_isprint)     ; int ft_isprint(int c)

sym(ft_isprint):
    nop
    cmp     rdi, 0x20           ; if rdi < 32
    jl      .false
    cmp     rdi, 0x7F           ; if rdi > 127
    jg      .false
    mov     rax, 1
    jmp     .end

.false:
    nop
    mov     rax, 0

.end:
    ret
