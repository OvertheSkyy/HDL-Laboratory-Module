library ieee;
use ieee.std_logic_1164.all;

entity OR_entity is
port( a: in std_logic;
      b: in std_logic;
      C: out std_logic
);
end OR_entity;

architecture OR_architecture of OR_entity is
begin 
    process(a, b)
    begin
        if ((a='0') and (b='0')) then
             C <= '0';
        else
             C <= '1';
        end if;
    end process;
end OR_architecture;