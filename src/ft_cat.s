;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau </var/spool/mail/jlagneau>        +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/04/02 19:39:14 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/02 22:58:29 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"
%include "define/macro.s"

BUFF_SIZE equ 4096

global sym(ft_cat)

section     .text

sym(ft_cat):
    nop

.loop:
    push    rdi                 ; backup rdi (file descriptor)
    lea     rsi, addr(.buff)    ; rsi = &.buff
    mov     rdx, BUFF_SIZE      ; rdx = BUFF_SIZE

    sys_read rdi, rsi, rdx

    test    rax, rax            ; if rax < 0
    js      .end                ; return rax error if read failed (-1)

    test    rax, rax            ; if rax == 0
    jz      .success            ; EOF reached

    mov     rdx, rax            ; store read size into rdx

    sys_write STDOUT, rsi, rdx

    test    rax, rax            ; if rax < 0
    js      .end                ; return rax error if write failed (-1)

    cmp     rax, rdx            ; if rax != rdx
    jne     .end                ; failed to write the appropriated size

    pop     rdi                 ; restore the file descriptor to read
    jmp     .loop

.success:
    mov     rax, 0x00

.end:
    pop     rdi
    ret

section     .data

.buff times BUFF_SIZE db 0
