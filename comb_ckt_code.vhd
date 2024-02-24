library ieee;				-- top level circuit
use ieee.std_logic_1164.all;
use work.all;
entity comb_ckt is
port(	input1: in std_logic;
	input2: in std_logic;
	input3: in std_logic;
	output: out std_logic
);
end comb_ckt;
architecture struct of comb_ckt is
    component AND_entity is		-- as entity of AND_GATE
    port(   a: in std_logic;
      	    b: in std_logic;
            C: out std_logic
    );
    end component;
    component OR_entity is		-- as entity of OR_GATE
    port(   a: in std_logic;
      	    b: in std_logic;
      	    C: out std_logic
    );
    end component;
    signal wire: std_logic;		-- signal just like wire
begin
    -- use sign "=>" to clarify the pin mapping
    Gate1: AND_entity port map (a=>input1, b=>input2, C=>wire);
    Gate2: OR_entity port map (a=>wire, b=>input3, C=>output);
end struct;