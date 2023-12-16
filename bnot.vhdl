library ieee;
use ieee.std_logic_1164.all;

entity bnot is
  port(
    i0 : in std_logic;
    o0 : out std_logic
    );
end bnot;

architecture behav of bnot is
begin
  o0 <= i0 nand i0;
end behav;
