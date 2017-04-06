;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 10:13:25 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:39:55 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "depend/define.s"

global sym(ft_strcat)
extern sym(ft_strlen)
extern sym(ft_strcpy)

section     .text

sym(ft_strcat):
    nop
    push    rdi                 ; save d ptr

    call    sym(ft_strlen)

    pop     rdi                 ; restore d ptr because strlen modify it
    push    rdi                 ; save original d ptr
    add     rdi, rax            ; modify d string ptr to be at its end

    call    sym(ft_strcpy)

    pop     rax                 ; return original d ptr
    ret
