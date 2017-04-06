;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 01:58:46 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:52:00 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "depend/define.s"

global sym(ft_tolower)

section     .text

sym(ft_tolower):
    nop
    cmp     rdi, 0x41           ; if rdi < 'A'
    jl      .false

    cmp     rdi, 0x5A           ; if rdi > 'Z'
    jg      .false

    mov     rax, rdi            ; store rdi into rax
    add     rax, 0x20           ; add 32 to rax
    jmp     .end

.false:
    nop
    mov     rax, rdi

.end:
    ret
