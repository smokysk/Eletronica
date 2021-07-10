library verilog;
use verilog.vl_types.all;
entity COUNTER_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        D               : in     vl_logic_vector(6 downto 0);
        Q               : in     vl_logic_vector(6 downto 0);
        QB              : in     vl_logic_vector(6 downto 0);
        R               : in     vl_logic_vector(6 downto 0);
        S               : in     vl_logic_vector(6 downto 0);
        sampler_tx      : out    vl_logic
    );
end COUNTER_vlg_sample_tst;
