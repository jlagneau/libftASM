;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putendl.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/21 19:57:45 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/29 20:37:19 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include    "define/define.s"
%include    "define/macro.s"

section     .text
    global  sym(ft_putendl)     ; int   ft_putendl(char *)
    extern  sym(ft_putstr)      ; int   ft_putstr(char *)


sym(ft_putendl):
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

    call    sym(ft_putstr)      ; call ft_putstr
    test    rax, rax            ; if rax < 0
    js      .end                ; return rax error

    push    rax                 ; store the length from rax

    sys_write STDOUT, .newline, 1

    test    rax, rax            ; if rax < 0
    js      .end                ; return rax error

    pop     rax                 ; restore rax
    inc     rax                 ; and increment it

.end:
    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret

section     .data

.newline:
    db      EOL
