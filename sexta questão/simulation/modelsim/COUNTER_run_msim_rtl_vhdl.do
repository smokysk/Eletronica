transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/wesle/Desktop/COUNTER/COUNTER/COUNTER.vhd}
vcom -93 -work work {C:/Users/wesle/Desktop/COUNTER/COUNTER/FFD.vhd}
vcom -93 -work work {C:/Users/wesle/Desktop/COUNTER/COUNTER/BCD_DECODER.vhd}
vcom -93 -work work {C:/Users/wesle/Desktop/COUNTER/COUNTER/CLK_DIVISOR.vhd}

