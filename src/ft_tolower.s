;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/31 01:58:46 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/31 02:00:13 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

section     .text
    global  sym(ft_tolower)     ; int ft_tolower(int c)

sym(ft_tolower):
    nop
    cmp     rdi, 0x41           ; if rdi < 'A'
    jl      .false
    cmp     rdi, 0x5A           ; if rdi > 'Z'
    jg      .false
    mov     rax, rdi            ; store rdi into rax
    add     rax, 0x20           ; add 32 to rax
    jmp     .end

.false:
    nop
    mov     rax, rdi

.end:
    ret
