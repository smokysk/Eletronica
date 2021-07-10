library verilog;
use verilog.vl_types.all;
entity COUNTER is
    port(
        CLK             : in     vl_logic;
        D               : in     vl_logic_vector(6 downto 0);
        S               : in     vl_logic_vector(6 downto 0);
        R               : in     vl_logic_vector(6 downto 0);
        Q               : inout  vl_logic_vector(6 downto 0);
        QB              : inout  vl_logic_vector(6 downto 0);
        Q_U             : out    vl_logic_vector(3 downto 0);
        Q_D             : out    vl_logic_vector(2 downto 0)
    );
end COUNTER;
