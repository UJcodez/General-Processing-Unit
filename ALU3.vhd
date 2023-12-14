 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU3 is
port(Clk:in std_logic;
A,B : in unsigned(7 downto 0);
student_id : in unsigned(3 downto 0);
OP : in unsigned(15 downto 0);
Neg : out std_logic;
Result : out unsigned(3 downto 0));
end entity;
architecture calculation of ALU3 is
signal Reg1,Reg2: unsigned(7 downto 0) :=(others=> '0');
begin
Reg1 <= A;
Reg2 <= B;
process(Clk,OP)
begin
if (student_id(0) = '1') then
Result <= "0001"; -- Y
else
Result <= "0000"; -- N
end if;
end process;
end calculation;