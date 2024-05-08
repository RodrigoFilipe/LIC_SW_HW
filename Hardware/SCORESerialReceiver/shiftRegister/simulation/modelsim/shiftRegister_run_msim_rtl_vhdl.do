transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/SerialReceiver/Cont4bit/FFD.vhd}
vcom -93 -work work {C:/Users/ssrlo/ISEL/2324/2semestre/LIC/SerialReceiver/shiftRegister/shiftRegister.vhd}

