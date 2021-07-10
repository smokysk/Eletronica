library verilog;
use verilog.vl_types.all;
entity COUNTER_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(6 downto 0);
        Q_D             : in     vl_logic_vector(2 downto 0);
        Q_U             : in     vl_logic_vector(3 downto 0);
        QB              : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end COUNTER_vlg_check_tst;
