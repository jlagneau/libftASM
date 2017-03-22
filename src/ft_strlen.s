;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/30 01:50:18 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/22 08:06:40 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include	"define/define.s"

section		.text
    global	sym(ft_strlen)		; size_t ft_strlen(char *)


sym(ft_strlen):
    push	rdi					; callee save rdi
    xor		rcx, rcx			; rcx = 0
    xor		al, al				; al = 0
    not		rcx					; rcx = 9223372036854775807

    cmp		rdi, 0				; if the string in rdi a pointer on NULL
    je		.end				; return rax

    cld							; clear the direction flag
    repne	scasb				; increment the string ptr in rdi until it find
                                ; al and decrement rcx at the same time

    not		rcx					; invert rcx to get the length + 1
    pop		rdi					; restore rdi
    lea		rax, [rcx - 1]		; store the adjusted length into rax

.end:
    ret
