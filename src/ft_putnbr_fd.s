;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putnbr_fd.s                                     :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/30 19:28:58 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/01 18:05:45 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"
%include "define/macro.s"

global  sym(ft_putnbr_fd)
extern  sym(ft_putchar_fd)

section     .text

sym(ft_putnbr_fd):
    nop
    mov     rax, rdi            ; move the number into rax
    xor     rcx, rcx            ; rcx = 0

    test    rdi, rdi            ; if rdi < 0
    js      .is_negative

    mov     r8,  0x0a           ; r8 = 10

.push_digit:
    nop
    xor     rdx, rdx            ; rdx = 0
    cqo                         ; extend the sign of rax into rdx

    idiv    r8                  ; divide rax with r8, store the result in
                                ; rax and the rest in rdx

    test    rdx, rdx            ; if rdx < 0
    js      .rest_is_negative

.push:
    nop
    add     rdx, 0x30           ; add 48 to rdx to get the printable character
    push    rdx                 ; push the rest
    inc     rcx                 ; increase rcx for the length

    mov     r8, 0x0a            ; r8 = 10 (change it again for negative number)

    test    rax, rax            ; if rax > 0
    jnz     .push_digit         ; jump to .push_digit

    mov     r9,  rcx            ; store the length in r9

.pop_print_digit:
    nop

    test	rdi, rdi            ; rdi < 0
    js		.pop_is_negative

.pop:
    nop
    pop     rdi                 ; retrieve the last element from the stack
    dec     rcx                 ; decrement rcx

    push    rcx                 ; save rcx
    push    rsi                 ; save rsi

    call    sym(ft_putchar_fd)

    pop     rsi                 ; restore rsi
    pop     rcx                 ; restore rcx

    test    rax, rax            ; if rax < 0
    js      .end                ; return rax error

    test    rcx, rcx            ; if rcx > 0
    jnz     .pop_print_digit    ; jump to .print

    mov     rax, r9             ; return length

.end:
    nop
    ret

.rest_is_negative:
    nop
    not     rdx                 ; invert rdx bits and increment it to transform
    inc     rdx                 ; it into positive

    jmp     .push

.pop_is_negative:
    nop
    dec		rcx                 ; decrease length if the number is negative
    jmp		.pop

.is_negative:
    nop

    push    rax                 ; save rax
    push    rdi                 ; save rdi
    push    rsi                 ; save rsi
    push    rcx                 ; save rcx

    sys_write rsi, .sign, 1

    test    rax, rax            ; if rax < 0
    js      .end

    pop     rcx                 ; restore rcx
    pop     rsi                 ; restore rsi
    pop     rdi                 ; restore rdi
    pop     rax                 ; restore rax

    inc		rcx                 ; length + 1 for the sign

    mov     r8, -0x0a
    jmp     .push_digit

section     .data

.sign db    '-'
