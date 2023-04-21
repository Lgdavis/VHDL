library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART is

generic(data_width 	:= 8;
		baud_rate	:= 9600
		clk_freq	:= 50000);

port	(clk		: in std_logic;
		 tx_en		: in std_logic;
		 rst		: in std_logic;
		 tx_data	: out std_logic_vector [data_width -1 downto 0];
		 rdy		: out std_logic;
		 baudSel	: out std_logic_vector [1 downto 0]
		 );
end UART_tx

architecture struct of UART is

 


begin



