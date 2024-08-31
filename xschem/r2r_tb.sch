v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 255 -1295 1055 -895 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.59999084
x2=0.59999084
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N 85 -130 85 -110 {
lab=GND}
N 85 -230 85 -190 {
lab=VSS}
N 165 -130 165 -110 {
lab=GND}
N 85 -110 85 -90 {
lab=GND}
N 165 -230 165 -190 {
lab=VDD}
N 85 -110 165 -110 {
lab=GND}
N 305 -130 305 -110 {
lab=GND}
N 305 -230 305 -190 {
lab=D7}
N 385 -130 385 -110 {
lab=GND}
N 305 -110 305 -90 {
lab=GND}
N 385 -230 385 -190 {
lab=D6}
N 305 -110 385 -110 {
lab=GND}
N 205 -545 245 -545 {
lab=D7}
N 205 -525 245 -525 {
lab=D6}
N 205 -505 245 -505 {
lab=D5}
N 205 -485 245 -485 {
lab=D4}
N 205 -465 245 -465 {
lab=D3}
N 205 -445 245 -445 {
lab=D2}
N 205 -425 245 -425 {
lab=D1}
N 205 -405 245 -405 {
lab=D0}
N 355 -475 420 -475 {
lab=VOUT}
N 465 -130 465 -110 {
lab=GND}
N 465 -230 465 -190 {
lab=D5}
N 385 -110 465 -110 {
lab=GND}
N 545 -130 545 -110 {
lab=GND}
N 545 -230 545 -190 {
lab=D4}
N 465 -110 545 -110 {
lab=GND}
N 625 -130 625 -110 {
lab=GND}
N 625 -230 625 -190 {
lab=D3}
N 545 -110 625 -110 {
lab=GND}
N 705 -130 705 -110 {
lab=GND}
N 705 -230 705 -190 {
lab=D2}
N 625 -110 705 -110 {
lab=GND}
N 785 -130 785 -110 {
lab=GND}
N 785 -230 785 -190 {
lab=D1}
N 705 -110 785 -110 {
lab=GND}
N 865 -130 865 -110 {
lab=GND}
N 865 -230 865 -190 {
lab=D0}
N 785 -110 865 -110 {
lab=GND}
C {devices/simulator_commands_shown.sym} 1030 -725 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param vdd = 1.8
.param d0 = 1.8
.param d1 = 1.8
.param d2 = 1.8
.param d3 = 1.8
.param d4 = 1.8
.param d5 = 1.8
.param d6 = 1.8
.param d7 = 1.8

.control
    save all

    * operating point
    op
    write r2r_tb.raw
    set appendwrite

    * transient simulation
    options method=gear
    tran 1p 40n
    save all
    write r2r_tb.raw
    quit 0
.endc
"}
C {/home/unixpoly/analog/projects/sky130/r2r-dac/xschem/r2r.sym} 225 -345 0 0 {name=X1}
C {devices/vsource.sym} 85 -160 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 85 -90 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 165 -160 0 0 {name=V2 value=\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} 85 -230 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 165 -230 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/corner.sym} 50 -860 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/launcher.sym} 320 -830 0 0 {name=h26
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {launcher.sym} 320 -780 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/ota_5t_tb.raw tran"
}
C {devices/lab_wire.sym} 300 -360 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 305 -90 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 385 -160 0 0 {name=V3 value=\{d6\} savecurrent=false}
C {devices/lab_wire.sym} 205 -545 0 0 {name=p4 sig_type=std_logic lab=D7}
C {devices/lab_wire.sym} 205 -525 0 0 {name=p6 sig_type=std_logic lab=D6}
C {devices/lab_wire.sym} 205 -505 0 0 {name=p7 sig_type=std_logic lab=D5}
C {devices/lab_wire.sym} 205 -485 0 0 {name=p8 sig_type=std_logic lab=D4}
C {devices/lab_wire.sym} 205 -465 0 0 {name=p10 sig_type=std_logic lab=D3}
C {devices/lab_wire.sym} 205 -445 0 0 {name=p11 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 205 -425 0 0 {name=p12 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 205 -405 0 0 {name=p13 sig_type=std_logic lab=D0}
C {devices/lab_wire.sym} 305 -230 0 0 {name=p14 sig_type=std_logic lab=D7}
C {devices/vsource.sym} 305 -160 0 0 {name=V1 value=\{d7\} savecurrent=false}
C {devices/vsource.sym} 465 -160 0 0 {name=V4 value=\{d5\} savecurrent=false}
C {devices/vsource.sym} 545 -160 0 0 {name=V5 value=\{d4\} savecurrent=false}
C {devices/vsource.sym} 625 -160 0 0 {name=V6 value=\{d3\} savecurrent=false}
C {devices/vsource.sym} 705 -160 0 0 {name=V7 value=\{d2\} savecurrent=false}
C {devices/vsource.sym} 785 -160 0 0 {name=V8 value=\{d1\} savecurrent=false}
C {devices/lab_wire.sym} 385 -230 0 0 {name=p2 sig_type=std_logic lab=D6}
C {devices/lab_wire.sym} 465 -230 0 0 {name=p3 sig_type=std_logic lab=D5}
C {devices/lab_wire.sym} 545 -230 0 0 {name=p15 sig_type=std_logic lab=D4}
C {devices/lab_wire.sym} 625 -230 0 0 {name=p16 sig_type=std_logic lab=D3}
C {devices/lab_wire.sym} 705 -230 0 0 {name=p17 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 785 -230 0 0 {name=p18 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 865 -230 0 0 {name=p19 sig_type=std_logic lab=D0}
C {devices/vsource.sym} 865 -160 0 0 {name=V9 value=\{d0\} savecurrent=false}
C {devices/lab_wire.sym} 420 -475 0 1 {name=p20 sig_type=std_logic lab=VOUT}
