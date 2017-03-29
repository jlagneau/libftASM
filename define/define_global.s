;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    define_global.s                                    :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/31 20:48:21 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/29 20:39:17 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

;; GLOBAL
%define STDOUT      0x01
%define EOL         0x0a

; sym()
; Return the proper symbol name for the target ABI.
;
; Certain ABIs, notably MS COFF and Darwin MACH-O, require that symbols
; with C linkage be prefixed with an underscore.
;
%ifdef ELF
%define sym(x) x
%else
%define sym(x) _ %+ x
%endif
