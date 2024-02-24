library ieee;
use ieee.std_logic_1164.all;

entity AND_entity is
port(	a: in std_logic;
	b: in std_logic;
	C: out std_logic
);
end AND_entity;

architecture AND_arch of AND_entity is
begin 
	process(a, b)
	begin
		if ((a='1') and (b='1')) then
			C <= '1';
		else
			C <= '0';
		end if;
	end process;
end AND_arch;
	 