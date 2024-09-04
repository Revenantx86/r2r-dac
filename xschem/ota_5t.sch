v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -480 190 -450 {
lab=VDD}
N 190 -250 210 -250 {
lab=VSS}
N 190 -520 190 -480 {
lab=VDD}
N 170 -420 190 -420 {
lab=VDD}
N 390 -480 390 -450 {
lab=VDD}
N 390 -420 410 -420 {
lab=VDD}
N 390 -520 390 -480 {
lab=VDD}
N 410 -520 410 -420 {
lab=VDD}
N 390 -520 410 -520 {
lab=VDD}
N 190 -220 190 -150 {
lab=#net1}
N 370 -250 390 -250 {
lab=VSS}
N 170 -520 170 -420 {
lab=VDD}
N 170 -520 190 -520 {
lab=VDD}
N 390 -220 390 -150 {
lab=#net1}
N 290 -70 290 -30 {
lab=VSS}
N 290 -100 310 -100 {
lab=VSS}
N 260 -420 260 -350 {
lab=#net2}
N 190 -350 260 -350 {
lab=#net2}
N 190 -390 190 -350 {
lab=#net2}
N 190 -350 190 -310 {
lab=#net2}
N 390 -390 390 -310 {
lab=Vout}
N 190 -310 190 -280 {
lab=#net2}
N 390 -310 390 -280 {
lab=Vout}
N 290 -140 290 -130 {
lab=#net1}
N 290 -150 290 -140 {
lab=#net1}
N 290 -150 390 -150 {
lab=#net1}
N 390 -330 470 -330 {
lab=Vout}
N 230 -420 260 -420 {
lab=#net2}
N 110 -250 150 -250 {
lab=Vp}
N 130 -100 250 -100 {
lab=Ib}
N 70 -100 90 -100 {
lab=VSS}
N 90 -70 90 -30 {
lab=VSS}
N 150 -140 150 -100 {
lab=Ib}
N 150 -150 150 -140 {
lab=Ib}
N 90 -150 150 -150 {
lab=Ib}
N 90 -150 90 -130 {
lab=Ib}
N 90 -190 90 -150 {
lab=Ib}
N 130 -520 170 -520 {
lab=VDD}
N 430 -250 470 -250 {
lab=Vn}
N 90 -30 290 -30 {
lab=VSS}
N 60 -30 90 -30 {
lab=VSS}
N 190 -150 290 -150 {
lab=#net1}
N 260 -420 350 -420 {
lab=#net2}
N 190 -520 390 -520 {
lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 170 -250 0 0 {name=M3
L=0.5
W=3
mult=1 nf=1
model=nfet_01v8
spiceprefix=X}
C {sky130_fd_pr/pfet_01v8.sym} 210 -420 0 1 {name=M1
W=4.5
L=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 370 -420 0 0 {name=M2
W=4.5
L=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 410 -250 0 1 {name=M4
L=0.5
W=3
mult=1 nf=1
model=nfet_01v8
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 270 -100 0 0 {name=M5
L=1
W=4
mult=1 nf=1
model=nfet_01v8
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 110 -100 0 1 {name=M6
L=1
W=4
mult=1 nf=1
model=nfet_01v8
spiceprefix=X}
C {devices/iopin.sym} 140 -520 0 1 {name=p9 lab=VDD}
C {devices/iopin.sym} 70 -30 2 0 {name=p5 lab=VSS}
C {devices/opin.sym} 470 -330 0 0 {name=p3 lab=Vout
}
C {devices/ipin.sym} 110 -250 0 0 {name=p1 lab=Vp}
C {devices/ipin.sym} 470 -250 0 1 {name=p2 lab=Vn}
C {devices/lab_wire.sym} 70 -100 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 310 -100 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 210 -250 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 370 -250 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 90 -190 1 0 {name=p8 lab=Ib}
