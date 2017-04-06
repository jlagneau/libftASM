;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 10:04:50 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:35:14 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "depend/define.s"

global sym(ft_memcpy)

section     .text

sym(ft_memcpy):
    nop
    push    rdi                 ; save d ptr
    mov     rcx, rdx            ; rcx = n

    cld                         ; clear direction flag
    rep     movsb               ; move byte in rdi to rsi and increment both
                                ; ptr until rcx reach 0

    pop     rax                 ; return d
    ret
