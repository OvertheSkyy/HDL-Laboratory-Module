library ieee;
use ieee.std_logic_1164.all;

entity XNOR_entity is
port(	a: in std_logic;
	b: in std_logic;
	C: out std_logic
);
end XNOR_entity;

architecture XNOR_arch of XNOR_entity is
begin
	process(a, b)
	begin
		if (a/=b) then
			C <= '0';
		else
			C <= '1';
		end if;
	end process;
end XNOR_arch;