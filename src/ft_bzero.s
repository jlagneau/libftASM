;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 05:37:22 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:14:48 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

global  sym(ft_bzero)
extern  sym(ft_memset)

section     .text

sym(ft_bzero):
    nop
    mov     rdx, rsi            ; rdx = rsi
    xor     rsi, rsi            ; rsi = 0

    call    sym(ft_memset)

    ret
