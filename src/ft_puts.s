;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/24 18:15:48 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/22 08:04:14 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include	"define/define.s"

section     .text
    global	sym(ft_puts)				; int	ft_puts(char *)
    extern	sym(ft_putendl)				; int	ft_putendl(char *)


sym(ft_puts):
    push	rdi                         ; callee save rdi
    call	sym(ft_putendl)             ; call ft_putstr
    pop		rdi							; restore rdi
    ret
