----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2023 21:14:18
-- Design Name: 
-- Module Name: secondmain - Behavioral
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

entity secondmain is
    Port ( A : in std_logic_vector(5 downto 0);
           B : in std_logic_vector(5 downto 0);
           P : out std_logic_vector(11 downto 0));
end secondmain;

 architecture Behavioral of secondmain is

signal a0b0 : std_logic; --1
signal a0b1 : std_logic; --2
signal a0b2 : std_logic; --3
signal a0b3 : std_logic; --4
signal a0b4 : std_logic; --5 
signal a0b5 : std_logic; --6


signal a1b0 : std_logic; --7
signal a1b1 : std_logic; --8 
signal a1b2 : std_logic; --9
signal a1b3 : std_logic; --10
signal a1b4 : std_logic; --11
signal a1b5 : std_logic; --12

signal a2b0 : std_logic; --13
signal a2b1 : std_logic; --14
signal a2b2 : std_logic; --15
signal a2b3 : std_logic; --16
signal a2b4 : std_logic; --17
signal a2b5 : std_logic; --18
  

signal a3b0 : std_logic; --19
signal a3b1 : std_logic; --20
signal a3b2 : std_logic; --21
signal a3b3 : std_logic; --22
signal a3b4 : std_logic; --23
signal a3b5 : std_logic; --24
 

signal a4b0 : std_logic; --25
signal a4b1 : std_logic; --26
signal a4b2 : std_logic; --27
signal a4b3 : std_logic; --28
signal a4b4 : std_logic; --29
signal a4b5 : std_logic; --30
 
signal a5b0 : std_logic; --31
signal a5b1 : std_logic; --32
signal a5b2 : std_logic; --33
signal a5b3 : std_logic; --34
signal a5b4 : std_logic; --35
signal a5b5 : std_logic; --36

begin


a0b0 <= A(0) AND B(0); 
a0b1 <= A(0) AND B(1);
a0b2 <= A(0) AND B(2);
a0b3 <= A(0) AND B(3);
a0b4 <= A(0) AND B(4);
a0b5 <= A(0) AND B(5);

a1b0 <= A(1) AND B(0); 
a1b1 <= A(1) AND B(1);
a1b2 <= A(1) AND B(2);
a1b3 <= A(1) AND B(3);
a1b4 <= A(1) AND B(4);
a1b5 <= A(1) AND B(5);

a2b0 <= A(2) AND B(0); 
a2b1 <= A(2) AND B(1);
a2b2 <= A(2) AND B(2);
a2b3 <= A(2) AND B(3);
a2b4 <= A(2) AND B(4);
a2b5 <= A(2) AND B(5);

a3b0 <= A(3) AND B(0); 
a3b1 <= A(3) AND B(1);
a3b2 <= A(3) AND B(2);
a3b3 <= A(3) AND B(3);
a3b4 <= A(3) AND B(4);
a3b5 <= A(3) AND B(5);



a4b0 <= A(4) AND B(0); 
a4b1 <= A(4) AND B(1);
a4b2 <= A(4) AND B(2);
a4b3 <= A(4) AND B(3);
a4b4 <= A(4) AND B(4);
a4b5 <= A(4) AND B(5);


a5b0 <= A(5) AND B(0); 
a5b1 <= A(5) AND B(1);
a5b2 <= A(5) AND B(2);
a5b3 <= A(5) AND B(3);
a5b4 <= A(5) AND B(4);
a5b5 <= A(5) AND B(5);

end Behavioral;
