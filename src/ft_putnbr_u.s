;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putnbr_u.s                                      :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/23 09:41:08 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/30 16:31:37 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"
%include "define/macro.s"

section     .text
    global  sym(ft_putnbr_u)    ; int   ft_putnbr_u(unsigned int n)
    extern  sym(ft_putchar)     ; int   ft_putchar(char c)

sym(ft_putnbr_u):
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

    mov     rax, rdi            ; move the number into rax
    xor     rcx, rcx            ; rcx = 0
    mov     r8,  0x0a           ; r8 = 10

.push_digit:
    xor     rdx, rdx            ; rdx = 0

    idiv    r8                  ; divide rax with r8, store the result in
                                ; rax and the rest in rdx

    add     rdx, 0x30           ; add 48 to rdx to get the printable character
    push    rdx                 ; push the rest
    inc     rcx                 ; increase rcx for the length

    test    rax, rax            ; if rax > 0
    jnz     .push_digit         ; jump to .parse

    mov     r9,  rcx            ; store the length in r9

.pop_print_digit:
    pop     rdi                 ; retrieve the last element from the stack
    dec     rcx                 ; decrement rcx

    push    rcx                 ; save rcx

    call    sym(ft_putchar)

    test    rax, rax            ; if rax < 0
    js      .end                ; return rax error

    pop     rcx                 ; restore rcx
    test    rcx, rcx            ; if rcx > 0
    jnz     .pop_print_digit    ; jump to .print

.end:
    mov     rax, r9             ; return length
    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret
