----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2023 16:46:02
-- Design Name: 
-- Module Name: main - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is

port(

    A : in std_logic_vector(5 downto 0);
    B : in std_logic_vector(5 downto 0)
);


end main;

architecture Behavioral of main is
 signal S : std_logic_vector(5 downto 0);
 signal P : std_logic_vector(11 downto 0);
 signal X : std_logic_vector(5 downto 0);
 signal Y : std_logic_vector(5 downto 0);
 signal Cn : std_logic := '0' ;
 signal Cout : std_logic_vector(4 downto 0);


component myadder 
port( X : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      Y : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      S : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      Cin : in STD_LOGIC;
      Cout : OUT STD_LOGIC   
);
end component ;
begin

P(0) <= A(0) AND B(0);
X(0) <= A(1) AND B(0);
X(1) <= A(2) AND B(0);
X(2) <= A(3) AND B(0);
X(3) <= A(4) AND B(0);
X(4) <= A(5) AND B(0);
X(3) <= '0';
Y(0) <= A(0) AND B(1);
Y(1) <= A(1) AND B(1);
Y(2) <= A(2) AND B(1);
Y(3) <= A(3) AND B(1);
Y(4) <= A(4) AND B(1);
Y(5) <= A(5) AND B(1);

ADD1 : myadder
    port map
    ( X => X,
      Y => Y,
      S => S,
      Cin => Cn,
      Cout => cout(0));

P(1) <= S(0);


X(0) <= S(1);
X(1) <= S(2);
X(2) <= S(3);
X(3) <= S(4);
X(4) <= S(5);
X(5) <= cout(0);
Y(0) <= A(0) AND B(2);
Y(1) <= A(1) AND B(2);
Y(2) <= A(2) AND B(2);
Y(3) <= A(3) AND B(2);
Y(4) <= A(4) AND B(2);
Y(5) <= A(5) AND B(2);


ADD2 : myadder
    port map
    ( X => X,
      Y => Y,
      S => S,
      Cin => Cn,
      Cout => cout(1));

P(2) <= S(0);


X(0) <= S(1);
X(1) <= S(2);
X(2) <= S(3);
X(3) <= S(4);
X(4) <= S(5);
X(5) <= cout(1);
Y(0) <= A(0) AND B(3);
Y(1) <= A(1) AND B(3);
Y(2) <= A(2) AND B(3);
Y(3) <= A(3) AND B(3);
Y(4) <= A(4) AND B(3);
Y(5) <= A(5) AND B(3);
ADD3 : myadder
    port map
    ( X => X,
      Y => Y,
      S => S,
      Cin => Cn,
      Cout => cout(2));
P(3) <= S(0);




X(0) <= S(1);
X(1) <= S(2);
X(2) <= S(3);
X(3) <= S(4);
X(4) <= S(5);
X(5) <= cout(2);
Y(0) <= A(0) AND B(4);
Y(1) <= A(1) AND B(4);
Y(2) <= A(2) AND B(4);
Y(3) <= A(3) AND B(4);
Y(4) <= A(4) AND B(4);
Y(5) <= A(5) AND B(4);
ADD4 : myadder
    port map
    ( X => X,
      Y => Y,
      S => S,
      Cin => Cn,
      Cout => cout(3));
P(4) <= S(0);



X(0) <= S(1);
X(1) <= S(2);
X(2) <= S(3);
X(3) <= S(4);
X(4) <= S(5);
X(5) <= cout(3);
Y(0) <= A(0) AND B(4);
Y(1) <= A(1) AND B(4);
Y(2) <= A(2) AND B(4);
Y(3) <= A(3) AND B(4);
Y(4) <= A(4) AND B(4);
Y(5) <= A(5) AND B(4);
ADD5 : myadder
    port map
    ( X => X,
      Y => Y,
      S => S,
      Cin => Cn,
      Cout => cout(4));
P(5) <= S(0);
P(6) <= S(1);
P(7) <= S(2);
P(8) <= S(3);
P(9) <= S(4);
P(10) <= S(5);
P(11) <= cout(4);






end Behavioral;
