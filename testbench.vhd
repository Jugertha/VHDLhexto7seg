library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
end entity;

architecture tb of testbench is
    -- Signals to connect to the design
    signal input_sig  : std_logic_vector(3 downto 0) := "0000";
    signal output_sig : std_logic_vector(6 downto 0);
begin
    -- Instantiate your design
    uut: entity work.proj
        port map (
            input  => input_sig,
            output => output_sig
        );

    -- Stimulus process: cycle through all inputs
    stim_process: process
    begin
        for i in 0 to 15 loop
            input_sig <= std_logic_vector(to_unsigned(i, 4));
            wait for 20 ns;  -- wait time per input
        end loop;

        -- End simulation
assert false report "End of simulation" severity note;
    end process;

end architecture;
