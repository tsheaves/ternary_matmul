## Updates
- The Avalon DDR4 interface exposed by the FIM includes a waitrequest (i.e. busy) signal
    - The modules included in this directory were modified to support this signal
- To modify the DDR destination of the vectors without a recompile, IMEM is now provided through a 2-port RAM
    - The matrix unit has R access
    - The host has R/W access
- This component is integrated into the mu_afu_system Platform Designer system
    - DDR is connected the the local memory port in the instantiation of this system in afu/rtl/mu_afu_system_wrapper.sv
    - The DMA basic building block (bbb) subsystem is used to support host-fpga data transfers
    - A CCI-P to Avalon Memory-Mapped interface is used for MMIO
- The user clock driven to this component is defined in the OPAE JSON config file located at afu/rtl/mu_afu_S10.json
    - The user clock is programmable from OPAE at runtime