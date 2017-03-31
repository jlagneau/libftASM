;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putendl.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/21 19:57:45 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/30 19:19:20 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include    "define/define.s"

section     .text
    global  sym(ft_putendl)     ; int   ft_putendl(char *s)
    extern  sym(ft_putendl_fd)  ; int   ft_putendl(char *s, int fd)


sym(ft_putendl):
    nop
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

    mov     rsi, STDOUT         ; put STDOUT in rsi

    call    sym(ft_putendl_fd)

    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret
