# NOTE: PDK_ROOT, PDK and CACE_ROOT are set in the local environment by CACE
#
# This is an example script to drive LVS; because this is a simple
# example, there is no specific benefit of using this instead of the
# default handling in CACE.

set PDK_ROOT $::env(PDK_ROOT)
set PDK $::env(PDK)
set CACE_ROOT $::env(CACE_ROOT)

set circuit1 [readnet spice $CACE_ROOT/netlist/layout/r2r-dac.spice]
set circuit2 [readnet spice $CACE_ROOT/netlist/schematic/r2r-dac.spice]

lvs "$circuit1 r2r-dac" "$circuit2 r2r-dac" $PDK_ROOT/$PDK/libs.tech/netgen/${PDK}_setup.tcl r2r-dac_comp.out -json
