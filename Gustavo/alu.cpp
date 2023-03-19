#include <iostream> 

using namespace std; 
bool suma(a,b){

	int tamano = sizeof(a); 
	bool result = [tamano]; 
	for(int i=0;i<tamano;i++){
		result[i] = a[i] + b[i];
	}
	return result;
}
bool resta(a,b){
	int tamano = sizeof(a); 
	bool result = [tamano]; 
	for(int i=0; i<tamano;i++){
		result[i] = a[i] - b[i]; 
	}
	return result; 
}
bool incrementar(a){

}
int main(){
	bool a [8], b[8]; #Variables de entrada 
	bool salida[8] ; #Variables de salida

	switch(opción) //donde opción es la variable a comparar
	{
    case 1: //Bloque de instrucciones 1;
    break;
    case valor2: //Bloque de instrucciones 2;
    break;
    case valor3: //Bloque de instrucciones 3;
    break;
    //Nótese que valor 1 2 y 3 son los valores que puede tomar la opción
    //la instrucción break es necesaria, para no ejecutar todos los casos.
    default: //Bloque de instrucciones por defecto;
    //default, es el bloque que se ejecuta en caso de que no se de ningún caso
	}


	return 0; 
}