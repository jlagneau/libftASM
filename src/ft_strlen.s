;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/30 01:50:18 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/30 18:59:14 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include    "define/define.s"

section     .text
    global  sym(ft_strlen)  ; size_t ft_strlen(char *)

sym(ft_strlen):
    nop
    xor     rax, rax        ; rax = 0 && al = 0
    xor     rcx, rcx        ; rcx = 0
    not     rcx             ; rcx = 9223372036854775807

    test    rdi, rdi        ; if the string in rdi a null pointer
    jz      .end            ; return 0

    cld                     ; clear the direction flag
    repne   scasb           ; increment the string ptr in rdi until it find
                            ; al and decrement rcx at the same time

    not     rcx             ; invert rcx to get the length + 1
    lea     rax, [rcx - 1]  ; move the length into rax for return

.end:
    nop
    ret
