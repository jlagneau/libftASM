;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putstr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/21 19:48:24 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:38:11 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "depend/define.s"

global sym(ft_putstr)
extern sym(ft_putstr_fd)

section     .text

sym(ft_putstr):
    nop
    mov     rsi, STDOUT         ; put STDOUT in rsi

    call    sym(ft_putstr_fd)

    ret
