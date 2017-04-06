;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    define_linux.s                                     :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/31 20:46:54 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/05 10:10:49 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define_global.s"

;; LINUX
SYS_READ    equ     0x00
SYS_WRITE   equ     0x01

%define     sym(x)  x
