;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/30 01:50:18 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/21 14:07:15 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include	"define/define.s"

section		.text
	global	sym(ft_strlen)		; size_t ft_strlen(char *)


sym(ft_strlen):
	push	rdi
	xor		rcx, rcx
	xor		rax, rax
	cmp		rdi, 0
	je		sym(end)
	mov		rdi, [rsp]
	not		rcx					; rcx = 9223372036854775807
	xor		al, al				; al = 0
	cld
	repne	scasb				; find al in rdi
	not		rcx					; invert rcx
	pop		rdi
	lea		rax, [rcx-1]

sym(end):
	ret
