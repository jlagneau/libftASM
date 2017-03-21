;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/24 18:15:48 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/21 09:17:45 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include	"define/define.s"

section 	.text
	global	ft_puts					; int		ft_puts(char *)
	extern	ft_strlen				; size_t	ft_strlen(char *)


ft_puts:
	mov		rbx, rdi				; put rdi into rbx

	call	ft_strlen				; put rdi string's length into rax
	mov		rcx, rax				; put rax into rcx

	mov 	rdi, STDOUT				; write 1st argument (file descriptor)
	mov 	rsi, rbx				; write 2nd argument (string to put in fd)
	mov 	rdx, rcx				; write 3rd argument (string size)
	push	rcx

	mov 	rax, SYSCALL(WRITE)		; get syscall write into rax
	syscall

	cmp		rax, 0					; if rax < 0
	jnae	_ft_puts_end			; return rax error

	mov		rdi, STDOUT				; write 1st argument (file descriptor)
	mov		rsi, _ft_puts_newline	; write 2nd argument (string to put in fd)
	mov		rdx, 1					; write 3rd argument (string size)

	mov		rax, SYSCALL(WRITE)		; get syscall write into rax
	syscall

	pop		rcx
	inc		rcx
	mov		rax, rcx

_ft_puts_end:
	ret

section		.data

_ft_puts_newline:
	db 		EOL
