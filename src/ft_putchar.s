;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putchar.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/29 23:41:48 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:27:39 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

global  sym(ft_putchar)
extern  sym(ft_putchar_fd)

section     .text

sym(ft_putchar):
    nop
    push    rdi                 ; save rdi
    push    rsi                 ; save rsi

    mov     rsi, STDOUT         ; set the fd

    call    sym(ft_putchar_fd)

    pop     rsi                 ; restore rsi
    pop     rdi                 ; restore rdi
    ret
