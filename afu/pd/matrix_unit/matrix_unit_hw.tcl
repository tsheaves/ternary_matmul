# TCL File Generated by Component Editor 19.2
# Thu May 30 11:27:17 PDT 2024
# DO NOT MODIFY


# 
# matrix_unit "matrix_unit" v1.0
# Tyler Sheaves 2024.05.30.11:27:17
# 
# 

# 
# request TCL package from ACDS 19.4
# 
package require -exact qsys 19.4


# 
# module matrix_unit
# 
set_module_property DESCRIPTION ""
set_module_property NAME matrix_unit
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "UCSC - Hardware Systems Collective"
set_module_property AUTHOR "Tyler Sheaves"
set_module_property DISPLAY_NAME matrix_unit
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false
set_module_property LOAD_ELABORATION_LIMIT 0


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL matrix_unit_wrapper
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file div.v VERILOG PATH quartus_ip/div/synth/div.v
add_fileset_file div_lpm_divide_191_56nrcay.v VERILOG PATH quartus_ip/div/lpm_divide_191/synth/div_lpm_divide_191_56nrcay.v
add_fileset_file rms.sv SYSTEM_VERILOG PATH ../../../rtl/fus/rms.sv
add_fileset_file matrix_unit_wrapper.sv SYSTEM_VERILOG PATH matrix_unit_wrapper.sv TOP_LEVEL_FILE
add_fileset_file rowwise_add.sv SYSTEM_VERILOG PATH ../../../rtl/fus/rowwise_add.sv
add_fileset_file rowwise_div.sv SYSTEM_VERILOG PATH rowwise_div.sv
add_fileset_file rowwise_exp.sv SYSTEM_VERILOG PATH ../../../rtl/fus/rowwise_exp.sv
add_fileset_file rowwise_mul.sv SYSTEM_VERILOG PATH ../../../rtl/fus/rowwise_mul.sv
add_fileset_file rowwise_operation.sv SYSTEM_VERILOG PATH ../../../rtl/fus/rowwise_operation.sv
add_fileset_file rowwise_sig.sv SYSTEM_VERILOG PATH ../../../rtl/fus/rowwise_sig.sv
add_fileset_file rowwise_sub.sv SYSTEM_VERILOG PATH ../../../rtl/fus/rowwise_sub.sv
add_fileset_file vector_load_store.sv SYSTEM_VERILOG PATH vector_load_store.sv
add_fileset_file matrix_fifo.sv SYSTEM_VERILOG PATH ../../../rtl/fus/ternary_matmul/matrix_fifo.sv
add_fileset_file ternary_matmul.sv SYSTEM_VERILOG PATH ternary_matmul.sv
add_fileset_file config_pkg.sv SYSTEM_VERILOG PATH config_pkg.sv
add_fileset_file matrix_unit.sv SYSTEM_VERILOG PATH matrix_unit.sv
add_fileset_file vector_registers.sv SYSTEM_VERILOG PATH ../../../rtl/vector_registers.sv
add_fileset_file exp_lut.memh OTHER PATH ../../../rtl/luts/exp_lut.memh
add_fileset_file rms_sqa_lut.memh OTHER PATH ../../../rtl/luts/rms_sqa_lut.memh
add_fileset_file rms_sqt_lut.memh OTHER PATH ../../../rtl/luts/rms_sqt_lut.memh
add_fileset_file sig_lut.memh OTHER PATH ../../../rtl/luts/sig_lut.memh


# 
# parameters
# 
add_parameter ddr_addr_w INTEGER 33
set_parameter_property ddr_addr_w DEFAULT_VALUE 33
set_parameter_property ddr_addr_w DISPLAY_NAME ddr_addr_w
set_parameter_property ddr_addr_w UNITS None
set_parameter_property ddr_addr_w ALLOWED_RANGES -2147483648:2147483647
set_parameter_property ddr_addr_w HDL_PARAMETER true
add_parameter ddr_data_w INTEGER 8
set_parameter_property ddr_data_w DEFAULT_VALUE 8
set_parameter_property ddr_data_w DISPLAY_NAME ddr_data_w
set_parameter_property ddr_data_w UNITS None
set_parameter_property ddr_data_w ALLOWED_RANGES -2147483648:2147483647
set_parameter_property ddr_data_w HDL_PARAMETER true
add_parameter csr_addr_w INTEGER 8
set_parameter_property csr_addr_w DEFAULT_VALUE 8
set_parameter_property csr_addr_w DISPLAY_NAME csr_addr_w
set_parameter_property csr_addr_w UNITS None
set_parameter_property csr_addr_w ALLOWED_RANGES -2147483648:2147483647
set_parameter_property csr_addr_w HDL_PARAMETER true
add_parameter csr_data_w INTEGER 32
set_parameter_property csr_data_w DEFAULT_VALUE 32
set_parameter_property csr_data_w DISPLAY_NAME csr_data_w
set_parameter_property csr_data_w UNITS None
set_parameter_property csr_data_w ALLOWED_RANGES -2147483648:2147483647
set_parameter_property csr_data_w HDL_PARAMETER true
add_parameter imem_w_instr INTEGER 64 ""
set_parameter_property imem_w_instr DEFAULT_VALUE 64
set_parameter_property imem_w_instr DISPLAY_NAME imem_w_instr
set_parameter_property imem_w_instr UNITS None
set_parameter_property imem_w_instr ALLOWED_RANGES -2147483648:2147483647
set_parameter_property imem_w_instr DESCRIPTION ""
set_parameter_property imem_w_instr HDL_PARAMETER true
add_parameter imem_w_addr INTEGER 6
set_parameter_property imem_w_addr DEFAULT_VALUE 6
set_parameter_property imem_w_addr DISPLAY_NAME imem_w_addr
set_parameter_property imem_w_addr UNITS None
set_parameter_property imem_w_addr ALLOWED_RANGES -2147483648:2147483647
set_parameter_property imem_w_addr HDL_PARAMETER true


