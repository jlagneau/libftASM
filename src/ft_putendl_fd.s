;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putendl_fd.s                                    :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/30 19:02:51 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/30 19:21:06 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include    "define/define.s"
%include    "define/macro.s"

section     .text
    global  sym(ft_putendl_fd)  ; int   ft_putendl(char *s, int fd)
    extern  sym(ft_putstr_fd)   ; int   ft_putstr(char *s, int fd)


sym(ft_putendl_fd):
    nop
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

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
    nop
    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret

section     .data

.nl db      EOL
