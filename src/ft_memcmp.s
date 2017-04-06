;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 05:58:49 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:36:34 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "depend/define.s"

global sym(ft_memcmp)

section     .text

sym(ft_memcmp):
    nop
    xor     rcx, rcx            ; rcx = 0
    xor     r8, r8              ; r8 = 0
    xor     r9, r9              ; r9 = 0

.loop:
    nop

    test    rdx, rdx            ; if rdx == 0
    jz      .end

    mov     r8b, [rdi + rcx]    ; r8 = s1[n]
    mov     r9b, [rsi + rcx]    ; r9 = s2[n]

    cmp     r8, r9              ; if s1[n] != s2[n]
    jne     .end

    dec     rdx
    inc     rcx

    jmp     .loop

.end:
    mov     rax, r8             ; return the diff between rdi and rsi
    sub     rax, r9

    ret
