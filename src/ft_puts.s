;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/24 18:15:48 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/21 19:44:21 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include	"define/define.s"
%include	"define/macro.s"

section 	.text
	global	sym(ft_puts)				; int		ft_puts(char *)
	extern	sym(ft_strlen)				; size_t	ft_strlen(char *)


sym(ft_puts):
	mov		rbx, rdi					; put the string at rdi into rbx

	call	sym(ft_strlen)				; put rdi string's length into rax
	mov		rcx, rax					; put rax into rcx
	push	rcx							; save length

	s_write STDOUT, rbx, rcx

	cmp		rax, 0						; if rax < 0
	jnae	end_puts					; return rax error

    s_write STDOUT, newline_puts, 1

	cmp		rax, 0						; if rax < 0
	jnae	end_puts					; return rax error

	pop		rcx                 		; get back the length
	inc		rcx							; increase it
	mov		rax, rcx					; and store it into rax for return

end_puts:
	ret

section		.data
	newline_puts db EOL
