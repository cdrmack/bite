library ieee;
use ieee.std_logic_1164.all;

entity anot is
  port(i0 : in std_logic; o0 : out std_logic);
end anot;

architecture behav of anot is
begin
  o0 <= i0 nand i0;
end behav;
