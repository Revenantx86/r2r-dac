v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 175 -1445 975 -1045 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00236
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vout
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 985 -1445 1785 -1045 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00236
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vdac}
N 125 -130 125 -110 {
lab=GND}
N 125 -230 125 -190 {
lab=VSS}
N 205 -130 205 -110 {
lab=GND}
N 125 -110 125 -90 {
lab=GND}
N 205 -230 205 -190 {
lab=VDD}
N 125 -110 205 -110 {
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
N 40 -230 40 -190 {
lab=VDD}
N 40 -130 40 -110 {
lab=Ib}
N 40 -110 40 -90 {
lab=Ib}
N 420 -475 560 -475 {
lab=VOUT}
N 520 -415 560 -415 {
lab=VDAC}
N 520 -415 520 -340 {
lab=VDAC}
N 520 -340 760 -340 {
lab=VDAC}
N 760 -445 760 -340 {
lab=VDAC}
N 700 -445 760 -445 {
lab=VDAC}
C {devices/simulator_commands_shown.sym} 1030 -725 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param vdd = 1.8
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
    tran 1n 2360u
    save all
    write r2r_tb.raw
    quit 0
.endc
"}
C {analog/projects/sky130/r2r-dac/xschem/r2r.sym} 225 -345 0 0 {name=X1}
C {devices/vsource.sym} 125 -160 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 125 -90 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 205 -160 0 0 {name=V2 value=\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} 125 -230 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 205 -230 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/corner.sym} 30 -1410 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/launcher.sym} 320 -830 0 0 {name=h26
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {launcher.sym} 320 -780 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/r2r_tb.raw tran"
}
C {devices/lab_wire.sym} 300 -360 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 305 -90 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 205 -545 0 0 {name=p4 sig_type=std_logic lab=D7}
C {devices/lab_wire.sym} 205 -525 0 0 {name=p6 sig_type=std_logic lab=D6}
C {devices/lab_wire.sym} 205 -505 0 0 {name=p7 sig_type=std_logic lab=D5}
C {devices/lab_wire.sym} 205 -485 0 0 {name=p8 sig_type=std_logic lab=D4}
C {devices/lab_wire.sym} 205 -465 0 0 {name=p10 sig_type=std_logic lab=D3}
C {devices/lab_wire.sym} 205 -445 0 0 {name=p11 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 205 -425 0 0 {name=p12 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 205 -405 0 0 {name=p13 sig_type=std_logic lab=D0}
C {devices/lab_wire.sym} 305 -230 0 0 {name=p14 sig_type=std_logic lab=D7}
C {devices/lab_wire.sym} 385 -230 0 0 {name=p2 sig_type=std_logic lab=D6}
C {devices/lab_wire.sym} 465 -230 0 0 {name=p3 sig_type=std_logic lab=D5}
C {devices/lab_wire.sym} 545 -230 0 0 {name=p15 sig_type=std_logic lab=D4}
C {devices/lab_wire.sym} 625 -230 0 0 {name=p16 sig_type=std_logic lab=D3}
C {devices/lab_wire.sym} 705 -230 0 0 {name=p17 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 785 -230 0 0 {name=p18 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 865 -230 0 0 {name=p19 sig_type=std_logic lab=D0}
C {devices/vsource.sym} 865 -160 0 0 {name=V9 value="PULSE(0 1.8 0 1n 1n 10u 20u)" savecurrent=false}
C {devices/lab_wire.sym} 420 -475 0 1 {name=p20 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} 785 -160 0 0 {name=V8 value="PULSE(0 1.8 0 1n 1n 20u 40u)" savecurrent=false}
C {devices/vsource.sym} 705 -160 0 0 {name=V7 value="PULSE(0 1.8 0 1n 1n 40u 80u)" savecurrent=false}
C {devices/vsource.sym} 625 -160 0 0 {name=V6 value="PULSE(0 1.8 0 1n 1n 80u 160u)" savecurrent=false}
C {devices/vsource.sym} 545 -160 0 0 {name=V5 value="PULSE(0 1.8 0 1n 1n 160u 320u)" savecurrent=false}
C {devices/vsource.sym} 465 -160 0 0 {name=V4 value="PULSE(0 1.8 0 1n 1n 320u 640u)" savecurrent=false}
C {devices/vsource.sym} 385 -160 0 0 {name=V3 value="PULSE(0 1.8 0 1n 1n 640u 1280u)" savecurrent=false}
C {devices/vsource.sym} 305 -160 0 0 {name=V1 value="PULSE(0 1.8 0 1n 1n 1280u 2360u)" savecurrent=false}
C {analog/projects/sky130/r2r-dac/xschem/ota_5t.sym} 560 -445 0 0 {name=X2}
C {devices/isource.sym} 40 -160 0 0 {name=I0 value=10u}
C {devices/lab_wire.sym} 40 -90 2 0 {name=p21 sig_type=std_logic lab=Ib}
C {devices/lab_wire.sym} 40 -230 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 560 -445 2 1 {name=p23 sig_type=std_logic lab=Ib}
C {devices/lab_wire.sym} 760 -445 0 1 {name=p24 sig_type=std_logic lab=VDAC}
C {devices/lab_wire.sym} 640 -505 0 1 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 640 -385 0 1 {name=p26 sig_type=std_logic lab=VSS}
