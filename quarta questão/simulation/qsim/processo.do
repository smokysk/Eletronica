onerror {quit -f}
vlib work
vlog -work work processo.vo
vlog -work work processo.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.processo_vlg_vec_tst
vcd file -direction processo.msim.vcd
vcd add -internal processo_vlg_vec_tst/*
vcd add -internal processo_vlg_vec_tst/i1/*
add wave /*
run -all
