library ieee;
use ieee.std_logic_1164.all;

entity bor is
  port(
    i0 : in std_logic;
    i1 : in std_logic;
    o0 : out std_logic
    );
end bor;

architecture behav of bor is
  signal noti0 : std_logic;
  signal noti1 : std_logic;
  signal noti0_and_noti1 : std_logic;
begin
  noti0 <= not(i0);
  noti1 <= not(i1);
  noti0_and_noti1 <= noti0 and noti1;
  o0 <= not(noti0_and_noti1);
end behav;
