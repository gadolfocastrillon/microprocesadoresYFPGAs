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
	else if selector = "0010" then 
		--Resta de las entradas
		salida <= entrada1 - entrada2; 
		if salida(7) = 1 then 
			control(2) = 1; 
		
	else if selector = "0011" then
		--Incremento de A  
		for i in 0 to 7 loop: 
			salida(i) <= entrada1(i) + 1; 
	else if selector = "0100" then 
		--Decremento de A 
		for i in 0 to 7 loop:
			salida(i) <= entrada(i) - 1; 
	else if selector = "0101" then 
		--Desplazamiento a la derecha 
		salida(0) <= 0; 
		for i in 0 to 6 loop: 
			salida(i+1) <= entrada1(i);  
	else if selector = "0110" then 
		--Desplazamiento a la izquierda 
		salida(7) <=0; 
		for i in 6 to 0 loop: 
			salida(i+1) <= entrada1(i); 
	else if selector = "0111" then
		--A and B 
		salida <= entrada1 and entrada2;  
	else if selector = "1000" then 
		--A or B 
		salida <= entrada1 or entrada2; 
	else if selector = "1001" then 
		--A xor B
		salida <= entrada1 xor entrada2; 
	else if selector = "1010" then 
		-- Negación de A 
		salida <= not(entrada1); 
	else if selector = "1011" then 
		--complemento de A 
		--Es cambiar los valores de 1 a 0 y cambiar los valores de 0 a 1. 
		
		for i in 0 to 7 loop: 
			if (entrada1[i] = 1): 
				salida[i] = 0; 
			else: 
				salida[i] = 1; 
	
	else
		--reset el programa 

END TypeArchitecture;
