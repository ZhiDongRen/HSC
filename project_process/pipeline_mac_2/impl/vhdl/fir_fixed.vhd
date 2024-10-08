-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fir_fixed is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    x_V : IN STD_LOGIC_VECTOR (15 downto 0);
    h_V_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    h_V_ce0 : OUT STD_LOGIC;
    h_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    y_V : OUT STD_LOGIC_VECTOR (16 downto 0);
    y_V_ap_vld : OUT STD_LOGIC );
end;


architecture behav of fir_fixed is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "fir_fixed,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z007s-clg225-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.508000,HLS_SYN_LAT=403,HLS_SYN_TPT=none,HLS_SYN_MEM=1,HLS_SYN_DSP=1,HLS_SYN_FF=130,HLS_SYN_LUT=194,HLS_VERSION=2019_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv8_63 : STD_LOGIC_VECTOR (7 downto 0) := "01100011";
    constant ap_const_lv17_0 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv7_64 : STD_LOGIC_VECTOR (6 downto 0) := "1100100";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal regs_V_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal regs_V_ce0 : STD_LOGIC;
    signal regs_V_we0 : STD_LOGIC;
    signal regs_V_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal regs_V_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_Val2_s_reg_143 : STD_LOGIC_VECTOR (16 downto 0);
    signal i1_0_reg_156 : STD_LOGIC_VECTOR (6 downto 0);
    signal sext_ln8_fu_174_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln8_reg_255 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_1_fu_178_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln9_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln9_reg_264 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_167_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln14_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln14_reg_278 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state4_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_1_fu_207_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal i_1_reg_282 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal h_V_load_reg_297 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state5_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal regs_V_load_1_reg_302 : STD_LOGIC_VECTOR (15 downto 0);
    signal lhs_V_fu_219_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal lhs_V_reg_307 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state4 : STD_LOGIC;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_phi_mux_i_0_phi_fu_135_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_0_reg_131 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_phi_mux_i1_0_phi_fu_160_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln12_1_fu_192_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln12_fu_197_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln15_fu_213_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal grp_fu_167_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal grp_fu_242_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component fir_fixed_mac_mulbkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component fir_fixed_regs_V IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (6 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (15 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    regs_V_U : component fir_fixed_regs_V
    generic map (
        DataWidth => 16,
        AddressRange => 100,
        AddressWidth => 7)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => regs_V_address0,
        ce0 => regs_V_ce0,
        we0 => regs_V_we0,
        d0 => regs_V_d0,
        q0 => regs_V_q0);

    fir_fixed_mac_mulbkb_U1 : component fir_fixed_mac_mulbkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        din0 => regs_V_load_1_reg_302,
        din1 => h_V_load_reg_297,
        din2 => lhs_V_reg_307,
        dout => grp_fu_242_p3);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state4) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((tmp_1_fu_178_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone)))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((tmp_1_fu_178_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i1_0_reg_156_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_1_fu_178_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i1_0_reg_156 <= ap_const_lv7_0;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln14_reg_278 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                i1_0_reg_156 <= i_1_reg_282;
            end if; 
        end if;
    end process;

    i_0_reg_131_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                i_0_reg_131 <= grp_fu_167_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_131 <= ap_const_lv8_63;
            end if; 
        end if;
    end process;

    p_Val2_s_reg_143_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_1_fu_178_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                p_Val2_s_reg_143 <= ap_const_lv17_0;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln14_reg_278 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                p_Val2_s_reg_143 <= grp_fu_242_p3(31 downto 15);
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln14_reg_278 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                h_V_load_reg_297 <= h_V_q0;
                    lhs_V_reg_307(31 downto 15) <= lhs_V_fu_219_p3(31 downto 15);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_1_reg_282 <= i_1_fu_207_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln14_reg_278 <= icmp_ln14_fu_201_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_1_fu_178_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                icmp_ln9_reg_264 <= icmp_ln9_fu_186_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln14_reg_278 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                regs_V_load_1_reg_302 <= regs_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                sext_ln8_reg_255 <= sext_ln8_fu_174_p1;
            end if;
        end if;
    end process;
    lhs_V_reg_307(14 downto 0) <= "000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_1_fu_178_p3, icmp_ln14_fu_201_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, ap_block_pp0_stage1_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((tmp_1_fu_178_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((icmp_ln14_fu_201_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((icmp_ln14_fu_201_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(3);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(4);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state7 <= ap_CS_fsm(5);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state4_assign_proc : process(icmp_ln14_fu_201_p2)
    begin
        if ((icmp_ln14_fu_201_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state4 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state4 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_i1_0_phi_fu_160_p4_assign_proc : process(i1_0_reg_156, icmp_ln14_reg_278, ap_CS_fsm_pp0_stage0, i_1_reg_282, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((icmp_ln14_reg_278 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_i1_0_phi_fu_160_p4 <= i_1_reg_282;
        else 
            ap_phi_mux_i1_0_phi_fu_160_p4 <= i1_0_reg_156;
        end if; 
    end process;

    ap_phi_mux_i_0_phi_fu_135_p4 <= i_0_reg_131;

    ap_ready_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_167_p0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, ap_phi_mux_i_0_phi_fu_135_p4, i_0_reg_131)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_167_p0 <= i_0_reg_131;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            grp_fu_167_p0 <= ap_phi_mux_i_0_phi_fu_135_p4;
        else 
            grp_fu_167_p0 <= "XXXXXXXX";
        end if; 
    end process;

    grp_fu_167_p2 <= std_logic_vector(signed(grp_fu_167_p0) + signed(ap_const_lv8_FF));
    h_V_address0 <= zext_ln15_fu_213_p1(7 - 1 downto 0);

    h_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            h_V_ce0 <= ap_const_logic_1;
        else 
            h_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    i_1_fu_207_p2 <= std_logic_vector(unsigned(ap_phi_mux_i1_0_phi_fu_160_p4) + unsigned(ap_const_lv7_1));
    icmp_ln14_fu_201_p2 <= "1" when (ap_phi_mux_i1_0_phi_fu_160_p4 = ap_const_lv7_64) else "0";
    icmp_ln9_fu_186_p2 <= "1" when (i_0_reg_131 = ap_const_lv8_0) else "0";
    lhs_V_fu_219_p3 <= (p_Val2_s_reg_143 & ap_const_lv15_0);

    regs_V_address0_assign_proc : process(ap_CS_fsm_state2, tmp_1_fu_178_p3, icmp_ln9_fu_186_p2, ap_CS_fsm_state3, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, zext_ln12_1_fu_192_p1, zext_ln12_fu_197_p1, zext_ln15_fu_213_p1)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            regs_V_address0 <= zext_ln15_fu_213_p1(7 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            regs_V_address0 <= zext_ln12_fu_197_p1(7 - 1 downto 0);
        elsif (((icmp_ln9_fu_186_p2 = ap_const_lv1_1) and (tmp_1_fu_178_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            regs_V_address0 <= ap_const_lv7_0;
        elsif (((icmp_ln9_fu_186_p2 = ap_const_lv1_0) and (tmp_1_fu_178_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            regs_V_address0 <= zext_ln12_1_fu_192_p1(7 - 1 downto 0);
        else 
            regs_V_address0 <= "XXXXXXX";
        end if; 
    end process;


    regs_V_ce0_assign_proc : process(ap_CS_fsm_state2, tmp_1_fu_178_p3, icmp_ln9_fu_186_p2, ap_CS_fsm_state3, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((icmp_ln9_fu_186_p2 = ap_const_lv1_0) and (tmp_1_fu_178_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((icmp_ln9_fu_186_p2 = ap_const_lv1_1) and (tmp_1_fu_178_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            regs_V_ce0 <= ap_const_logic_1;
        else 
            regs_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    regs_V_d0_assign_proc : process(x_V, regs_V_q0, ap_CS_fsm_state2, tmp_1_fu_178_p3, icmp_ln9_fu_186_p2, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            regs_V_d0 <= regs_V_q0;
        elsif (((icmp_ln9_fu_186_p2 = ap_const_lv1_1) and (tmp_1_fu_178_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            regs_V_d0 <= x_V;
        else 
            regs_V_d0 <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;


    regs_V_we0_assign_proc : process(ap_CS_fsm_state2, tmp_1_fu_178_p3, icmp_ln9_fu_186_p2, icmp_ln9_reg_264, ap_CS_fsm_state3)
    begin
        if ((((icmp_ln9_reg_264 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((icmp_ln9_fu_186_p2 = ap_const_lv1_1) and (tmp_1_fu_178_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            regs_V_we0 <= ap_const_logic_1;
        else 
            regs_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

        sext_ln8_fu_174_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(i_0_reg_131),32));

    tmp_1_fu_178_p3 <= i_0_reg_131(7 downto 7);
    y_V <= p_Val2_s_reg_143;

    y_V_ap_vld_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            y_V_ap_vld <= ap_const_logic_1;
        else 
            y_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln12_1_fu_192_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_167_p2),64));
    zext_ln12_fu_197_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln8_reg_255),64));
    zext_ln15_fu_213_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_i1_0_phi_fu_160_p4),64));
end behav;
