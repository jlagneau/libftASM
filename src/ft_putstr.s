;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putstr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/21 19:48:24 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/22 17:15:13 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"
%include "define/macro.s"

section     .text
    global  sym(ft_putstr)      ; int       ft_putstr(char *)
    extern  sym(ft_strlen)      ; size_t    ft_strlen(char *)

sym(ft_putstr):
    mov     rsi, rdi            ; put the string at rdi into rsi

    call    sym(ft_strlen)      ; put rdi string's length into rax
    mov     rdx, rax            ; store the length in rdx
    mov     rbx, rax            ; store the length in rbx

    cmp     rax, 0              ; if parameter is NULL
    je      .end                ; return 0


    s_write STDOUT, rsi, rdx

    cmp     rax, 0              ; if rax < 0
    jnae    .end                ; return rax error

    mov     rax, rbx            ; store the length into rax for return

.end:
    ret
