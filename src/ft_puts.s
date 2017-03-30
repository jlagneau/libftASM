;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/24 18:15:48 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/30 19:24:23 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include    "define/define.s"
%include    "define/macro.s"

section     .text
    global  sym(ft_puts)        ; int   ft_puts(char *)
    extern  sym(ft_putendl)     ; int   ft_putendl(char *)


sym(ft_puts):
    nop
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

    test    rdi, rdi            ; if rdi is a null pointer
    jz      .is_null            ; goto .is_null

    call    sym(ft_putendl)     ; call ft_putendl

    jmp     .end                ; return rax

.is_null:
    nop

    sys_write STDOUT, .null, 7

    test    rax, rax            ; if rax < 0
    js      .end                ; return rax

    xor     rax, rax            ; rax = 0

.end:
    nop
    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret

section     .data

.null db    "(null)", 0x0a
