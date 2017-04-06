;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    define_macosx.s                                    :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/31 19:38:19 by jlagneau          #+#    #+#              ;
;    Updated: 2017/04/06 07:55:06 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%include "define/define_global.s"

;; MAC OS
%ifndef DEFINE_MACOSX_S
%define DEFINE_MACOSX_S

SYS_READ    equ     0x2000003
SYS_WRITE   equ     0x2000004

%define     sym(x)  _ %+ x

%endif
