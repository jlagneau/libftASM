;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 18:08:43 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/31 19:48:07 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

section     .text
    global  sym(ft_strcpy)      ; char *ft_strcpy(char *d, const char *s)
    extern  sym(ft_strlen)      ; size_t ft_strlen(char *s)
    extern  sym(ft_bzero)       ; void ft_bzero(void *s, size_t n)
    extern  sym(ft_memcpy)      ; void *ft_memcpy(void *d, void *s, size_t n)

sym(ft_strcpy):
    nop
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

    push    rdi                 ; save the d ptr

    mov     rdi, rsi            ; store rsi into rdi for strlen

    call    sym(ft_strlen)

    pop     rdi                 ; restore the d ptr
    mov     rdx, rax            ; store s length into rdx
    push    rsi                 ; save rsi

    mov     rsi, rax            ; store s length + 1 into rsi
    inc     rsi

    call    sym(ft_bzero)

    pop     rsi                 ; restore s ptr into rsi

    call    sym(ft_memcpy)

    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret
