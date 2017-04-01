;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putnbr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/23 09:41:08 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 17:41:39 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

global  sym(ft_putnbr)
extern  sym(ft_putnbr_fd)

section     .text

sym(ft_putnbr):
    nop
    mov     rsi, STDOUT         ; put STDOUT into rsi

    call    sym(ft_putnbr_fd)

    ret
