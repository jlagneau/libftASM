;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putnbr_u.s                                      :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/23 09:41:08 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:34:55 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

global  sym(ft_putnbr_u)
extern  sym(ft_putnbr_u_fd)

section     .text

sym(ft_putnbr_u):
    nop
    mov     rsi, STDOUT         ; put STDOUT into rsi

    call    sym(ft_putnbr_u_fd)

    ret
