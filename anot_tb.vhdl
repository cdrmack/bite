library ieee;
use ieee.std_logic_1164.all;

entity anot_tb is
end anot_tb;

architecture behav of anot_tb is
  component anot
    port(i0 : in std_logic; o0 : out std_logic);
  end component;

  for anot_0 : anot use entity work.anot;
  signal i0, o0 : std_logic;
begin
  anot_0 : anot port map (i0 => i0, o0 => o0);

  process
  begin
    i0 <= '0';
    wait for 10 ns;
    assert o0 = '1'
      report "wrong value" severity error;
    i0 <= '1';
    wait for 10 ns;
    assert o0 = '0'
      report "wrong value" severity error;
    assert false report "end of test" severity note;
    wait;
  end process;
end behav;
