;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 05:22:36 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:26:30 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include    "define/define.s"

global  sym(ft_memset)

section     .text

sym(ft_memset):
    nop

    push    rdi                 ; store s ptr

    mov     rcx, rdx            ; rcx = n
    mov     rax, rsi            ; rax = c

    cld                         ; clear direction flag
    rep     stosb               ; store al (rax) in rdi and increment rdi ptr
                                ; until rcx reach 0
    pop     rdi                 ; return s ptr
    mov     rax, rdi
    ret
