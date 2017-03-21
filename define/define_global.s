;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    define_global.s                                    :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jlagneau <jlagneau@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/31 20:48:21 by jlagneau          #+#    #+#              ;
;    Updated: 2017/03/21 14:00:06 by jlagneau         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

;; GLOBAL
%define	STDOUT		0x01
%define EOL			0x0a

; sym()
; Return the proper symbol name for the target ABI.
;
; Certain ABIs, notably MS COFF and Darwin MACH-O, require that symbols
; with C linkage be prefixed with an underscore.
;
%ifidn   __OUTPUT_FORMAT__,elf32
%define sym(x) x
%elifidn __OUTPUT_FORMAT__,elf64
%define sym(x) x
%elifidn __OUTPUT_FORMAT__,elfx32
%define sym(x) x
%elif LIBVPX_YASM_WIN64
%define sym(x) x
%else
%define sym(x) _ %+ x
%endif
