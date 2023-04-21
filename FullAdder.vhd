library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
    Port(x  : in std_logic;
         y  : in std_logic;
	   cin  : in std_logic;
         s  : out std_logic;
      cout  : out std_logic);
end FullAdder;

architecture behavioral of FullAdder is

begin
      s	<= x xor y xor cin;
   cout	<= (x and y) or (x and cin) or (y and cin);

end behavioral;