# 
# display items
# 


# 
# connection point avmm_a_csr
# 
add_interface avmm_a_csr avalon end
set_interface_property avmm_a_csr addressGroup 0
set_interface_property avmm_a_csr addressUnits WORDS
set_interface_property avmm_a_csr associatedClock user_clock
set_interface_property avmm_a_csr associatedReset reset_n
set_interface_property avmm_a_csr bitsPerSymbol 8
set_interface_property avmm_a_csr bridgedAddressOffset ""
set_interface_property avmm_a_csr bridgesToMaster ""
set_interface_property avmm_a_csr burstOnBurstBoundariesOnly false
set_interface_property avmm_a_csr burstcountUnits WORDS
set_interface_property avmm_a_csr explicitAddressSpan 0
set_interface_property avmm_a_csr holdTime 0
set_interface_property avmm_a_csr linewrapBursts false
set_interface_property avmm_a_csr maximumPendingReadTransactions 0
set_interface_property avmm_a_csr maximumPendingWriteTransactions 0
set_interface_property avmm_a_csr minimumResponseLatency 1
set_interface_property avmm_a_csr readLatency 1
set_interface_property avmm_a_csr readWaitStates 0
set_interface_property avmm_a_csr readWaitTime 0
set_interface_property avmm_a_csr setupTime 0
set_interface_property avmm_a_csr timingUnits Cycles
set_interface_property avmm_a_csr transparentBridge false
set_interface_property avmm_a_csr waitrequestAllowance 0
set_interface_property avmm_a_csr writeWaitTime 0
set_interface_property avmm_a_csr ENABLED true
set_interface_property avmm_a_csr EXPORT_OF ""
set_interface_property avmm_a_csr PORT_NAME_MAP ""
set_interface_property avmm_a_csr CMSIS_SVD_VARIABLES ""
set_interface_property avmm_a_csr SVD_ADDRESS_GROUP ""
set_interface_property avmm_a_csr IPXACT_REGISTER_MAP_VARIABLES ""

add_interface_port avmm_a_csr avmm_a_csr_address_i address Input 8
add_interface_port avmm_a_csr avmm_a_csr_chipselect_i chipselect Input 1
add_interface_port avmm_a_csr avmm_a_csr_write_i write Input 1
add_interface_port avmm_a_csr avmm_a_csr_writedata_i writedata Input "((csr_data_w - 1)) - (0) + 1"
add_interface_port avmm_a_csr avmm_a_csr_readdata_o readdata Output "((csr_data_w - 1)) - (0) + 1"
set_interface_assignment avmm_a_csr embeddedsw.configuration.isFlash 0
set_interface_assignment avmm_a_csr embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avmm_a_csr embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avmm_a_csr embeddedsw.configuration.isPrintableDevice 0


# 
# connection point user_clock
# 
add_interface user_clock clock end
set_interface_property user_clock ENABLED true
set_interface_property user_clock EXPORT_OF ""
set_interface_property user_clock PORT_NAME_MAP ""
set_interface_property user_clock CMSIS_SVD_VARIABLES ""
set_interface_property user_clock SVD_ADDRESS_GROUP ""
set_interface_property user_clock IPXACT_REGISTER_MAP_VARIABLES ""

add_interface_port user_clock clk_i clk Input 1


# 
# connection point reset_n
# 
add_interface reset_n reset end
set_interface_property reset_n associatedClock user_clock
set_interface_property reset_n synchronousEdges DEASSERT
set_interface_property reset_n ENABLED true
set_interface_property reset_n EXPORT_OF ""
set_interface_property reset_n PORT_NAME_MAP ""
set_interface_property reset_n CMSIS_SVD_VARIABLES ""
set_interface_property reset_n SVD_ADDRESS_GROUP ""
set_interface_property reset_n IPXACT_REGISTER_MAP_VARIABLES ""

add_interface_port reset_n rst_n_i reset_n Input 1


