;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    define_linux.s                                     :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/31 20:46:54 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/06 08:09:02 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

;; LINUX
%ifndef DEFINE_LINUX_S
%define DEFINE_LINUX_S
%include "depend/define_global.s"

SYS_READ    equ     0x00
SYS_WRITE   equ     0x01

%define     sym(x)  x

%endif
