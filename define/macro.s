;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    macro.s                                            :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau </var/spool/mail/jlagneau>        +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/03/21 18:44:12 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/21 18:52:37 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

; Implements the write system call
%macro s_write 3
	mov   rax, SYS_WRITE
	mov   rdi, %1
	mov   rsi, %2
	mov   rdx, %3
	syscall
%endmacro
