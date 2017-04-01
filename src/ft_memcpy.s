;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 10:04:50 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/31 22:33:33 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

section     .text
    global  sym(ft_memcpy)      ; void *ft_memcpy(void *d, void *s, size_t n)

sym(ft_memcpy):
    nop

    push    rdi                 ; save d ptr
    mov     rcx, rdx            ; rcx = n

    cld                         ; clear direction flag
    rep     movsb               ; move byte in rdi to rsi and increment both
                                ; ptr until rcx reach 0

    pop     rax                 ; return d
    ret
