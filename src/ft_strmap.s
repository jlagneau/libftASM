;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strmap.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/04/01 01:59:32 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/05 23:11:38 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "depend/define.s"

global sym(ft_strmap)

section     .text

sym(ft_strmap):
    nop
    xor     rcx, rcx            ; rcx = 0
    xor     r8, r8              ; r8 = 0

.loop:
    nop
    mov     r8b, [rdi + rcx]    ; r8 = s[rcx]

    test    r8, r8              ; if r8 == 0
    jz      .end

    push    rdi                 ; save rdi
    mov     rdi, r8             ; put character in rdi

    call    rsi                 ; call function ptr

    pop     rdi                 ; restore rdi

    mov     [rdi + rcx], al     ; s[rcx] = al (lower 8 bits of rax)

    inc     rcx
    jmp     .loop

.end:
    mov     rax, rdi            ; return original string ptr
    ret
