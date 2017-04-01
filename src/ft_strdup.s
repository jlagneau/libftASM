;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/04/01 02:06:50 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 02:28:24 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

section     .text
    global  sym(ft_strdup)      ; char *ft_strnew(const char *s)
    extern  sym(ft_strnew)      ; char *ft_strnew(size_t n)
    extern  sym(ft_strlen)      ; size_t ft_strlen(const char *s)
    extern  sym(ft_strcpy)      ; char *ft_strcpy(char *d, const char *s)

sym(ft_strdup):
    nop

    push    rdi                 ; save rdi

    call    sym(ft_strlen)

    mov     rdi, rax            ; move string s length into rdi

    call    sym(ft_strnew)

    mov     rdi, rax            ; move new string ptr with the same length as s
    pop     rsi                 ; into rdi and get back original string s ptr
                                ; into rsi
    call    sym(ft_strcpy)
    ret
