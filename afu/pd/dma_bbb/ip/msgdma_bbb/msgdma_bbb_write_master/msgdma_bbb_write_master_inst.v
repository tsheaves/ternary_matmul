	msgdma_bbb_write_master #(
		.DATA_WIDTH                     (INTEGER_VALUE_FOR_DATA_WIDTH),
		.LENGTH_WIDTH                   (INTEGER_VALUE_FOR_LENGTH_WIDTH),
		.FIFO_DEPTH                     (INTEGER_VALUE_FOR_FIFO_DEPTH),
		.STRIDE_ENABLE                  (INTEGER_VALUE_FOR_STRIDE_ENABLE),
		.BURST_ENABLE                   (INTEGER_VALUE_FOR_BURST_ENABLE),
		.PACKET_ENABLE                  (INTEGER_VALUE_FOR_PACKET_ENABLE),
		.ERROR_ENABLE                   (INTEGER_VALUE_FOR_ERROR_ENABLE),
		.ERROR_WIDTH                    (INTEGER_VALUE_FOR_ERROR_WIDTH),
		.BYTE_ENABLE_WIDTH              (INTEGER_VALUE_FOR_BYTE_ENABLE_WIDTH),
		.BYTE_ENABLE_WIDTH_LOG2         (INTEGER_VALUE_FOR_BYTE_ENABLE_WIDTH_LOG2),
		.NO_BYTEENABLES                 (INTEGER_VALUE_FOR_NO_BYTEENABLES),
		.ADDRESS_WIDTH                  (INTEGER_VALUE_FOR_ADDRESS_WIDTH),
		.FIFO_DEPTH_LOG2                (INTEGER_VALUE_FOR_FIFO_DEPTH_LOG2),
		.SYMBOL_WIDTH                   (INTEGER_VALUE_FOR_SYMBOL_WIDTH),
		.NUMBER_OF_SYMBOLS              (INTEGER_VALUE_FOR_NUMBER_OF_SYMBOLS),
		.NUMBER_OF_SYMBOLS_LOG2         (INTEGER_VALUE_FOR_NUMBER_OF_SYMBOLS_LOG2),
		.MAX_BURST_COUNT_WIDTH          (INTEGER_VALUE_FOR_MAX_BURST_COUNT_WIDTH),
		.UNALIGNED_ACCESSES_ENABLE      (INTEGER_VALUE_FOR_UNALIGNED_ACCESSES_ENABLE),
		.ONLY_FULL_ACCESS_ENABLE        (INTEGER_VALUE_FOR_ONLY_FULL_ACCESS_ENABLE),
		.BURST_WRAPPING_SUPPORT         (INTEGER_VALUE_FOR_BURST_WRAPPING_SUPPORT),
		.PROGRAMMABLE_BURST_ENABLE      (INTEGER_VALUE_FOR_PROGRAMMABLE_BURST_ENABLE),
		.MAX_BURST_COUNT                (INTEGER_VALUE_FOR_MAX_BURST_COUNT),
		.FIFO_SPEED_OPTIMIZATION        (INTEGER_VALUE_FOR_FIFO_SPEED_OPTIMIZATION),
		.STRIDE_WIDTH                   (INTEGER_VALUE_FOR_STRIDE_WIDTH),
		.ACTUAL_BYTES_TRANSFERRED_WIDTH (INTEGER_VALUE_FOR_ACTUAL_BYTES_TRANSFERRED_WIDTH)
	) u0 (
		.clk                       (_connected_to_clk_),                       //   input,    width = 1,             Clock.clk
		.reset                     (_connected_to_reset_),                     //   input,    width = 1,       Clock_reset.reset
		.master_address            (_connected_to_master_address_),            //  output,   width = 49, Data_Write_Master.address
		.master_write              (_connected_to_master_write_),              //  output,    width = 1,                  .write
		.master_byteenable         (_connected_to_master_byteenable_),         //  output,   width = 64,                  .byteenable
		.master_writedata          (_connected_to_master_writedata_),          //  output,  width = 512,                  .writedata
		.master_waitrequest        (_connected_to_master_waitrequest_),        //   input,    width = 1,                  .waitrequest
		.master_burstcount         (_connected_to_master_burstcount_),         //  output,    width = 3,                  .burstcount
		.master_response           (_connected_to_master_response_),           //   input,    width = 2,                  .response
		.master_writeresponsevalid (_connected_to_master_writeresponsevalid_), //   input,    width = 1,                  .writeresponsevalid
		.snk_data                  (_connected_to_snk_data_),                  //   input,  width = 512,         Data_Sink.data
		.snk_valid                 (_connected_to_snk_valid_),                 //   input,    width = 1,                  .valid
		.snk_ready                 (_connected_to_snk_ready_),                 //  output,    width = 1,                  .ready
		.snk_command_data          (_connected_to_snk_command_data_),          //   input,  width = 256,      Command_Sink.data
		.snk_command_valid         (_connected_to_snk_command_valid_),         //   input,    width = 1,                  .valid
		.snk_command_ready         (_connected_to_snk_command_ready_),         //  output,    width = 1,                  .ready
		.src_response_data         (_connected_to_src_response_data_),         //  output,  width = 256,   Response_Source.data
		.src_response_valid        (_connected_to_src_response_valid_),        //  output,    width = 1,                  .valid
		.src_response_ready        (_connected_to_src_response_ready_)         //   input,    width = 1,                  .ready
	);
