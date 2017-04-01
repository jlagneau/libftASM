;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 10:13:25 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/31 22:37:08 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

section     .text
    global  sym(ft_strcat)      ; char *ft_strcat(char *d, const char *s)
    extern  sym(ft_strlen)      ; size_t ft_strlen(char *s)
    extern  sym(ft_strcpy)      ; char *ft_strcpy(char *d, const char *s)

sym(ft_strcat):
    nop
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

    push    rdi                 ; save d ptr

    call    sym(ft_strlen)

    pop     rdi                 ; restore d ptr because strlen modify it
    push    rdi                 ; save original d ptr
    add     rdi, rax            ; modify d string ptr to be at its end

    call    sym(ft_strcpy)

    pop     rax                 ; return original d ptr

    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret
