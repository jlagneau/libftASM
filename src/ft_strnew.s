;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strnew.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/04/01 01:18:54 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:50:38 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

global  sym(ft_strnew)
extern  sym(ft_bzero)
extern  sym(malloc)

section     .text

sym(ft_strnew):
    nop
    inc     rdi                 ; n + 1 for char NUL
    xor     rax, rax            ; rax = 0
    push    rdi                 ; save n

    call    sym(malloc)

    mov     rdi, rax            ; save malloc'd ptr into rdi
    pop     rsi                 ; restore n

    test    rax, rax            ; if malloc'd ptr == NULL
    jz      .end

    call    sym(ft_bzero)

.end:
    ret
