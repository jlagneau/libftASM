;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/04/01 02:06:50 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:42:46 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

global  sym(ft_strdup)
extern  sym(ft_strnew)
extern  sym(ft_strlen)
extern  sym(ft_strcpy)

section     .text

sym(ft_strdup):
    nop
    push    rdi                 ; save rdi

    call    sym(ft_strlen)

    mov     rdi, rax            ; move string s length into rdi

    call    sym(ft_strnew)

    mov     rdi, rax            ; move new string ptr with the same length as s
    pop     rsi                 ; into rdi and get back original string s ptr
                                ; into rsi
    call    sym(ft_strcpy)

    ret
