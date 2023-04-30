library library_name;
use library_elements;
use tb_clk;

entity UART_TX_tb of UART_TX_tb is
end UART_TX_tb;


generic(data_width 	:= 8;
		baud_rate	:= 9600
		bitIndex_max:= data_width + 3;);
		--clk_freq	:= 50000);

architecture behavioural of UART_TX_tb is

	signal clk, tx_en, rst in std_logic;
	signal data in std_logic_vector[data_width -1 downto 0]; 
	signal baudSel in std_logic_vector [1 downto 0]
	signal rdy, tx_out out std_logic

begin

UUT UART_TX port map (clk => clk, tx_en => tx_en, rst =>rst, data => data, 
						baudSel=>, baudSel, rdy => rdy, tx_out =>tx_out);
						
tx_en 	<= '0';
rst   	<= '1';
data  	<= 0b11111111;
rdy	 	<= '0';
tx_out	<= '0'; 
					

process
begin

wait for 100ns;

	tx_en <= '1';

wait for 100ns;


wait;
end process;
end behavioural;