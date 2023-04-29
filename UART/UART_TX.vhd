library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

<<<<<<< HEAD
entity UART_TX is

generic(data_width 	:= 8;
		baud_rate	:= 9600
		bitIndex_max:= data_width + 3;);
		--clk_freq	:= 50000);
=======
entity UART is

generic(data_width 	:= 8;
		baud_rate	:= 9600
		clk_freq	:= 50000);
>>>>>>> d0c4b757264c7d1482a50e40e007921a764fe819

port	(clk		: in std_logic;
		 tx_en		: in std_logic;
		 rst		: in std_logic;
<<<<<<< HEAD
		 data		: in std_logic_vector [data_width -1 downto 0];
		 rdy		: out std_logic;
		 baudSel	: out std_logic_vector [1 downto 0]
		 tx_out		: out std_logic;
		 );
end UART_TX

architecture behavioural of UART_TX is


type state is (RDY, LOAD, SEND);

signal tx_data	: std_logic_vector [data_width -1 downto 0];
signal tx_bit	: std_logic :=1;
signal timer 	: integer :=0;
signal bitIndex	: integer range 0 TO bitIndex_max

constant bitIndex_max	: integer := data_width + 1;
constant baud_timer 	: integer := 100000000/baud_rate;
=======
		 tx_data	: out std_logic_vector [data_width -1 downto 0];
		 rdy		: out std_logic;
		 baudSel	: out std_logic_vector [1 downto 0]
		 );
end UART_tx

architecture struct of UART is

 
>>>>>>> d0c4b757264c7d1482a50e40e007921a764fe819


begin

<<<<<<< HEAD
	process (clk)
	begin
		
		if rising_edge(clk) then
			
			--------------------------------------------------------
			--		State Logic	
			--------------------------------------------------------
			case state is 
			when RDY =>
					if tx_en then
						tx_data <= '1' & data & '0';
						state <= LOAD;
					end if
					
					timer <= 0;
					bitIndex <= bitIndex_max;	-- set to MSB to start TX in reverse
					tx_bit <= '1';
					
			-- Transmits in reverse order to accommodate RX
			when LOAD =>
					state <= SEND;
					bitIndex <= bitIndex - 1; --starts at MSB and increments backwards
					tx_bit <= tx_data(bitIndex);
						
			when SEND =>
					
					if (timer = baud_timer) then
						timer = 0;
					if (bitIndex = bitIndex_max) then
						state = RDY;
					
					else state <= LOAD	
				end if
				else timer = timer +1;
				end if;
				
			end case;
			end if;
	end process;
	
	--TX out
	--rdy signal out to reciever when RDY
	tx_out <= tx_bit;
	rdy<= '1' when (state = RDY) else '0'
	
	end

end behavioural
=======

>>>>>>> d0c4b757264c7d1482a50e40e007921a764fe819

