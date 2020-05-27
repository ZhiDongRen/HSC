set moduleName fir_fixed
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {fir_fixed}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_V int 16 regular  }
	{ h_V int 16 regular {array 100 { 1 1 } 1 1 }  }
	{ y_V int 17 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "x.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "h_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "h.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "y_V", "interface" : "wire", "bitwidth" : 17, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":16,"cElement": [{"cName": "y.V","cData": "int17","bit_use": { "low": 0,"up": 16},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_V sc_in sc_lv 16 signal 0 } 
	{ h_V_address0 sc_out sc_lv 7 signal 1 } 
	{ h_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ h_V_q0 sc_in sc_lv 16 signal 1 } 
	{ h_V_address1 sc_out sc_lv 7 signal 1 } 
	{ h_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ h_V_q1 sc_in sc_lv 16 signal 1 } 
	{ y_V sc_out sc_lv 17 signal 2 } 
	{ y_V_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "x_V", "role": "default" }} , 
 	{ "name": "h_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "h_V", "role": "address0" }} , 
 	{ "name": "h_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_V", "role": "ce0" }} , 
 	{ "name": "h_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_V", "role": "q0" }} , 
 	{ "name": "h_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "h_V", "role": "address1" }} , 
 	{ "name": "h_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_V", "role": "ce1" }} , 
 	{ "name": "h_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_V", "role": "q1" }} , 
 	{ "name": "y_V", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "y_V", "role": "default" }} , 
 	{ "name": "y_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "y_V", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "fir_fixed",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "205", "EstimateLatencyMax" : "205",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "regs_V_98", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_99", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_73", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_75", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_77", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_79", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_81", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_83", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_85", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_87", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_89", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_91", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_93", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_95", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_97", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_72", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_74", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_76", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_78", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_80", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_82", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_84", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_86", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_88", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_90", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_92", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_94", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "regs_V_96", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fir_fixed_mux_128bkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fir_fixed_mac_mulcud_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fir_fixed_mac_mulcud_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fir_fixed {
		x_V {Type I LastRead 0 FirstWrite -1}
		h_V {Type I LastRead 4 FirstWrite -1}
		y_V {Type O LastRead -1 FirstWrite 4}
		regs_V_98 {Type IO LastRead -1 FirstWrite -1}
		regs_V_99 {Type IO LastRead -1 FirstWrite -1}
		regs_V_1 {Type IO LastRead -1 FirstWrite -1}
		regs_V_3 {Type IO LastRead -1 FirstWrite -1}
		regs_V_5 {Type IO LastRead -1 FirstWrite -1}
		regs_V_7 {Type IO LastRead -1 FirstWrite -1}
		regs_V_9 {Type IO LastRead -1 FirstWrite -1}
		regs_V_11 {Type IO LastRead -1 FirstWrite -1}
		regs_V_13 {Type IO LastRead -1 FirstWrite -1}
		regs_V_15 {Type IO LastRead -1 FirstWrite -1}
		regs_V_17 {Type IO LastRead -1 FirstWrite -1}
		regs_V_19 {Type IO LastRead -1 FirstWrite -1}
		regs_V_21 {Type IO LastRead -1 FirstWrite -1}
		regs_V_23 {Type IO LastRead -1 FirstWrite -1}
		regs_V_25 {Type IO LastRead -1 FirstWrite -1}
		regs_V_27 {Type IO LastRead -1 FirstWrite -1}
		regs_V_29 {Type IO LastRead -1 FirstWrite -1}
		regs_V_31 {Type IO LastRead -1 FirstWrite -1}
		regs_V_33 {Type IO LastRead -1 FirstWrite -1}
		regs_V_35 {Type IO LastRead -1 FirstWrite -1}
		regs_V_37 {Type IO LastRead -1 FirstWrite -1}
		regs_V_39 {Type IO LastRead -1 FirstWrite -1}
		regs_V_41 {Type IO LastRead -1 FirstWrite -1}
		regs_V_43 {Type IO LastRead -1 FirstWrite -1}
		regs_V_45 {Type IO LastRead -1 FirstWrite -1}
		regs_V_47 {Type IO LastRead -1 FirstWrite -1}
		regs_V_49 {Type IO LastRead -1 FirstWrite -1}
		regs_V_51 {Type IO LastRead -1 FirstWrite -1}
		regs_V_53 {Type IO LastRead -1 FirstWrite -1}
		regs_V_55 {Type IO LastRead -1 FirstWrite -1}
		regs_V_57 {Type IO LastRead -1 FirstWrite -1}
		regs_V_59 {Type IO LastRead -1 FirstWrite -1}
		regs_V_61 {Type IO LastRead -1 FirstWrite -1}
		regs_V_63 {Type IO LastRead -1 FirstWrite -1}
		regs_V_65 {Type IO LastRead -1 FirstWrite -1}
		regs_V_67 {Type IO LastRead -1 FirstWrite -1}
		regs_V_69 {Type IO LastRead -1 FirstWrite -1}
		regs_V_71 {Type IO LastRead -1 FirstWrite -1}
		regs_V_73 {Type IO LastRead -1 FirstWrite -1}
		regs_V_75 {Type IO LastRead -1 FirstWrite -1}
		regs_V_77 {Type IO LastRead -1 FirstWrite -1}
		regs_V_79 {Type IO LastRead -1 FirstWrite -1}
		regs_V_81 {Type IO LastRead -1 FirstWrite -1}
		regs_V_83 {Type IO LastRead -1 FirstWrite -1}
		regs_V_85 {Type IO LastRead -1 FirstWrite -1}
		regs_V_87 {Type IO LastRead -1 FirstWrite -1}
		regs_V_89 {Type IO LastRead -1 FirstWrite -1}
		regs_V_91 {Type IO LastRead -1 FirstWrite -1}
		regs_V_93 {Type IO LastRead -1 FirstWrite -1}
		regs_V_95 {Type IO LastRead -1 FirstWrite -1}
		regs_V_97 {Type IO LastRead -1 FirstWrite -1}
		regs_V_0 {Type IO LastRead -1 FirstWrite -1}
		regs_V_2 {Type IO LastRead -1 FirstWrite -1}
		regs_V_4 {Type IO LastRead -1 FirstWrite -1}
		regs_V_6 {Type IO LastRead -1 FirstWrite -1}
		regs_V_8 {Type IO LastRead -1 FirstWrite -1}
		regs_V_10 {Type IO LastRead -1 FirstWrite -1}
		regs_V_12 {Type IO LastRead -1 FirstWrite -1}
		regs_V_14 {Type IO LastRead -1 FirstWrite -1}
		regs_V_16 {Type IO LastRead -1 FirstWrite -1}
		regs_V_18 {Type IO LastRead -1 FirstWrite -1}
		regs_V_20 {Type IO LastRead -1 FirstWrite -1}
		regs_V_22 {Type IO LastRead -1 FirstWrite -1}
		regs_V_24 {Type IO LastRead -1 FirstWrite -1}
		regs_V_26 {Type IO LastRead -1 FirstWrite -1}
		regs_V_28 {Type IO LastRead -1 FirstWrite -1}
		regs_V_30 {Type IO LastRead -1 FirstWrite -1}
		regs_V_32 {Type IO LastRead -1 FirstWrite -1}
		regs_V_34 {Type IO LastRead -1 FirstWrite -1}
		regs_V_36 {Type IO LastRead -1 FirstWrite -1}
		regs_V_38 {Type IO LastRead -1 FirstWrite -1}
		regs_V_40 {Type IO LastRead -1 FirstWrite -1}
		regs_V_42 {Type IO LastRead -1 FirstWrite -1}
		regs_V_44 {Type IO LastRead -1 FirstWrite -1}
		regs_V_46 {Type IO LastRead -1 FirstWrite -1}
		regs_V_48 {Type IO LastRead -1 FirstWrite -1}
		regs_V_50 {Type IO LastRead -1 FirstWrite -1}
		regs_V_52 {Type IO LastRead -1 FirstWrite -1}
		regs_V_54 {Type IO LastRead -1 FirstWrite -1}
		regs_V_56 {Type IO LastRead -1 FirstWrite -1}
		regs_V_58 {Type IO LastRead -1 FirstWrite -1}
		regs_V_60 {Type IO LastRead -1 FirstWrite -1}
		regs_V_62 {Type IO LastRead -1 FirstWrite -1}
		regs_V_64 {Type IO LastRead -1 FirstWrite -1}
		regs_V_66 {Type IO LastRead -1 FirstWrite -1}
		regs_V_68 {Type IO LastRead -1 FirstWrite -1}
		regs_V_70 {Type IO LastRead -1 FirstWrite -1}
		regs_V_72 {Type IO LastRead -1 FirstWrite -1}
		regs_V_74 {Type IO LastRead -1 FirstWrite -1}
		regs_V_76 {Type IO LastRead -1 FirstWrite -1}
		regs_V_78 {Type IO LastRead -1 FirstWrite -1}
		regs_V_80 {Type IO LastRead -1 FirstWrite -1}
		regs_V_82 {Type IO LastRead -1 FirstWrite -1}
		regs_V_84 {Type IO LastRead -1 FirstWrite -1}
		regs_V_86 {Type IO LastRead -1 FirstWrite -1}
		regs_V_88 {Type IO LastRead -1 FirstWrite -1}
		regs_V_90 {Type IO LastRead -1 FirstWrite -1}
		regs_V_92 {Type IO LastRead -1 FirstWrite -1}
		regs_V_94 {Type IO LastRead -1 FirstWrite -1}
		regs_V_96 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "205", "Max" : "205"}
	, {"Name" : "Interval", "Min" : "206", "Max" : "206"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	x_V { ap_none {  { x_V in_data 0 16 } } }
	h_V { ap_memory {  { h_V_address0 mem_address 1 7 }  { h_V_ce0 mem_ce 1 1 }  { h_V_q0 mem_dout 0 16 }  { h_V_address1 MemPortADDR2 1 7 }  { h_V_ce1 MemPortCE2 1 1 }  { h_V_q1 MemPortDOUT2 0 16 } } }
	y_V { ap_vld {  { y_V out_data 1 17 }  { y_V_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

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
