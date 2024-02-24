library ieee;
use ieee.std_logic_1164.all;

entity XOR_entity is
port(	a: in std_logic;
	b: in std_logic;
	C: out std_logic
);
end XOR_entity;

architecture XOR_arch of XOR_entity is
begin
	process(a, b)
	begin
		if (a/=b) then
			C <= '1';
		else
			C <= '0';
		end if;
	end process;
end XOR_arch;