----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.03.2023 10:25:09
-- Design Name: 
-- Module Name: full_adder - Behavioral
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

entity full_adder is
    port(
    A : IN STD_LOGIC;
    B : IN STD_LOGIC;
    Cin : IN STD_LOGIC;
    Cout : OUT STD_LOGIC;
    S : OUT STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

begin

S <= A XOR B XOR Cin;
COUT <= (A AND B) OR (Cin AND (A XOR B));


end Behavioral;
