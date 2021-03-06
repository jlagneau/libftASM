;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/04/02 19:39:14 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/05 22:53:53 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "depend/define.s"
%include "depend/macro.s"

BUFF_SIZE   equ     4096

global sym(ft_cat)

section     .text

sym(ft_cat):
    nop

.loop:
    nop
    push    rdi                 ; backup rdi (file descriptor)
    mov     rsi, .buff          ; rsi = .buff
    mov     rdx, BUFF_SIZE      ; rdx = BUFF_SIZE

    sys_read rdi, rsi, rdx

    cmp     rax, 0x00           ; if rax <= 0
    jle     .end                ; read failed (-1) or EOF reached

    mov     rdx, rax            ; store read size into rdx
    push    rdx                 ; backup read length

    sys_write STDOUT, rsi, rdx

    pop     rdx                 ; restore read length

    cmp     rax, rdx            ; if rax != rdx
    jne     .end                ; failed to write the appropriated size

    pop     rdi                 ; restore the file descriptor to read
    jmp     .loop

.end:
    pop     rdi                 ; restore rdi
    ret

section     .bss

.buff resb BUFF_SIZE
