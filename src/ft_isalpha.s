;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/30 23:44:17 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/31 00:00:37 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

section     .text
    global  sym(ft_isalpha)     ; int   ft_isalpha(int c)

sym(ft_isalpha):
    nop
    cmp     rdi, 0x41           ; if rdi < 65 (A or lower)
    jl      .false
    cmp     rdi, 0x7A           ; if rdi > 122 (z or greater)
    jg      .false
    cmp     rdi, 0x5B           ; if rdi < 91 (Z or lower)
    jl      .true
    cmp     rdi, 0x60           ; if rdi > 96 (a or greater)
    jg      .true
    jmp     .false

.true:
    nop
    mov     rax, 1
    jmp     .end

.false:
    nop
    mov     rax, 0

.end:
    ret
