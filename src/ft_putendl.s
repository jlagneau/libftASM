;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putendl.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/21 19:57:45 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/06 08:11:13 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "depend/define.s"

global sym(ft_putendl)
extern sym(ft_putendl_fd)

section     .text

sym(ft_putendl):
    nop
    mov     rsi, STDOUT         ; put STDOUT in rsi

    call    sym(ft_putendl_fd)

    ret
