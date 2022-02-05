-------------------------------------------------------------------------------
--
-- Title       : Cnt
-- Design      : Count
-- Author      : MosKnight@outlook.com
-- Company     : Knight
--
-------------------------------------------------------------------------------
--
-- File        : H:\University\Unit 5\SystemDesign\Acrive HDL\Unit5\Count\src\Count.vhd
-- Generated   : Fri Nov 12 20:24:37 2021
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description :
---------------------------------------------------------------------------------------------------------------------------------
---������----------������-��������������-��������������-��������������-��������������-������������������-������---------����������-
---����������������������-��������������-��������������-��������������-��������������-������������������-������---------����������-
---����������������������-��������������-��������������-��������������-��������������-������������������-������---------����������-
---����������������������-������--������-������---------������---------������--������---------����������-������-----------������---
---������--������--������-������--������-��������������-��������������-��������������-------����������---������-----------������---
---������--������--������-������--������-��������������-��������������-��������������-----����������-----������-----------������---
---������--������--������-������--������-��������������-��������������-��������������---����������-------������-----------������---
---������----------������-������--������---------������-������---------������--������-����������---------������-----------������---
---������----------������-��������������-��������������-������---------������--������-������������������-��������������-����������-
---������----------������-��������������-��������������-������---------������--������-������������������-��������������-����������-
---������----------������-��������������-��������������-������---------������--������-������������������-��������������-����������-
---------------------------------------------------------------------------------------------------------------------------------
--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {Cnt} architecture {arch}}
	
	
library ieee;
use ieee.std_logic_1164.all;


entity Cnt is
	port( q : inout STD_logic_vector(1 downto 0);
	reset : in std_logic;
	--	clk : in std_logic; 
		 x : in std_logic );
	
end Cnt;



architecture arch of Cnt is
 signal CLK:STD_logic:='0';	
begin
	
	clock: process
	begin
		loop
			clk <= not clk;
			wait for 50 ns;
		end loop;
	end process clock;

	process(clk, reset)
	begin 
		if reset = '1' then
			q <= "00";
			elsif reset = '0' then
		if x = '1' then
			if clk = '1' and clk'event then
		case q is 
			when "00" =>
		    q <= "01";

			when "01" =>
			q <= "10";
	
			when "10" =>
			q <= "11";

			when others =>
			q <= "00";
		
		end case;
		end if;
		end if;
		end if;
	end process;
	
--	process()
--	begin
--		if reset = '1' then
--			q <= "00";
--			end if;
--		end process;


end arch;