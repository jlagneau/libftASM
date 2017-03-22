;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putendl.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau </var/spool/mail/jlagneau>        +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/21 19:57:45 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/22 08:05:57 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include	"define/define.s"
%include	"define/macro.s"

section     .text
    global	sym(ft_putendl)				; int	ft_putendl(char *)
    extern	sym(ft_putstr)				; int	ft_putstr(char *)


sym(ft_putendl):
    push	rdi                         ; callee save rdi
    call	sym(ft_putstr)              ; call ft_putstr
    cmp		rax, 0						; if rax < 0
    jnae	.end						; return rax error

    mov		rbx, rax                    ; store the length into rbx

    s_write STDOUT, .newline, 1

    cmp		rax, 0						; if rax < 0
    jnae	.end						; return rax error

    inc		rbx							; increase it
    pop		rdi							; restore rdi
    mov		rax, rbx					; and store it into rax for return

.end:
    ret

section		.data
    .newline db EOL
