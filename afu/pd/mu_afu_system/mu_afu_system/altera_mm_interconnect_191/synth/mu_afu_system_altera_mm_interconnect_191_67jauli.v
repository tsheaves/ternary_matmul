// mu_afu_system_altera_mm_interconnect_191_67jauli.v

// This file was auto-generated from altera_mm_interconnect_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 19.2 57

`timescale 1 ps / 1 ps
module mu_afu_system_altera_mm_interconnect_191_67jauli (
		input  wire [32:0] matrix_unit_0_avmm_h_ddr_address,                  //                    matrix_unit_0_avmm_h_ddr.address
		output wire        matrix_unit_0_avmm_h_ddr_waitrequest,              //                                            .waitrequest
		input  wire        matrix_unit_0_avmm_h_ddr_read,                     //                                            .read
		output wire [7:0]  matrix_unit_0_avmm_h_ddr_readdata,                 //                                            .readdata
		output wire        matrix_unit_0_avmm_h_ddr_readdatavalid,            //                                            .readdatavalid
		input  wire        matrix_unit_0_avmm_h_ddr_write,                    //                                            .write
		input  wire [7:0]  matrix_unit_0_avmm_h_ddr_writedata,                //                                            .writedata
		output wire [32:0] matmul_afu_matmul_ddr4a_bridge_s0_address,         //           matmul_afu_matmul_ddr4a_bridge_s0.address
		output wire        matmul_afu_matmul_ddr4a_bridge_s0_write,           //                                            .write
		output wire        matmul_afu_matmul_ddr4a_bridge_s0_read,            //                                            .read
		input  wire [7:0]  matmul_afu_matmul_ddr4a_bridge_s0_readdata,        //                                            .readdata
		output wire [7:0]  matmul_afu_matmul_ddr4a_bridge_s0_writedata,       //                                            .writedata
		output wire [0:0]  matmul_afu_matmul_ddr4a_bridge_s0_burstcount,      //                                            .burstcount
		output wire [0:0]  matmul_afu_matmul_ddr4a_bridge_s0_byteenable,      //                                            .byteenable
		input  wire        matmul_afu_matmul_ddr4a_bridge_s0_readdatavalid,   //                                            .readdatavalid
		input  wire        matmul_afu_matmul_ddr4a_bridge_s0_waitrequest,     //                                            .waitrequest
		output wire        matmul_afu_matmul_ddr4a_bridge_s0_debugaccess,     //                                            .debugaccess
		input  wire        matrix_unit_0_reset_n_reset_bridge_in_reset_reset, // matrix_unit_0_reset_n_reset_bridge_in_reset.reset
		input  wire        matmul_afu_matmul_clock_out_clk_clk                //             matmul_afu_matmul_clock_out_clk.clk
	);

	wire         matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_waitrequest;   // matmul_afu_matmul_ddr4a_bridge_s0_translator:uav_waitrequest -> matrix_unit_0_avmm_h_ddr_translator:uav_waitrequest
	wire   [7:0] matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_readdata;      // matmul_afu_matmul_ddr4a_bridge_s0_translator:uav_readdata -> matrix_unit_0_avmm_h_ddr_translator:uav_readdata
	wire         matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_debugaccess;   // matrix_unit_0_avmm_h_ddr_translator:uav_debugaccess -> matmul_afu_matmul_ddr4a_bridge_s0_translator:uav_debugaccess
	wire  [32:0] matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_address;       // matrix_unit_0_avmm_h_ddr_translator:uav_address -> matmul_afu_matmul_ddr4a_bridge_s0_translator:uav_address
	wire         matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_read;          // matrix_unit_0_avmm_h_ddr_translator:uav_read -> matmul_afu_matmul_ddr4a_bridge_s0_translator:uav_read
	wire   [0:0] matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_byteenable;    // matrix_unit_0_avmm_h_ddr_translator:uav_byteenable -> matmul_afu_matmul_ddr4a_bridge_s0_translator:uav_byteenable
	wire         matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_readdatavalid; // matmul_afu_matmul_ddr4a_bridge_s0_translator:uav_readdatavalid -> matrix_unit_0_avmm_h_ddr_translator:uav_readdatavalid
	wire         matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_lock;          // matrix_unit_0_avmm_h_ddr_translator:uav_lock -> matmul_afu_matmul_ddr4a_bridge_s0_translator:uav_lock
	wire         matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_write;         // matrix_unit_0_avmm_h_ddr_translator:uav_write -> matmul_afu_matmul_ddr4a_bridge_s0_translator:uav_write
	wire   [7:0] matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_writedata;     // matrix_unit_0_avmm_h_ddr_translator:uav_writedata -> matmul_afu_matmul_ddr4a_bridge_s0_translator:uav_writedata
	wire   [0:0] matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_burstcount;    // matrix_unit_0_avmm_h_ddr_translator:uav_burstcount -> matmul_afu_matmul_ddr4a_bridge_s0_translator:uav_burstcount

	mu_afu_system_altera_merlin_master_translator_191_g7h47bq #(
		.AV_ADDRESS_W                (33),
		.AV_DATA_W                   (8),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (1),
		.UAV_ADDRESS_W               (33),
		.UAV_BURSTCOUNT_W            (1),
		.USE_READ                    (1),
		.USE_WRITE                   (1),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (0),
		.USE_READDATAVALID           (1),
		.USE_WAITREQUEST             (1),
		.USE_READRESPONSE            (0),
		.USE_WRITERESPONSE           (0),
		.AV_SYMBOLS_PER_WORD         (1),
		.AV_ADDRESS_SYMBOLS          (1),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (0),
		.UAV_CONSTANT_BURST_BEHAVIOR (0),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0),
		.SYNC_RESET                  (0),
		.WAITREQUEST_ALLOWANCE       (0)
	) matrix_unit_0_avmm_h_ddr_translator (
		.clk                    (matmul_afu_matmul_clock_out_clk_clk),                                         //   input,   width = 1,                       clk.clk
		.reset                  (matrix_unit_0_reset_n_reset_bridge_in_reset_reset),                           //   input,   width = 1,                     reset.reset
		.uav_address            (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_address),       //  output,  width = 33, avalon_universal_master_0.address
		.uav_burstcount         (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_burstcount),    //  output,   width = 1,                          .burstcount
		.uav_read               (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_read),          //  output,   width = 1,                          .read
		.uav_write              (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_write),         //  output,   width = 1,                          .write
		.uav_waitrequest        (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_waitrequest),   //   input,   width = 1,                          .waitrequest
		.uav_readdatavalid      (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_readdatavalid), //   input,   width = 1,                          .readdatavalid
		.uav_byteenable         (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_byteenable),    //  output,   width = 1,                          .byteenable
		.uav_readdata           (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_readdata),      //   input,   width = 8,                          .readdata
		.uav_writedata          (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_writedata),     //  output,   width = 8,                          .writedata
		.uav_lock               (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_lock),          //  output,   width = 1,                          .lock
		.uav_debugaccess        (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_debugaccess),   //  output,   width = 1,                          .debugaccess
		.av_address             (matrix_unit_0_avmm_h_ddr_address),                                            //   input,  width = 33,      avalon_anti_master_0.address
		.av_waitrequest         (matrix_unit_0_avmm_h_ddr_waitrequest),                                        //  output,   width = 1,                          .waitrequest
		.av_read                (matrix_unit_0_avmm_h_ddr_read),                                               //   input,   width = 1,                          .read
		.av_readdata            (matrix_unit_0_avmm_h_ddr_readdata),                                           //  output,   width = 8,                          .readdata
		.av_readdatavalid       (matrix_unit_0_avmm_h_ddr_readdatavalid),                                      //  output,   width = 1,                          .readdatavalid
		.av_write               (matrix_unit_0_avmm_h_ddr_write),                                              //   input,   width = 1,                          .write
		.av_writedata           (matrix_unit_0_avmm_h_ddr_writedata),                                          //   input,   width = 8,                          .writedata
		.av_burstcount          (1'b1),                                                                        // (terminated),                                        
		.av_byteenable          (1'b1),                                                                        // (terminated),                                        
		.av_beginbursttransfer  (1'b0),                                                                        // (terminated),                                        
		.av_begintransfer       (1'b0),                                                                        // (terminated),                                        
		.av_chipselect          (1'b0),                                                                        // (terminated),                                        
		.av_lock                (1'b0),                                                                        // (terminated),                                        
		.av_debugaccess         (1'b0),                                                                        // (terminated),                                        
		.uav_clken              (),                                                                            // (terminated),                                        
		.av_clken               (1'b1),                                                                        // (terminated),                                        
		.uav_response           (2'b00),                                                                       // (terminated),                                        
		.av_response            (),                                                                            // (terminated),                                        
		.uav_writeresponsevalid (1'b0),                                                                        // (terminated),                                        
		.av_writeresponsevalid  ()                                                                             // (terminated),                                        
	);

	mu_afu_system_altera_merlin_slave_translator_191_x56fcki #(
		.AV_ADDRESS_W                   (33),
		.AV_DATA_W                      (8),
		.UAV_DATA_W                     (8),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (1),
		.UAV_BYTEENABLE_W               (1),
		.UAV_ADDRESS_W                  (33),
		.UAV_BURSTCOUNT_W               (1),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (1),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.USE_READRESPONSE               (0),
		.USE_WRITERESPONSE              (0),
		.AV_SYMBOLS_PER_WORD            (1),
		.AV_ADDRESS_SYMBOLS             (1),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (0),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0),
		.WAITREQUEST_ALLOWANCE          (0),
		.SYNC_RESET                     (0)
	) matmul_afu_matmul_ddr4a_bridge_s0_translator (
		.clk                    (matmul_afu_matmul_clock_out_clk_clk),                                         //   input,   width = 1,                      clk.clk
		.reset                  (matrix_unit_0_reset_n_reset_bridge_in_reset_reset),                           //   input,   width = 1,                    reset.reset
		.uav_address            (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_address),       //   input,  width = 33, avalon_universal_slave_0.address
		.uav_burstcount         (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_burstcount),    //   input,   width = 1,                         .burstcount
		.uav_read               (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_read),          //   input,   width = 1,                         .read
		.uav_write              (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_write),         //   input,   width = 1,                         .write
		.uav_waitrequest        (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_waitrequest),   //  output,   width = 1,                         .waitrequest
		.uav_readdatavalid      (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_readdatavalid), //  output,   width = 1,                         .readdatavalid
		.uav_byteenable         (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_byteenable),    //   input,   width = 1,                         .byteenable
		.uav_readdata           (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_readdata),      //  output,   width = 8,                         .readdata
		.uav_writedata          (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_writedata),     //   input,   width = 8,                         .writedata
		.uav_lock               (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_lock),          //   input,   width = 1,                         .lock
		.uav_debugaccess        (matrix_unit_0_avmm_h_ddr_translator_avalon_universal_master_0_debugaccess),   //   input,   width = 1,                         .debugaccess
		.av_address             (matmul_afu_matmul_ddr4a_bridge_s0_address),                                   //  output,  width = 33,      avalon_anti_slave_0.address
		.av_write               (matmul_afu_matmul_ddr4a_bridge_s0_write),                                     //  output,   width = 1,                         .write
		.av_read                (matmul_afu_matmul_ddr4a_bridge_s0_read),                                      //  output,   width = 1,                         .read
		.av_readdata            (matmul_afu_matmul_ddr4a_bridge_s0_readdata),                                  //   input,   width = 8,                         .readdata
		.av_writedata           (matmul_afu_matmul_ddr4a_bridge_s0_writedata),                                 //  output,   width = 8,                         .writedata
		.av_burstcount          (matmul_afu_matmul_ddr4a_bridge_s0_burstcount),                                //  output,   width = 1,                         .burstcount
		.av_byteenable          (matmul_afu_matmul_ddr4a_bridge_s0_byteenable),                                //  output,   width = 1,                         .byteenable
		.av_readdatavalid       (matmul_afu_matmul_ddr4a_bridge_s0_readdatavalid),                             //   input,   width = 1,                         .readdatavalid
		.av_waitrequest         (matmul_afu_matmul_ddr4a_bridge_s0_waitrequest),                               //   input,   width = 1,                         .waitrequest
		.av_debugaccess         (matmul_afu_matmul_ddr4a_bridge_s0_debugaccess),                               //  output,   width = 1,                         .debugaccess
		.av_begintransfer       (),                                                                            // (terminated),                                       
		.av_beginbursttransfer  (),                                                                            // (terminated),                                       
		.av_writebyteenable     (),                                                                            // (terminated),                                       
		.av_lock                (),                                                                            // (terminated),                                       
		.av_chipselect          (),                                                                            // (terminated),                                       
		.av_clken               (),                                                                            // (terminated),                                       
		.uav_clken              (1'b0),                                                                        // (terminated),                                       
		.av_outputenable        (),                                                                            // (terminated),                                       
		.uav_response           (),                                                                            // (terminated),                                       
		.av_response            (2'b00),                                                                       // (terminated),                                       
		.uav_writeresponsevalid (),                                                                            // (terminated),                                       
		.av_writeresponsevalid  (1'b0)                                                                         // (terminated),                                       
	);

endmodule
