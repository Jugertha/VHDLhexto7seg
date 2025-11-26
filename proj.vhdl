library ieee;
use ieee.std_logic_1164.all;
 entity proj is 
 port ( input : in std_logic_vector(3 downto 0); 
        
         output : out std_logic_vector(6 downto 0)); 
 end proj;

 architecture arch of proj is 
 begin
    
     with input select
         output <= "0000001" when "0000",  -- 0
                   "1001111" when "0001",  -- 1
                   "0010010" when "0010",  -- 2
                   "0000110" when "0011",  -- 3
                   "1001100" when "0100",  -- 4
                   "0100100" when "0101",  -- 5
                   "0100000" when "0110",  -- 6
                   "0001111" when "0111",  -- 7
                   "0000000" when "1000",  -- 8
                   "0000100" when "1001",  -- 9
                   "1110111" when "1010",  -- 10
                   "0011111" when "1011",  -- 11
                   "1001110" when "1100",  -- 12
                   "0111101" when "1101",  -- 13
                   "1001111" when "1110",  -- 14
                   "1000111" when "1111",  -- 15
                   "1111111" when others;  -- default (all segments off)
  end arch;
  

