programa
{
	
	
	funcao inicio() {
	cadeia nome 
	escreva("digite seu nome \n")
	leia(nome)
	escreva("olá " + nome + "!")
	cadeia resposta
	
	faca{
		FazerPedido()
		escreva("\n deseja escolher mais formas? S/N")
		leia(resposta)
	}
	enquanto(resposta == "s" ou resposta == "S")
    
}

	funcao FazerPedido(){
	cadeia forma
	real v1,v2,h
	
	escreva(" escolha uma forma geometrica para calcularmos a sua área\n")
	
	leia(forma)
	
	se (forma == "quadrado"){
	escreva("qual o valor do primeiro lado? ")
	leia(v1)
	calcularFigura(forma,v1,0,0)	
	}
	
	senao se (forma == "circulo"){
	escreva("qual o valor do diametro? ")
	leia(v1)
	calcularFigura(forma,v1,0,0)	
	}
	senao se (forma == "trapezio"){
	escreva("qual o valor da base maior? \n")
	leia(v1)
	escreva("qual o valor da base menor? \n")
	leia(v2)
	escreva("qual a altura do trapezio? \n")
	leia(h)
	
	calcularFigura(forma,v1,v2,h)
	}
	
	senao{
	
	escreva("qual o valor do primeiro lado? ")
	leia(v1)
	escreva("qual o valor do segundo lado ")
	leia(v2)
	
	calcularFigura(forma,v1,v2,0)}
	
	}
	
	funcao calcularFigura(cadeia forma, real v1, real v2, real h) {
	    real area = 0
	    se (forma == "retangulo" ou forma == "paralelograma") {
	        area = v1 * v2
	    }
	    senao se (forma == "trapezio"){
	    	area = v1 * v2 
	    	}
	    senao se (forma == "quadrado"){
	    		area = v1 * v1
	    	}
	    senao se (forma == "losango" ou forma == "triangulo") {
	        area = (v1 * v2) / 2
	    }
	    senao se (forma == "circulo") {
	        area = 3.14 * (v1 / 2) * (v1 / 2)
	    }senao{
	    	escreva(" forma não encontrada, por favor tente novamente! ")
	    	}
	    escreva("\n O " + forma + " tem uma área de " + area)
	}


	}



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1621; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */