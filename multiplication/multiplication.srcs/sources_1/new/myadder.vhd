----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2023 17:20:27
-- Design Name: 
-- Module Name: myadder - Behavioral
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

entity myadder is
    Port ( A :IN STD_LOGIC_VECTOR(5 DOWNTO 0);
           B : IN STD_LOGIC_VECTOR(5 DOWNTO 0)
           
    );
end myadder;

architecture Behavioral of myadder is
 signal S : std_logic_vector(5 downto 0);
 signal C : std_logic_vector(5 downto 0);
 signal CIN : std_logic;

begin

S(0) <= A(0) XOR B(0) XOR CIN;
C(0) <= (A(0) AND B(0)) OR (CIN AND (A(0) XOR B(0)));


S(1) <= A(1) XOR B(1) XOR C(0);
C(1) <= (A(1) AND B(1)) OR (C(0) AND (A(1) XOR B(1)));


S(2) <= A(2) XOR B(2) XOR C(1);
C(2) <= (A(2) AND B(2)) OR (C(1) AND (A(2) XOR B(2)));

S(3) <= A(3) XOR B(3) XOR C(2);
C(3) <= (A(3) AND B(3)) OR (C(2) AND (A(3) XOR B(3)));

S(4) <= A(4) XOR B(4) XOR C(3);
C(4) <= (A(4) AND B(4)) OR (C(3) AND (A(4) XOR B(4)));

S(5) <= A(5) XOR B(5) XOR C(4);
C(5) <= (A(5) AND B(5)) OR (C(4) AND (A(5) XOR B(5)));



end Behavioral;
