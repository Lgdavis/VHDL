library IEEE:
use IEEE.STD_LOGIC_1164.ALL

entity BaudRateGenerator is

port (
		clk	    : in std_logic;
		baudSel	: in std_logic_vector [1 downto 0];
		shiftBit: out std_logic
);

signal unsigned timerVal;



architecture struct of BaudRateGenerator is

signal 

begin