transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/keyboardReader/Cont/Registo.vhd}
vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/keyboardReader/Cont/MuxCont.vhd}
vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/keyboardReader/Cont/HA.vhd}
vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/keyboardReader/Cont/FFD.vhd}
vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/keyboardReader/Cont/FA.vhd}
vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/keyboardReader/Cont/ContadorCrescente.vhd}
vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/keyboardReader/Cont/Cont.vhd}
vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/keyboardReader/Cont/adder4.vhd}
vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/keyboardReader/Multiplexer.vhd}
vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/keyboardReader/keyScan.vhd}
vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/keyboardReader/keyDecode.vhd}
vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/keyboardReader/keyControl.vhd}
vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/keyboardReader/Decoder.vhd}
vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/keyboardReader/clkDIV.vhd}
vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/keyboardReader/keyboardReader.vhd}

