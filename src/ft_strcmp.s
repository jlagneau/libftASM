;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 22:52:30 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/31 23:23:16 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

section     .text
    global  sym(ft_strcmp)      ; int ft_strcmp(void *s1, void *s2)

sym(ft_strcmp):
    nop

    xor     rcx, rcx            ; rcx = 0
    xor     r8, r8              ; r8 = 0
    xor     r9, r9              ; r9 = 0

.loop:
    nop

    mov     r8b, [rdi + rcx]    ; r8 = s1[rcx]
    mov     r9b, [rsi + rcx]    ; r9 = s2[rcx]

    test    r8, r8              ; if r8 == 0
    jz      .end

    test    r9, r9              ; if r9 == 0
    jz      .end

    cmp     r8, r9              ; if s1[rcx] != s2[rcx]
    jne     .end

    inc     rcx

    jmp     .loop

.end:
    mov     rax, r8             ; return the diff between rdi and rsi
    sub     rax, r9

    ret