# 
# connection point avmm_h_ddr
# 
add_interface avmm_h_ddr avalon start
set_interface_property avmm_h_ddr addressGroup 0
set_interface_property avmm_h_ddr addressUnits SYMBOLS
set_interface_property avmm_h_ddr associatedClock user_clock
set_interface_property avmm_h_ddr associatedReset reset_n
set_interface_property avmm_h_ddr bitsPerSymbol 8
set_interface_property avmm_h_ddr burstOnBurstBoundariesOnly false
set_interface_property avmm_h_ddr burstcountUnits WORDS
set_interface_property avmm_h_ddr doStreamReads false
set_interface_property avmm_h_ddr doStreamWrites false
set_interface_property avmm_h_ddr holdTime 0
set_interface_property avmm_h_ddr linewrapBursts false
set_interface_property avmm_h_ddr maximumPendingReadTransactions 0
set_interface_property avmm_h_ddr maximumPendingWriteTransactions 0
set_interface_property avmm_h_ddr minimumResponseLatency 1
set_interface_property avmm_h_ddr readLatency 0
set_interface_property avmm_h_ddr readWaitTime 0
set_interface_property avmm_h_ddr setupTime 0
set_interface_property avmm_h_ddr timingUnits Cycles
set_interface_property avmm_h_ddr waitrequestAllowance 0
set_interface_property avmm_h_ddr writeWaitTime 0
set_interface_property avmm_h_ddr ENABLED true
set_interface_property avmm_h_ddr EXPORT_OF ""
set_interface_property avmm_h_ddr PORT_NAME_MAP ""
set_interface_property avmm_h_ddr CMSIS_SVD_VARIABLES ""
set_interface_property avmm_h_ddr SVD_ADDRESS_GROUP ""
set_interface_property avmm_h_ddr IPXACT_REGISTER_MAP_VARIABLES ""

add_interface_port avmm_h_ddr avmm_h_ddr_readdata_i readdata Input "((ddr_data_w - 1)) - (0) + 1"
add_interface_port avmm_h_ddr avmm_h_ddr_readdatavalid_i readdatavalid Input 1
add_interface_port avmm_h_ddr avmm_h_ddr_waitreq_i waitrequest Input 1
add_interface_port avmm_h_ddr avmm_h_ddr_writedata_o writedata Output "((ddr_data_w - 1)) - (0) + 1"
add_interface_port avmm_h_ddr avmm_h_ddr_address_o address Output "((ddr_addr_w - 1)) - (0) + 1"
add_interface_port avmm_h_ddr avmm_h_ddr_write_o write Output 1
add_interface_port avmm_h_ddr avmm_h_ddr_read_o read Output 1


# 
# connection point avalon_a_imem
# 
add_interface avalon_a_imem avalon start
set_interface_property avalon_a_imem addressGroup 0
set_interface_property avalon_a_imem addressUnits WORDS
set_interface_property avalon_a_imem associatedClock user_clock
set_interface_property avalon_a_imem associatedReset reset_n
set_interface_property avalon_a_imem bitsPerSymbol 8
set_interface_property avalon_a_imem burstOnBurstBoundariesOnly false
set_interface_property avalon_a_imem burstcountUnits WORDS
set_interface_property avalon_a_imem doStreamReads false
set_interface_property avalon_a_imem doStreamWrites false
set_interface_property avalon_a_imem holdTime 0
set_interface_property avalon_a_imem linewrapBursts false
set_interface_property avalon_a_imem maximumPendingReadTransactions 0
set_interface_property avalon_a_imem maximumPendingWriteTransactions 0
set_interface_property avalon_a_imem minimumResponseLatency 1
set_interface_property avalon_a_imem readLatency 1
set_interface_property avalon_a_imem readWaitTime 0
set_interface_property avalon_a_imem setupTime 0
set_interface_property avalon_a_imem timingUnits Cycles
set_interface_property avalon_a_imem waitrequestAllowance 0
set_interface_property avalon_a_imem writeWaitTime 0
set_interface_property avalon_a_imem ENABLED true
set_interface_property avalon_a_imem EXPORT_OF ""
set_interface_property avalon_a_imem PORT_NAME_MAP ""
set_interface_property avalon_a_imem CMSIS_SVD_VARIABLES ""
set_interface_property avalon_a_imem SVD_ADDRESS_GROUP ""
set_interface_property avalon_a_imem IPXACT_REGISTER_MAP_VARIABLES ""

add_interface_port avalon_a_imem avmm_h_imem_address_o address Output "((imem_w_addr - 1)) - (0) + 1"
add_interface_port avalon_a_imem avmm_h_imem_chipselect_o chipselect Output 1
add_interface_port avalon_a_imem avmm_h_imem_write_o write Output 1
add_interface_port avalon_a_imem avmm_h_imem_writedata_o writedata Output "((imem_w_instr - 1)) - (0) + 1"
add_interface_port avalon_a_imem avmm_h_imem_readdata_i readdata Input "((imem_w_instr - 1)) - (0) + 1"

