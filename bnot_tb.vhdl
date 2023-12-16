library ieee;
use ieee.std_logic_1164.all;

entity bnot_tb is
end bnot_tb;

architecture behav of bnot_tb is
  component bnot
    port(
      i0 : in std_logic;
      o0 : out std_logic
      );
  end component;

  for bnot_0 : bnot use entity work.bnot;
  signal i0 : std_logic;
  signal o0 : std_logic;
begin
  bnot_0 : bnot port map (
    i0 => i0,
    o0 => o0
    );

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
