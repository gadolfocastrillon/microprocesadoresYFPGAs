LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY microprocesador IS
  PORT (
  ------------------------------------------------------------------------------
  	clock : in std:logic; 
  	
    
    );
END microprocesador;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF microprocesador IS
--Puertos de entrada 
    entrada1 	: IN  std_logic_vector(7 DOWNTO 0); 
    entrada2 	: IN  std_logic_vector(7 DOWNTO 0); 
--Puertos de salida 
    salida 	: OUT	 std_logic_vector(7 DOWNTO 0);
--Selector 
    selector 	: signal std_logic_vector (3 DOWNTO 0); 
    control 	: OUT	std_logic_vector (7 DOWNTO 0);
    --control(0): si el resultado es cero; 
    --control(1): Para el carry; 
    --control(2): Para el negativo; 
BEGIN
	
		
	if selector = "0001" then
		--Suma de las entradas 
		salida <= entrada1 + entrada2; 
	elsif selector = "0010" then 
		--Resta de las entradas
		salida <= entrada1 - entrada2; 
		if salida(7) = '1' then 
			control(2) = '1'; 
		else: 
			salida(7) = '0'
		end if; 
	elsif selector = "0011" then
		--Incremento de A  
		salida<= entrada1 + 1; 
	elsif selector = "0100" then 
		--Decremento de A 
		salida<= entrada - 1; 
	elsif selector = "0101" then 
		--Desplazamiento a la derecha 
		salida(0) <= '0'; 
		for i in 0 to 6 loop: 
			salida(i+1) <= entrada1(i);  
	elsif selector = "0110" then 
		--Desplazamiento a la izquierda 
		salida(7) <='0'; 
		for i in 6 to 0 loop: 
			salida(i+1) <= entrada1(i); 
	elsif selector = "0111" then
		--A and B 
		salida <= entrada1 and entrada2;  
	elsif selector = "1000" then 
		--A or B 
		salida <= entrada1 or entrada2; 
	elsif selector = "1001" then 
		--A xor B
		salida <= entrada1 xor entrada2; 
	elsif selector = "1010" then 
		-- Negación de A 
		salida <= not(entrada1); 
	elsif selector = "1011" then 
		--complemento de A + 1. 
		salida <=not(entrada1) + 1; 
	else
		--reset el programa 
		salida <= '00000000'; 
	end if; 
END TypeArchitecture;
