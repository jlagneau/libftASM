;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/30 01:50:18 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:48:23 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include    "define/define.s"

global  sym(ft_strlen)

section     .text

sym(ft_strlen):
    nop
    xor     rax, rax        ; rax = 0 && al = 0
    xor     rcx, rcx        ; rcx = 0
    not     rcx             ; rcx = 9223372036854775807

    cld                     ; clear the direction flag
    repne   scasb           ; increment the string ptr in rdi until it find
                            ; al and decrement rcx at the same time

    not     rcx             ; invert rcx to get the length + 1
    lea     rax, [rcx - 1]  ; move the length into rax for return

.end:
    ret
