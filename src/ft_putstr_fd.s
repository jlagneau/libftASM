;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putstr_fd.s                                     :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/30 18:08:01 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 04:38:53 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"
%include "define/macro.s"

global  sym(ft_putstr_fd)
extern  sym(ft_strlen)

section     .text

sym(ft_putstr_fd):
    nop
    push    rdi                 ; save rdi

    call    sym(ft_strlen)      ; put rdi string's length into rax

    mov     rdx, rax            ; store string's length into rdx
    mov     rdi, rsi            ; swap rdi and rsi
    pop     rsi

    test    rax, rax            ; if string length is 0
    jz      .end                ; return 0

    mov     rax, SYS_WRITE

    syscall

.end:
    ret
