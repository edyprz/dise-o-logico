--Edgar Humberto Perez Martinez
--Ing Electronica

entity reg74194 is
   port( 
	  ent:  in   bit_vector(3 downto 0);
	  sel:  in   bit_vector(1 downto 0);
	  edd:  in   bit;
	  edi:  in   bit;
	  clk:  in   bit;
	  sal:  out  bit_vector(3 downto 0);
	  sdd:  out  bit;
	  sdi:  out  bit

       );
end entity reg74194;

architecture beh of reg74194 is
	
signal res:bit_vector(3 downto 0);
signal ep,es,i0,i1,i2,i3: bit_vector(1 downto 0);

begin

sdd<=res(0);
sdi<=res(3);
sal<=res;


	process(clk)
	begin 
		if clk'event and clk='1' then 
			if sel="11" then 
				res<=ent;
			elsif sel="01" then 
				res<= edd & ent(3 downto 1);
			elsif sel="10" then 
				res<=ent(2 downto 0) & edi;
			elsif sel="00" then 
				res<=res;
			end if;
		end if;
	end process ;

end architecture beh;
