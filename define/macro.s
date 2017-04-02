;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    macro.s                                            :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/21 18:44:12 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/02 19:51:16 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

; Implements the write system call
%macro sys_write 3
    mov   rax, SYS_WRITE
    mov   rdi, %1
    mov   rsi, %2
    mov   rdx, %3
    syscall
%endmacro

; Implements the read system call
%macro sys_read 3
    mov	  rax, SYS_READ
    mov	  rdi, %1
    mov   rsi, %2
    mov   rdx, %3
    syscall
%endmacro
