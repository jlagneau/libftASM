;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/30 01:50:18 by jlagneau          #+#    #+#              ;
;    Updated: 2016/06/01 18:56:03 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global		ft_strlen 			; size_t ft_strlen(char *)

section		.text

ft_strlen:
	push	rdi
	xor		rcx, rcx
	xor		rax, rax
	cmp		rdi, 0
	je		_ft_strlen_end
	mov		rdi, [rsp]
	not		rcx					; rcx = 9223372036854775807
	xor		al, al				; al = 0
	cld
	repne	scasb				; find al in rdi
	not		rcx					; invert rcx
	pop		rdi
	lea		rax, [rcx-1]

_ft_strlen_end:
	ret
