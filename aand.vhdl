library ieee;
use ieee.std_logic_1164.all;

entity aand is
  port(i0, i1 : in std_logic; o0 : out std_logic);
end aand;

architecture behav of aand is
begin
  o0 <= not(i0 nand i1);
end behav;
