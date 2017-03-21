;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/30 01:50:18 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/21 13:06:19 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section		.text
	global	ft_strlen
    global	_ft_strlen 			; size_t ft_strlen(char *)


ft_strlen:
_ft_strlen:
	push	rdi
	xor		rcx, rcx
	xor		rax, rax
	cmp		rdi, 0
	je		end
	mov		rdi, [rsp]
	not		rcx					; rcx = 9223372036854775807
	xor		al, al				; al = 0
	cld
	repne	scasb				; find al in rdi
	not		rcx					; invert rcx
	pop		rdi
	lea		rax, [rcx-1]

end:
	ret
