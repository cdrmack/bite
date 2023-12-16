library ieee;
use ieee.std_logic_1164.all;

entity band is
  port(
    i0 : in std_logic;
    i1 : in std_logic;
    o0 : out std_logic
    );
end band;

architecture behav of band is
  signal i0_nand_i1 : std_logic;
begin
  i0_nand_i1 <= i0 nand i1;
  o0 <= not(i0_nand_i1);
end behav;
