;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/24 18:15:48 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/29 16:45:20 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include    "define/define.s"
%include    "define/macro.s"

section     .text
    global  sym(ft_puts)        ; int   ft_puts(char *)
    extern  sym(ft_putendl)     ; int   ft_putendl(char *)


sym(ft_puts):
    cmp     rdi, 0
    je      .is_null

    call    sym(ft_putendl)     ; call ft_putstr
    jmp     .end

.is_null:
    s_write STDOUT, .null, .len
    cmp     rax, 0
    jnae    .end
    mov     rax, 0

.end:
    ret

section     .data
    .null   db "(null)"
    .len    equ $ - .null
