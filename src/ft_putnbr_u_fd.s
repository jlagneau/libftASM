;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putnbr_u_fd.s                                   :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/30 19:28:58 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/30 19:36:51 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define.s"

section     .text
    global  sym(ft_putnbr_u_fd) ; int   ft_putnbr_u_fd(unsigned int n, int fd)
    extern  sym(ft_putchar_fd)  ; int   ft_putchar_fd(char c, int fd)

sym(ft_putnbr_u_fd):
    nop
    push    rbp                 ; save rbp for the stack pointer
    mov     rbp, rsp            ; backup the stack pointer into rbp
    and     rsp, -0x10          ; align the stack to 16 bits

    mov     rax, rdi            ; move the number into rax
    xor     rcx, rcx            ; rcx = 0
    mov     r8,  0x0a           ; r8 = 10

.push_digit:
    nop
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

.end:
    nop
    mov     rax, r9             ; return length
    mov     rsp, rbp            ; restore stack pointer
    pop     rbp                 ; restore rbp
    ret
