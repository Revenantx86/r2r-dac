v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 70 -820 870 -420 {flags=graph
y1=-38
y2=42
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=3
x2=8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
color=4
node="\\"Vout db20()\\""}
B 2 70 -420 870 -20 {flags=graph
y1=-120
y2=-3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3
x2=8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ph(Vout)"
color=""
dataset=-1
unitx=1
logx=1
logy=0
}
T {tcleval(A0: [to_eng [xschem raw value A0 0]]
UGF: [to_eng [xschem raw value ugf 0]]
PM: [to_eng [xschem raw value pm 0]])} 960 -460 0 0 0.6 0.6 {floater=1}
N 550 -1350 570 -1350 {
lab=Vout}
N 570 -1350 570 -1330 {
lab=Vout}
N 60 -1310 60 -1290 {
lab=GND}
N 60 -1410 60 -1370 {
lab=VSS}
N 140 -1310 140 -1290 {
lab=GND}
N 60 -1290 60 -1270 {
lab=GND}
N 140 -1410 140 -1370 {
lab=VDD}
N 60 -1290 140 -1290 {
lab=GND}
N 220 -1410 220 -1370 {
lab=VDD}
N 220 -1310 220 -1290 {
lab=Ib}
N 220 -1290 220 -1270 {
lab=Ib}
N 240 -1110 280 -1110 {
lab=#net1}
N 60 -1160 60 -1000 {
lab=#net1}
N 60 -1160 240 -1160 {
lab=#net1}
N 60 -940 60 -920 {
lab=GND}
N 240 -940 240 -920 {
lab=GND}
N 240 -1020 320 -1020 {
lab=#net2}
N 240 -1020 240 -1000 {
lab=#net2}
N 240 -1070 280 -1070 {
lab=GND}
N 240 -1070 240 -1050 {
lab=GND}
N 160 -1060 160 -1020 {
lab=#net2}
N 320 -1060 320 -1020 {
lab=#net2}
N 240 -1160 240 -1110 {
lab=#net1}
N 320 -1200 320 -1120 {
lab=Vn}
N 160 -1200 160 -1120 {
lab=Vp}
N 160 -1020 240 -1020 {
lab=#net2}
N 200 -1070 240 -1070 {
lab=GND}
N 200 -1110 240 -1110 {
lab=#net1}
N 570 -1270 570 -1250 {
lab=GND}
C {devices/isource.sym} 220 -1340 0 0 {name=I0 value=10u}
C {devices/lab_wire.sym} 490 -1410 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 570 -1300 0 0 {name=C1
m=1
value=1p}
C {devices/gnd.sym} 570 -1250 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 410 -1380 0 0 {name=p3 sig_type=std_logic lab=Vp}
C {devices/lab_wire.sym} 410 -1320 0 0 {name=p4 sig_type=std_logic lab=Vn}
C {devices/lab_wire.sym} 410 -1350 0 0 {name=p7 sig_type=std_logic lab=Ib}
C {devices/code_shown.sym} 970 -1170 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.param vdd=1.8
.param vcm=0.9

.control

    save all

    * operating point
    op

    write ota_5t_tb.raw
    set appendwrite

    * run ac simulation
    ac dec 20 1k 100e6

    * measure parameters
    let vout_mag = abs(v(Vout))
    let vout_phase_margin = phase(v(Vout)) * 180/pi + 180
    meas ac A0 find vout_mag at=1k
    meas ac UGF when vout_mag=1 fall=1
    meas ac PM find vout_phase_margin when vout_mag=1

    write ota_5t_tb.raw
    quit 0
.endc
"}
C {devices/launcher.sym} 470 -930 0 0 {name=h26
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_wire.sym} 570 -1350 0 1 {name=p11 sig_type=std_logic lab=Vout}
C {devices/vsource.sym} 60 -1340 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 60 -1270 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 140 -1340 0 0 {name=V2 value=\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} 60 -1410 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 220 -1270 2 0 {name=p8 sig_type=std_logic lab=Ib}
C {devices/vcvs.sym} 160 -1090 0 1 {name=E1 value=0.5}
C {devices/vcvs.sym} 320 -1090 0 0 {name=E2 value=-0.5}
C {devices/vsource.sym} 60 -970 0 0 {name=Vdm value="ac 1" savecurrent=false}
C {devices/vsource.sym} 240 -970 0 0 {name=Vcm value=\{vcm\} savecurrent=false}
C {devices/gnd.sym} 60 -920 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 240 -920 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 240 -1050 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 160 -1200 0 0 {name=p12 sig_type=std_logic lab=Vp}
C {devices/lab_wire.sym} 320 -1200 0 0 {name=p13 sig_type=std_logic lab=Vn}
C {devices/lab_wire.sym} 140 -1410 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 220 -1410 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 490 -1290 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 800 -1350 0 0 {name=CORNER only_toplevel=false corner=tt}
C {/home/unixpoly/analog/projects/sky130/ota_5t/xschem/ota_5t.sym} 410 -1350 0 0 {name=X1}
C {launcher.sym} 470 -880 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/ota_5t_tb.raw ac"
}
