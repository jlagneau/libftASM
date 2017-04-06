;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 01:10:42 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:20:55 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "depend/define.s"

global sym(ft_isascii)

section     .text

sym(ft_isascii):
    nop
    cmp     rdi, 0x00           ; if rdi < 0
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
