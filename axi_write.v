module axi_write_inner(input [0:0] clk, input [0:0] rst, output [15:0] arg_0_debug_addr, output [15:0] arg_0_debug_wr_addr, output [31:0] arg_0_debug_wr_data, output [0:0] arg_0_debug_wr_en, output [15:0] arg_0_s_axil_araddr, output [2:0] arg_0_s_axil_arprot, output [0:0] arg_0_s_axil_arvalid, output [15:0] arg_0_s_axil_awaddr, output [2:0] arg_0_s_axil_awprot, output [0:0] arg_0_s_axil_awvalid, output [0:0] arg_0_s_axil_bready, output [0:0] arg_0_s_axil_rready, output [31:0] arg_0_s_axil_wdata, output [3:0] arg_0_s_axil_wstrb, output [0:0] arg_0_s_axil_wvalid, input [31:0] arg_0_debug_data, input [0:0] arg_0_s_axil_arready, input [0:0] arg_0_s_axil_awready, input [1:0] arg_0_s_axil_bresp, input [0:0] arg_0_s_axil_bvalid, input [31:0] arg_0_s_axil_rdata, input [1:0] arg_0_s_axil_rresp, input [0:0] arg_0_s_axil_rvalid, input [0:0] arg_0_s_axil_wready, output [0:0] valid, input [31:0] arg_1_out_data, input [31:0] arg_2_out_data);

	reg [15:0] arg_0_debug_addr_reg;
	reg [15:0] arg_0_debug_wr_addr_reg;
	reg [31:0] arg_0_debug_wr_data_reg;
	reg [0:0] arg_0_debug_wr_en_reg;
	reg [15:0] arg_0_s_axil_araddr_reg;
	reg [2:0] arg_0_s_axil_arprot_reg;
	reg [0:0] arg_0_s_axil_arvalid_reg;
	reg [15:0] arg_0_s_axil_awaddr_reg;
	reg [2:0] arg_0_s_axil_awprot_reg;
	reg [0:0] arg_0_s_axil_awvalid_reg;
	reg [0:0] arg_0_s_axil_bready_reg;
	reg [0:0] arg_0_s_axil_rready_reg;
	reg [31:0] arg_0_s_axil_wdata_reg;
	reg [3:0] arg_0_s_axil_wstrb_reg;
	reg [0:0] arg_0_s_axil_wvalid_reg;
	reg [0:0] valid_reg;

	assign arg_0_debug_addr = arg_0_debug_addr_reg;
	assign arg_0_debug_wr_addr = arg_0_debug_wr_addr_reg;
	assign arg_0_debug_wr_data = arg_0_debug_wr_data_reg;
	assign arg_0_debug_wr_en = arg_0_debug_wr_en_reg;
	assign arg_0_s_axil_araddr = arg_0_s_axil_araddr_reg;
	assign arg_0_s_axil_arprot = arg_0_s_axil_arprot_reg;
	assign arg_0_s_axil_arvalid = arg_0_s_axil_arvalid_reg;
	assign arg_0_s_axil_awaddr = arg_0_s_axil_awaddr_reg;
	assign arg_0_s_axil_awprot = arg_0_s_axil_awprot_reg;
	assign arg_0_s_axil_awvalid = arg_0_s_axil_awvalid_reg;
	assign arg_0_s_axil_bready = arg_0_s_axil_bready_reg;
	assign arg_0_s_axil_rready = arg_0_s_axil_rready_reg;
	assign arg_0_s_axil_wdata = arg_0_s_axil_wdata_reg;
	assign arg_0_s_axil_wstrb = arg_0_s_axil_wstrb_reg;
	assign arg_0_s_axil_wvalid = arg_0_s_axil_wvalid_reg;
	assign valid = valid_reg;

	// Start debug wires and ports

	initial begin
	end





	// End debug wires and ports

	// Start Functional Units
	reg [31:0] shl_in0_shl_1;
	reg [31:0] shl_in1_shl_1;
	wire [31:0] shl_out_shl_1;
	shlOp #(.WIDTH(32)) shl_shl_1(.in0(shl_in0_shl_1), .in1(shl_in1_shl_1), .out(shl_out_shl_1));

	add call_8();

	add call_10();

	add call_15();

	// End Functional Units

	// Start instruction result storage
	// End instruction result storage

	// Start pipeline variables
	// End pipeline variables

	reg [31:0] global_state;
	reg [31:0] last_BB_reg;
	// Start pipeline reset block
	always @(posedge clk) begin
		if (rst) begin
		end
	end
	// End pipeline reset block

	// Start pipeline valid chain block
	always @(posedge clk) begin

		if (!rst) begin
		end
	end
	// End pipeline valid chain block

	always @(posedge clk) begin
	end
	// Start pipeline initiation block
	always @(posedge clk) begin
	end
	// End pipeline initiation block

	always @(posedge clk) begin
		if (rst) begin
			last_BB_reg <= 0;
		end else begin
			if ((global_state == 0)) begin
			end
			if ((global_state == 1)) begin
					last_BB_reg <= 0;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			global_state <= 0;
		end else begin
			// Control code
			if ((global_state == 0)) begin 
				// Next state transition logic
				// Condition = True

				if (1) begin
					global_state <= 1;
				end
			end
			if ((global_state == 1)) begin 
				// Next state transition logic
				// Condition = True

				if (1) begin
				if (arg_0_s_axil_wready && arg_0_s_axil_awready && arg_0_s_axil_bvalid) begin 
					global_state <= 1;
				end
				end
			end

			// Temporary storage code
			if ((global_state == 0)) begin 
				// Temporary storage
				// Store data computed at the stage
			end
			if ((global_state == 1)) begin 
				// Temporary storage
				// Store data computed at the stage
			end
		end
	end


	// Start pipeline instruction code
	// Start pipeline stages
	// End pipeline instruction code

	always @(*) begin
		if ((global_state == 0)) begin 
				//   call void @builtin_write_port_s_axil_bready(%class.axi_ram* %arg_0, i1 true)
				arg_0_s_axil_bready_reg = -(1'd1);
				//   call void @builtin_write_port_s_axil_awaddr(%class.axi_ram* %arg_0, i32 %0)
				arg_0_s_axil_awaddr_reg = shl_out_shl_1;
				//   call void @builtin_write_port_s_axil_awvalid(%class.axi_ram* %arg_0, i1 true)
				arg_0_s_axil_awvalid_reg = -(1'd1);
				//   call void @builtin_write_port_s_axil_wvalid(%class.axi_ram* %arg_0, i1 true)
				arg_0_s_axil_wvalid_reg = -(1'd1);
				//   call void @builtin_write_port_s_axil_wdata(%class.axi_ram* %arg_0, i32 %arg_2)
				arg_0_s_axil_wdata_reg = arg_2_out_data;
				//   call void @builtin_write_port_s_axil_wstrb(%class.axi_ram* %arg_0, i4 -1)
				arg_0_s_axil_wstrb_reg = -(4'd1);
			arg_0_s_axil_arvalid_reg = 0;
			arg_0_s_axil_rready_reg = 1;
		end else 		if ((global_state == 1)) begin 
				//   %1 = call i1 @builtin_read_port_s_axil_wready(%class.axi_ram* %arg_0)
				if (arg_0_s_axil_wready && arg_0_s_axil_awready && arg_0_s_axil_bvalid) begin
				end
				//   %2 = call i1 @builtin_read_port_s_axil_awready(%class.axi_ram* %arg_0)
				if (arg_0_s_axil_wready && arg_0_s_axil_awready && arg_0_s_axil_bvalid) begin
				end
				//   call void @builtin_write_port_s_axil_awvalid(%class.axi_ram* %arg_0, i1 true)
				if (arg_0_s_axil_wready && arg_0_s_axil_awready && arg_0_s_axil_bvalid) begin
				arg_0_s_axil_awvalid_reg = -(1'd1);
				end
				//   call void @builtin_write_port_s_axil_wdata(%class.axi_ram* %arg_0, i32 %arg_2)
				if (arg_0_s_axil_wready && arg_0_s_axil_awready && arg_0_s_axil_bvalid) begin
				arg_0_s_axil_wdata_reg = arg_2_out_data;
				end
				//   call void @builtin_write_port_s_axil_wvalid(%class.axi_ram* %arg_0, i1 true)
				if (arg_0_s_axil_wready && arg_0_s_axil_awready && arg_0_s_axil_bvalid) begin
				arg_0_s_axil_wvalid_reg = -(1'd1);
				end
				//   %3 = call i1 @builtin_read_port_s_axil_bvalid(%class.axi_ram* %arg_0)
				if (arg_0_s_axil_wready && arg_0_s_axil_awready && arg_0_s_axil_bvalid) begin
				end
			arg_0_s_axil_arvalid_reg = 0;
			arg_0_s_axil_rready_reg = 1;
			arg_0_s_axil_wstrb_reg = 31;
		end else begin 
			// Default values
				arg_0_s_axil_arvalid_reg = 0;
				arg_0_s_axil_awvalid_reg = 0;
				arg_0_s_axil_rready_reg = 1;
				arg_0_s_axil_wstrb_reg = 31;
				arg_0_s_axil_wvalid_reg = 0;
		end
	end
	always @(*) begin
		if ((global_state == 0)) begin 
				//   %0 = shl i32 %arg_1, 2
				shl_in0_shl_1 = arg_1_out_data;
				shl_in1_shl_1 = (32'd2);
		end else begin 
			// Default values
		end
	end
	always @(*) begin
		if ((global_state == 1)) begin 
				//   call void @builtin_stall(i1 %1)
		end else begin 
			// Default values
		end
	end
	always @(*) begin
		if ((global_state == 1)) begin 
				//   call void @builtin_stall(i1 %2)
		end else begin 
			// Default values
		end
	end
	always @(*) begin
		if ((global_state == 1)) begin 
				//   call void @builtin_stall(i1 %3)
		end else begin 
			// Default values
		end
	end
	always @(*) begin
		if ((global_state == 1)) begin 
				//   ret void
				if (arg_0_s_axil_wready && arg_0_s_axil_awready && arg_0_s_axil_bvalid) begin
				valid_reg = 1;
				end
		end else begin 
			// Default values
				valid_reg = 0;
		end
	end
endmodule

module axi_write(input [0:0] clk, input [0:0] rst, output [15:0] arg_0_debug_addr, output [15:0] arg_0_debug_wr_addr, output [31:0] arg_0_debug_wr_data, output [0:0] arg_0_debug_wr_en, output [15:0] arg_0_s_axil_araddr, output [2:0] arg_0_s_axil_arprot, output [0:0] arg_0_s_axil_arvalid, output [15:0] arg_0_s_axil_awaddr, output [2:0] arg_0_s_axil_awprot, output [0:0] arg_0_s_axil_awvalid, output [0:0] arg_0_s_axil_bready, output [0:0] arg_0_s_axil_rready, output [31:0] arg_0_s_axil_wdata, output [3:0] arg_0_s_axil_wstrb, output [0:0] arg_0_s_axil_wvalid, input [31:0] arg_0_debug_data, input [0:0] arg_0_s_axil_arready, input [0:0] arg_0_s_axil_awready, input [1:0] arg_0_s_axil_bresp, input [0:0] arg_0_s_axil_bvalid, input [31:0] arg_0_s_axil_rdata, input [1:0] arg_0_s_axil_rresp, input [0:0] arg_0_s_axil_rvalid, input [0:0] arg_0_s_axil_wready, output [0:0] valid, input [31:0] arg_1_out_data, input [31:0] arg_2_out_data);


	initial begin
	end




	axi_write_inner inner(.arg_0_debug_addr(arg_0_debug_addr), .arg_0_debug_data(arg_0_debug_data), .arg_0_debug_wr_addr(arg_0_debug_wr_addr), .arg_0_debug_wr_data(arg_0_debug_wr_data), .arg_0_debug_wr_en(arg_0_debug_wr_en), .arg_0_s_axil_araddr(arg_0_s_axil_araddr), .arg_0_s_axil_arprot(arg_0_s_axil_arprot), .arg_0_s_axil_arready(arg_0_s_axil_arready), .arg_0_s_axil_arvalid(arg_0_s_axil_arvalid), .arg_0_s_axil_awaddr(arg_0_s_axil_awaddr), .arg_0_s_axil_awprot(arg_0_s_axil_awprot), .arg_0_s_axil_awready(arg_0_s_axil_awready), .arg_0_s_axil_awvalid(arg_0_s_axil_awvalid), .arg_0_s_axil_bready(arg_0_s_axil_bready), .arg_0_s_axil_bresp(arg_0_s_axil_bresp), .arg_0_s_axil_bvalid(arg_0_s_axil_bvalid), .arg_0_s_axil_rdata(arg_0_s_axil_rdata), .arg_0_s_axil_rready(arg_0_s_axil_rready), .arg_0_s_axil_rresp(arg_0_s_axil_rresp), .arg_0_s_axil_rvalid(arg_0_s_axil_rvalid), .arg_0_s_axil_wdata(arg_0_s_axil_wdata), .arg_0_s_axil_wready(arg_0_s_axil_wready), .arg_0_s_axil_wstrb(arg_0_s_axil_wstrb), .arg_0_s_axil_wvalid(arg_0_s_axil_wvalid), .arg_1_out_data(arg_1_out_data), .arg_2_out_data(arg_2_out_data), .clk(clk), .rst(rst), .valid(valid));

endmodule