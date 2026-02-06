library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------------------------------------------------
entity data_in_hdl is
    Port (idle : in std_logic ;
          rstn : in std_logic;
          clk  : in std_logic;
          start : out std_logic;
          data_out : out std_logic
          );
end data_in_hdl;
----------------------------------------------------------------------------------------------------------------------------
architecture Behavioral of data_in_hdl is
    signal message : std_logic_vector(31 downto 0) := "00010111111111010011000011101101";
    signal counter : integer  range 0 to 31 ;                                               
begin
   process(clk)
   begin
    if rising_edge(clk) then 
        if rstn = '1' then 
           if counter = 32 then 
               start <= '0';
           elsif idle ='1' then
                start <= '1';
                data_out <= message(counter);
                counter <= counter + 1;
           else
                start <='0';              
          end if; 
        else
           start <='0';
           counter <= 0; 
        end if ;
    end if;
   end process;
end Behavioral;
