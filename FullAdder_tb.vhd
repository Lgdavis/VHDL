library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder_tb is
end FullAdder_tb;

architecture behavioral of FullAdder_tb is

signal xt	: std_logic := '0';
signal yt	: std_logic := '0';
signal cint	: std_logic := '0';
signal st	: std_logic := '0';
signal coutt: std_logic := '0';

component FullAdder
Port(	 x  : in std_logic;
         y  : in std_logic;
	   cin  : in std_logic;
         s  : out std_logic;
      cout  : out std_logic);
end component;

begin
UUT: FullAdder port map (x => xt, y=> yt, cin => cint, 
s =>st, cout=>coutt);

process

begin

wait for 100ns;
xt 	<= '0';
yt 	<= '0';
cint<= '1';

wait for 100ns;
xt 	<= '0';
yt 	<= '1';
cint<= '0';

wait for 100ns;
xt 	<= '0';
yt 	<= '1';
cint<= '1';

wait for 100ns;
xt 	<= '1';
yt 	<= '0';
cint<= '0';

wait for 100ns;
xt 	<= '1';
yt 	<= '0';
cint<= '1';

wait for 100ns;
xt 	<= '1';
yt 	<= '1';
cint<= '0';

wait for 100ns;
xt 	<= '1';
yt 	<= '1';
cint<= '1';

end process;
end behavioral;
