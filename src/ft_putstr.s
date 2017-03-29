;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putstr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/21 19:48:24 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/29 20:09:17 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"
%include "define/macro.s"

section     .text
    global  sym(ft_putstr)      ; int       ft_putstr(char *)
    extern  sym(ft_strlen)      ; size_t    ft_strlen(char *)

sym(ft_putstr):
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

    mov     rsi, rdi            ; put the string at rdi into rsi

    call    sym(ft_strlen)      ; put rdi string's length into rax
    mov     rdx, rax            ; store the length in rdx
    push    rdx                 ; push rdx into the stack

    test    rax, rax            ; if string length is 0
    jz      .end                ; return 0

    sys_write STDOUT, rsi, rdx

    test    rax, rax            ; if rax < 0
    js      .end                ; return rax error

    pop     rdx                 ; pop rdx from the stack
    mov     rax, rdx            ; store the length into rax for return

.end:
    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret
