;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 01:29:42 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:23:10 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

global  sym(ft_isprint)

section     .text

sym(ft_isprint):
    nop
    cmp     rdi, 0x20           ; if rdi < 32
    jl      .false

    cmp     rdi, 0x7F           ; if rdi > 127
    jg      .false

    mov     rax, 1              ; return 1
    jmp     .end

.false:
    nop
    mov     rax, 0              ; return 0

.end:
    ret
