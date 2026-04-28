set moduleName dit_fft_8
set isTopModule 1
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {dit_fft_8}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_0 int 32 regular {pointer 0}  }
	{ in_1 int 32 regular {pointer 0}  }
	{ in_2 int 32 regular {pointer 0}  }
	{ in_3 int 32 regular {pointer 0}  }
	{ in_4 int 32 regular {pointer 0}  }
	{ in_5 int 32 regular {pointer 0}  }
	{ in_6 int 32 regular {pointer 0}  }
	{ in_7 int 32 regular {pointer 0}  }
	{ out_0 int 32 regular {pointer 1}  }
	{ out_1 int 32 regular {pointer 1}  }
	{ out_2 int 32 regular {pointer 1}  }
	{ out_3 int 32 regular {pointer 1}  }
	{ out_4 int 32 regular {pointer 1}  }
	{ out_5 int 32 regular {pointer 1}  }
	{ out_6 int 32 regular {pointer 1}  }
	{ out_7 int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "in_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_4", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_5", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_6", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_7", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ in_0 sc_in sc_lv 32 signal 0 } 
	{ in_1 sc_in sc_lv 32 signal 1 } 
	{ in_2 sc_in sc_lv 32 signal 2 } 
	{ in_3 sc_in sc_lv 32 signal 3 } 
	{ in_4 sc_in sc_lv 32 signal 4 } 
	{ in_5 sc_in sc_lv 32 signal 5 } 
	{ in_6 sc_in sc_lv 32 signal 6 } 
	{ in_7 sc_in sc_lv 32 signal 7 } 
	{ out_0 sc_out sc_lv 32 signal 8 } 
	{ out_1 sc_out sc_lv 32 signal 9 } 
	{ out_2 sc_out sc_lv 32 signal 10 } 
	{ out_3 sc_out sc_lv 32 signal 11 } 
	{ out_4 sc_out sc_lv 32 signal 12 } 
	{ out_5 sc_out sc_lv 32 signal 13 } 
	{ out_6 sc_out sc_lv 32 signal 14 } 
	{ out_7 sc_out sc_lv 32 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "in_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_0", "role": "default" }} , 
 	{ "name": "in_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_1", "role": "default" }} , 
 	{ "name": "in_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_2", "role": "default" }} , 
 	{ "name": "in_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_3", "role": "default" }} , 
 	{ "name": "in_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_4", "role": "default" }} , 
 	{ "name": "in_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_5", "role": "default" }} , 
 	{ "name": "in_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_6", "role": "default" }} , 
 	{ "name": "in_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_7", "role": "default" }} , 
 	{ "name": "out_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_0", "role": "default" }} , 
 	{ "name": "out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_1", "role": "default" }} , 
 	{ "name": "out_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_2", "role": "default" }} , 
 	{ "name": "out_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_3", "role": "default" }} , 
 	{ "name": "out_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_4", "role": "default" }} , 
 	{ "name": "out_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_5", "role": "default" }} , 
 	{ "name": "out_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_6", "role": "default" }} , 
 	{ "name": "out_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_7", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "dit_fft_8",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_0", "Type" : "None", "Direction" : "O"},
			{"Name" : "out_1", "Type" : "None", "Direction" : "O"},
			{"Name" : "out_2", "Type" : "None", "Direction" : "O"},
			{"Name" : "out_3", "Type" : "None", "Direction" : "O"},
			{"Name" : "out_4", "Type" : "None", "Direction" : "O"},
			{"Name" : "out_5", "Type" : "None", "Direction" : "O"},
			{"Name" : "out_6", "Type" : "None", "Direction" : "O"},
			{"Name" : "out_7", "Type" : "None", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_13s_29_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_13ns_29_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_12s_12ns_12_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_16s_16s_12ns_29_4_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_16s_16s_13s_29_4_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_16s_16s_13s_29_4_1_U6", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dit_fft_8 {
		in_0 {Type I LastRead 0 FirstWrite -1}
		in_1 {Type I LastRead 0 FirstWrite -1}
		in_2 {Type I LastRead 0 FirstWrite -1}
		in_3 {Type I LastRead 0 FirstWrite -1}
		in_4 {Type I LastRead 0 FirstWrite -1}
		in_5 {Type I LastRead 0 FirstWrite -1}
		in_6 {Type I LastRead 0 FirstWrite -1}
		in_7 {Type I LastRead 0 FirstWrite -1}
		out_0 {Type O LastRead -1 FirstWrite 6}
		out_1 {Type O LastRead -1 FirstWrite 6}
		out_2 {Type O LastRead -1 FirstWrite 6}
		out_3 {Type O LastRead -1 FirstWrite 6}
		out_4 {Type O LastRead -1 FirstWrite 6}
		out_5 {Type O LastRead -1 FirstWrite 6}
		out_6 {Type O LastRead -1 FirstWrite 6}
		out_7 {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_0 { ap_none {  { in_0 in_data 0 32 } } }
	in_1 { ap_none {  { in_1 in_data 0 32 } } }
	in_2 { ap_none {  { in_2 in_data 0 32 } } }
	in_3 { ap_none {  { in_3 in_data 0 32 } } }
	in_4 { ap_none {  { in_4 in_data 0 32 } } }
	in_5 { ap_none {  { in_5 in_data 0 32 } } }
	in_6 { ap_none {  { in_6 in_data 0 32 } } }
	in_7 { ap_none {  { in_7 in_data 0 32 } } }
	out_0 { ap_none {  { out_0 out_data 1 32 } } }
	out_1 { ap_none {  { out_1 out_data 1 32 } } }
	out_2 { ap_none {  { out_2 out_data 1 32 } } }
	out_3 { ap_none {  { out_3 out_data 1 32 } } }
	out_4 { ap_none {  { out_4 out_data 1 32 } } }
	out_5 { ap_none {  { out_5 out_data 1 32 } } }
	out_6 { ap_none {  { out_6 out_data 1 32 } } }
	out_7 { ap_none {  { out_7 out_data 1 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
