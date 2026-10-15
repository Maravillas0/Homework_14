# PYNQ-Z1 Rev. C board pin assignments
# 125 MHz PL reference clock
set_property -dict { PACKAGE_PIN H16 IOSTANDARD LVCMOS33 } [get_ports { clk }]
create_clock -add -name clk -period 10.00 -waveform {0 4} [get_ports { clk }]

# Pushbutton BTN0, active high reset
set_property -dict { PACKAGE_PIN D19 IOSTANDARD LVCMOS33 } [get_ports { rst }]

# Four-bit digit input: SW0, SW1, BTN2, BTN3 map to bits [0]..[3]
set_property -dict { PACKAGE_PIN M20 IOSTANDARD LVCMOS33 } [get_ports { digit_in[0] }]
set_property -dict { PACKAGE_PIN M19 IOSTANDARD LVCMOS33 } [get_ports { digit_in[1] }]
set_property -dict { PACKAGE_PIN L20 IOSTANDARD LVCMOS33 } [get_ports { digit_in[2] }]
set_property -dict { PACKAGE_PIN L19 IOSTANDARD LVCMOS33 } [get_ports { digit_in[3] }]

# User LED0
set_property -dict { PACKAGE_PIN R14 IOSTANDARD LVCMOS33 } [get_ports { unlocked_led }]
