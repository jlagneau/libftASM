;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    macro.s                                            :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/21 18:44:12 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/29 19:52:10 by jlagneau         ###   ########.fr        ;
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
