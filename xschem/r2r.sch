v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -180 130 -160 {
lab=#net1}
N 130 -260 130 -240 {
lab=#net2}
N 210 -360 210 -340 {
lab=#net3}
N 210 -280 210 -260 {
lab=#net2}
N 210 -260 280 -260 {
lab=#net2}
N 210 -460 210 -420 {
lab=D0}
N 130 -260 210 -260 {
lab=#net2}
N 420 -360 420 -340 {
lab=#net4}
N 420 -280 420 -260 {
lab=#net5}
N 420 -460 420 -420 {
lab=D1}
N 340 -260 420 -260 {
lab=#net5}
N 420 -260 490 -260 {
lab=#net5}
N 550 -260 630 -260 {
lab=#net6}
N 630 -360 630 -340 {
lab=#net7}
N 630 -280 630 -260 {
lab=#net6}
N 630 -460 630 -420 {
lab=D2}
N 630 -260 710 -260 {
lab=#net6}
N 770 -260 850 -260 {
lab=#net8}
N 850 -280 850 -260 {
lab=#net8}
N 850 -360 850 -340 {
lab=#net9}
N 850 -460 850 -420 {
lab=D3}
N 850 -260 930 -260 {
lab=#net8}
N 990 -260 1070 -260 {
lab=#net10}
N 1070 -360 1070 -340 {
lab=#net11}
N 1070 -460 1070 -420 {
lab=D4}
N 1070 -280 1070 -260 {
lab=#net10}
N 1070 -260 1150 -260 {
lab=#net10}
N 1210 -260 1290 -260 {
lab=#net12}
N 1290 -360 1290 -340 {
lab=#net13}
N 1290 -460 1290 -420 {
lab=D5}
N 1290 -280 1290 -260 {
lab=#net12}
N 1290 -260 1370 -260 {
lab=#net12}
N 1430 -260 1510 -260 {
lab=#net14}
N 1510 -360 1510 -340 {
lab=#net15}
N 1510 -460 1510 -420 {
lab=D6}
N 1510 -280 1510 -260 {
lab=#net14}
N 1510 -260 1590 -260 {
lab=#net14}
N 1650 -260 1730 -260 {
lab=VO}
N 1730 -360 1730 -340 {
lab=#net16}
N 1730 -460 1730 -420 {
lab=D7}
N 1730 -280 1730 -260 {
lab=VO}
N 1730 -260 1810 -260 {
lab=VO}
N 1810 -260 1900 -260 {
lab=VO}
N 130 -100 130 -80 {
lab=VGND}
C {sky130_fd_pr/res_high_po_1p41.sym} 130 -130 2 0 {name=R8
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 130 -210 2 0 {name=R1
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 210 -390 0 0 {name=R2
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 210 -310 0 0 {name=R3
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 310 -260 1 0 {name=R4
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {devices/lab_wire.sym} 310 -280 0 1 {name=p19 sig_type=std_logic lab=VGND}
C {devices/lab_wire.sym} 190 -310 0 0 {name=p1 sig_type=std_logic lab=VGND}
C {devices/lab_wire.sym} 150 -210 0 1 {name=p2 sig_type=std_logic lab=VGND}
C {devices/lab_wire.sym} 150 -130 0 1 {name=p3 sig_type=std_logic lab=VGND}
C {devices/lab_wire.sym} 190 -390 0 0 {name=p5 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_high_po_1p41.sym} 420 -390 0 0 {name=R5
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 420 -310 0 0 {name=R6
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {devices/lab_wire.sym} 400 -310 0 0 {name=p6 sig_type=std_logic lab=VGND}
C {devices/lab_wire.sym} 400 -390 0 0 {name=p7 sig_type=std_logic lab=VGND}
C {devices/ipin.sym} 210 -460 1 0 {name=p10 lab=D0}
C {devices/ipin.sym} 420 -460 1 0 {name=p8 lab=D1}
C {sky130_fd_pr/res_high_po_1p41.sym} 520 -260 1 0 {name=R7
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {devices/lab_wire.sym} 520 -280 0 1 {name=p9 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_high_po_1p41.sym} 630 -390 0 0 {name=R9
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 630 -310 0 0 {name=R10
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {devices/lab_wire.sym} 610 -310 0 0 {name=p11 sig_type=std_logic lab=VGND}
C {devices/lab_wire.sym} 610 -390 0 0 {name=p12 sig_type=std_logic lab=VGND}
C {devices/ipin.sym} 630 -460 1 0 {name=p13 lab=D2}
C {sky130_fd_pr/res_high_po_1p41.sym} 740 -260 1 0 {name=R11
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {devices/lab_wire.sym} 740 -280 0 1 {name=p14 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_high_po_1p41.sym} 850 -390 0 0 {name=R12
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 850 -310 0 0 {name=R13
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {devices/lab_wire.sym} 830 -390 0 0 {name=p15 sig_type=std_logic lab=VGND}
C {devices/ipin.sym} 850 -460 1 0 {name=p16 lab=D3}
C {devices/lab_wire.sym} 830 -310 0 0 {name=p17 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_high_po_1p41.sym} 960 -260 1 0 {name=R14
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {devices/lab_wire.sym} 960 -280 0 1 {name=p18 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_high_po_1p41.sym} 1070 -390 0 0 {name=R15
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 1070 -310 0 0 {name=R16
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {devices/lab_wire.sym} 1050 -390 0 0 {name=p20 sig_type=std_logic lab=VGND}
C {devices/ipin.sym} 1070 -460 1 0 {name=p21 lab=D4}
C {devices/lab_wire.sym} 1050 -310 0 0 {name=p22 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_high_po_1p41.sym} 1180 -260 1 0 {name=R17
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {devices/lab_wire.sym} 1180 -280 0 1 {name=p23 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_high_po_1p41.sym} 1290 -390 0 0 {name=R18
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 1290 -310 0 0 {name=R19
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {devices/lab_wire.sym} 1270 -390 0 0 {name=p24 sig_type=std_logic lab=VGND}
C {devices/ipin.sym} 1290 -460 1 0 {name=p25 lab=D5}
C {devices/lab_wire.sym} 1270 -310 0 0 {name=p26 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_high_po_1p41.sym} 1400 -260 1 0 {name=R20
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {devices/lab_wire.sym} 1400 -280 0 1 {name=p27 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_high_po_1p41.sym} 1510 -390 0 0 {name=R21
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 1510 -310 0 0 {name=R22
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {devices/lab_wire.sym} 1490 -390 0 0 {name=p28 sig_type=std_logic lab=VGND}
C {devices/ipin.sym} 1510 -460 1 0 {name=p29 lab=D6}
C {devices/lab_wire.sym} 1490 -310 0 0 {name=p30 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_high_po_1p41.sym} 1620 -260 1 0 {name=R23
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {devices/lab_wire.sym} 1620 -280 0 1 {name=p31 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_high_po_1p41.sym} 1730 -390 0 0 {name=R24
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 1730 -310 0 0 {name=R25
L=50
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {devices/lab_wire.sym} 1710 -390 0 0 {name=p32 sig_type=std_logic lab=VGND}
C {devices/ipin.sym} 1730 -460 1 0 {name=p33 lab=D7}
C {devices/lab_wire.sym} 1710 -310 0 0 {name=p34 sig_type=std_logic lab=VGND}
C {opin.sym} 1900 -260 0 0 {name=p35 lab=VO}
C {devices/iopin.sym} 130 -80 1 0 {name=p36 lab=VGND}
