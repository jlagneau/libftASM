;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putendl.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/21 19:57:45 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/29 16:45:29 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include    "define/define.s"
%include    "define/macro.s"

section     .text
    global  sym(ft_putendl)		; int   ft_putendl(char *)
    extern  sym(ft_putstr)      ; int   ft_putstr(char *)


sym(ft_putendl):
    call    sym(ft_putstr)      ; call ft_putstr
    cmp     rax, 0              ; if rax < 0
    jnae    .end                ; return rax error

    mov     rbx, rax            ; store the length into rbx

    s_write STDOUT, .newline, 1

    cmp     rax, 0              ; if rax < 0
    jnae    .end                ; return rax error

    lea     rax, [rbx + 1]      ; increment the length for return

.end:
    ret

section     .data
    .newline db EOL
