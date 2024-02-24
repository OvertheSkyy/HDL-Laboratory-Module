library ieee;
use ieee.std_logic_1164.all;

entity NOR_entity is
port(	a: in std_logic;
	b: in std_logic;
	C: out std_logic
);
end NOR_entity;

architecture NOR_arch of NOR_entity is
begin
	process(a, b)
	begin
		if (a='0' and b='0') then
			C <= '1';
		else
			C <= '0';
		end if;
	end process;
end NOR_arch;