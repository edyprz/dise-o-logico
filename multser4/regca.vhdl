--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un sumador de 4 bits 
entity regca is
   port( 
	  ent:in   bit_vector(3 downto 0);
	  sel:in   bit;
	  clk:in   bit;
          sal:out  bit_vector(3 downto 0)
       );
end entity regca;

architecture beh of regca is

signal interna:bit_vector(3 downto 0);
	begin
		sal<=interna;
	process(clk)

		begin 
			if clk'event and clk='1' then 
				if sel ='1' then 
				interna <= ent;
			end if;
		end if;
	end process;

end architecture beh;
