;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 00:50:10 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:17:43 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

global  sym(ft_isalnum)
extern  sym(ft_isalpha)
extern  sym(ft_isdigit)

section     .text

sym(ft_isalnum):
    nop

    call    sym(ft_isalpha)

    test    rax, rax            ; if rax == 0
    jnz     .end

    call    sym(ft_isdigit)

.end:
    ret
