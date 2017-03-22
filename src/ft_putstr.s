;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putstr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau </var/spool/mail/jlagneau>        +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/21 19:48:24 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/22 08:06:13 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"
%include "define/macro.s"

section     .text
    global	sym(ft_putstr)				; int		ft_putstr(char *)
    extern	sym(ft_strlen)				; size_t	ft_strlen(char *)

sym(ft_putstr):
    push	rdi                         ; callee save rdi
    mov		rbx, rdi					; put the string at rdi into rbx

    call	sym(ft_strlen)				; put rdi string's length into rax
    mov		rcx, rax					; put rax into rcx

    s_write STDOUT, rbx, rcx

    cmp		rax, 0						; if rax < 0
    jnae	.end						; return rax error

    inc		rcx							; increase it
    pop		rdi							; restore rdi
    mov		rax, rcx					; and store it into rax for return

.end:
    ret
