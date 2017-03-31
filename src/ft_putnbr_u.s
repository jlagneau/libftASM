;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putnbr_u.s                                      :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/23 09:41:08 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/30 19:33:19 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

section     .text
    global  sym(ft_putnbr_u)    ; int   ft_putnbr_u(unsigned int n)
    extern  sym(ft_putnbr_u_fd) ; int   ft_putnbr_u_fd(unsigned int n, int fd)

sym(ft_putnbr_u):
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

    mov     rsi, STDOUT         ; put STDOUT into rsi

    call    sym(ft_putnbr_u_fd)

    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret
