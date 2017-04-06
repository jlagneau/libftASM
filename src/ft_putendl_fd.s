;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putendl_fd.s                                    :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/30 19:02:51 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:33:07 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "depend/define.s"
%include "depend/macro.s"

global sym(ft_putendl_fd)
extern sym(ft_putstr_fd)

section     .text

sym(ft_putendl_fd):
    nop
    push    rdi                 ; save rdi
    push    rsi                 ; save rsi

    call    sym(ft_putstr_fd)   ; call ft_putstr_fd

    pop     rdi                 ; swap rdi and rsi
    pop     rsi

    test    rax, rax            ; if rax < 0
    js      .end                ; return rax error

    push    rax                 ; store the length from rax

    sys_write rdi, .nl, 1

    pop     rcx                 ; restore the length into rcx

    test    rax, rax            ; if rax < 0
    js      .end                ; return rax error

    mov     rax, rcx            ; move the length into rax for return
    inc     rax                 ; and increment it

.end:
    ret

section     .data

.nl db      EOL
