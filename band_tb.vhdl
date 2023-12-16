library ieee;
use ieee.std_logic_1164.all;

entity band_tb is
end band_tb;

architecture behav of band_tb is
  component band
    port(
      i0 : in std_logic;
      i1 : in std_logic;
      o0 : out std_logic
      );
  end component;

  for band_0 : band use entity work.band;
  signal i0 : std_logic;
  signal i1 : std_logic;
  signal o0 : std_logic;
begin
  band_0 : band port map (
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
    assert o0 = '0'
      report "wrong value" severity error;

    i0 <= '1';
    i1 <= '0';
    wait for 10 ns;
    assert o0 = '0'
      report "wrong value" severity error;

    i0 <= '1';
    i1 <= '1';
    wait for 10 ns;
    assert o0 = '1'
      report "wrong value" severity error;

    assert false report "end of test" severity note;
    wait;
  end process;
end behav;
