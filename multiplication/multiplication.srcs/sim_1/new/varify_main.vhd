----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.03.2023 08:59:21
-- Design Name: 
-- Module Name: varify_main - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity varify_main is
--  Port ( );
end varify_main;

architecture Behavioral of varify_main is
 component main
    port(A : in std_logic_vector(5 downto 0);
          B : in STD_LOGIC_VECTOR(5 downto 0);
          P : out std_logic_vector(11 downto 0) );
    end component;
    
    signal a :std_logic_vector(5 downto 0);
    signal b :std_logic_vector(5 downto 0);
    signal p :std_logic_vector(11 downto 0);
    
begin


    UUT : main port map (A => a,B =>b ,P => p);

    process
    begin
    
    a <= "010101";
    b <="110011";  -- p = 0100 0010 1111
    wait for 100ns;
    a <= "111111";
    b <="111111";  --p =  1111 1000 0001
    wait for 100ns;
    a <= "110000";
    b <="000011";  --p = 0000 1001 0000
    wait for 100ns;
    a <= "001100";
    b <="001000";  --p = 0000 0110 0000
    wait;

end process;

end Behavioral;
