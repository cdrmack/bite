library ieee;
use ieee.std_logic_1164.all;

entity bxor_tb is
end bxor_tb;

architecture behav of bxor_tb is
  component bxor
    port(
      i0 : in std_logic;
      i1 : in std_logic;
      o0 : out std_logic
      );
  end component;

  for bxor_0 : bxor use entity work.bxor;
  signal i0 : std_logic;
  signal i1 : std_logic;
  signal o0 : std_logic;
begin
  bxor_0 : bxor port map (
    i0 => i0,
    i1 => i1,
    o0 => o0
    );

  process
  begin
    i0 <= '0';
    i1 <= '0';
    wait for 10 ns;
    assert o0 = '0'
      report "wrong value" severity error;

    i0 <= '0';
    i1 <= '1';
    wait for 10 ns;
    assert o0 = '1'
      report "wrong value" severity error;

    i0 <= '1';
    i1 <= '0';
    wait for 10 ns;
    assert o0 = '1'
      report "wrong value" severity error;

    i0 <= '1';
    i1 <= '1';
    wait for 10 ns;
    assert o0 = '0'
      report "wrong value" severity error;

    assert false report "end of test" severity note;
    wait;
  end process;
end behav;
