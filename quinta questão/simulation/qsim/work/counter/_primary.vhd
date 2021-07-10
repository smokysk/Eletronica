library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        clk_50Mhz       : in     vl_logic;
        clock_out       : out    vl_logic;
        saidas          : out    vl_logic_vector(6 downto 0)
    );
end counter;
