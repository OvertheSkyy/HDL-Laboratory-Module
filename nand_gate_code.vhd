library ieee;
use ieee.std_logic_1164.all;

entity NAND_entity is
port(	a: in std_logic;
	b: in std_logic;
	C: out std_logic
);
end NAND_entity;

architecture NAND_arch of NAND_entity is
begin
	process(a, b)
	begin
		if(a='1' and b='1') then
			C <= '0';
		else
			C <= '1';
		end if;
	end process;
end NAND_arch;
			