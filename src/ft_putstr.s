;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putstr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/21 19:48:24 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/30 18:51:50 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

section     .text
    global  sym(ft_putstr)      ; int   ft_putstr(char *s)
    extern  sym(ft_putstr_fd)   ; int   ft_putstr_fd(char *s, int fd)

sym(ft_putstr):
    nop
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

    mov     rsi, STDOUT         ; put STDOUT in rsi

    call    sym(ft_putstr_fd)

    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret
