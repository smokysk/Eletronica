onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider CLOCK
add wave -noupdate /counter/CLK
add wave -noupdate /counter/CLK_OUT
add wave -noupdate -divider CONTROLE
add wave -noupdate /counter/RST
add wave -noupdate /counter/R_WIRE
add wave -noupdate /counter/S_WIRE
add wave -noupdate -divider {SAÍDA FF}
add wave -noupdate /counter/Q_D
add wave -noupdate /counter/Q_U
add wave -noupdate -divider DISPLAY
add wave -noupdate /counter/DSP_D
add wave -noupdate /counter/DSP_U
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1825 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {2850 ps} {3850 ps}
