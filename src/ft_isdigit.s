;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 00:01:37 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:22:08 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "depend/define.s"

global sym(ft_isdigit)

section     .text

sym(ft_isdigit):
    nop
    cmp     rdi, 0x30           ; if rdi < '0'
    jl      .false

    cmp     rdi, 0x39           ; if rdi > '9'
    jg      .false

    mov     rax, 1              ; return 1
    jmp     .end

.false:
    nop
    mov     rax, 0              ; return 0

.end:
    ret
