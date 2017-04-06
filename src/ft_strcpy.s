;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 18:08:43 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:41:34 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "depend/define.s"

global sym(ft_strcpy)
extern sym(ft_strlen)
extern sym(ft_bzero)
extern sym(ft_memcpy)

section     .text

sym(ft_strcpy):
    nop
    push    rdi                 ; save the d ptr

    mov     rdi, rsi            ; store rsi into rdi for strlen

    call    sym(ft_strlen)

    pop     rdi                 ; restore the d ptr
    mov     rdx, rax            ; store s length into rdx
    push    rsi                 ; save rsi

    mov     rsi, rax            ; store s length + 1 into rsi
    inc     rsi

    call    sym(ft_bzero)

    pop     rsi                 ; restore s ptr into rsi

    call    sym(ft_memcpy)

    ret
