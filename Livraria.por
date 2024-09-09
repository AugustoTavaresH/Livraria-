programa
{
	
	funcao inicio()
	{

		//Variaveis
		cadeia nomeLivro
		inteiro estadoLivro, quantidadeLivros, pagamento
		real precoCompra = 0
		real lucroTotal = 0
		real contadorPix = 0, contadorCartao = 0, contadorCheque = 0 
		real porcentagem =0 
		real maiorVenda = 0
		cadeia livroMaiorVenda = "tio"

		//CONTADORES LIVROS MAIS VENDIDOS
		inteiro contadorExcelente = 0, contadorSemi = 0, contadorUsado = 0, contadorDanificado = 0

		//loop 15 vezes
		para(inteiro contador = 0; contador < 15; contador++ )
		{
			//Coleta de dados COMEÇO
			escreva("Digite o titulo do livro: ")
			leia(nomeLivro)
			
			escreva("Digite o estado de conservação do livro (1- Excelente estado 2- semi-novo 3- usado 4- danificado): ")
			leia(estadoLivro)
			
			escreva("Quantas unidades você gostaria")
			leia(quantidadeLivros)
			
			escreva("Digite a forma de pagamento(1- PIX 2- cartão 3- cheque): ")
			leia(pagamento)

			//CONTADOR FORMADE PAGAMENTO

			se(pagamento == 1)
			{
				contadorPix++
			}
			senao se(pagamento == 2)
			{
				contadorCartao++
			}
			senao se(pagamento == 3)
			{
				contadorCheque++
			}

			//ESTADO DE CONSERVAÇÃO, QUAL MAIS VENDIDO

			se(estadoLivro == 1)
			{
				contadorExcelente++
			}
			senao se(estadoLivro == 2)
			{
				contadorSemi++
			}
			senao se(estadoLivro == 3)
			{
				contadorUsado++
			}
			senao se(estadoLivro == 4)
			{
				contadorDanificado++
			}

			//PREÇO DA COMPRA

			se(estadoLivro == 1)
			{
				precoCompra = quantidadeLivros * 129.99
			}
			senao se(estadoLivro == 2)
			{
				precoCompra = quantidadeLivros * 99.50
			}
			senao se(estadoLivro == 3)
			{
				precoCompra = quantidadeLivros * 59.99
			}
			senao se(estadoLivro == 1)
			{
				precoCompra = quantidadeLivros * 19.99
			}

			//LETRA A FATURAMENTO TOTAL

			lucroTotal = lucroTotal + precoCompra

			//MAIOR VENDA
			se(maiorVenda < precoCompra)
			{
				maiorVenda = precoCompra
				livroMaiorVenda = nomeLivro
			}
			

			
			
		
		}//Coleta de dados FIM

		
		
		//Saídade dados

		escreva("O lucro total é de: ", lucroTotal, "\n")
		//QUAL MAIOR FORMA DE PAGAMENTO

		se(contadorPix > contadorCheque e contadorPix > contadorCartao)
		{
			escreva("A forma de pagamento mais ultilizada foi: PIX\n")
		}
		senao se(contadorCheque > contadorPix e contadorCheque > contadorCartao)
		{
			escreva("A forma de pagamento mais ultilizada foi: CHEQUE\n")
		}
		se(contadorCartao > contadorCheque e contadorCartao > contadorPix)
		{
			escreva("A forma de pagamento mais ultilizada foi: CARTÃO\n")
		}

		//QUAL ESTADO DE CONCERVAÇÃO MAIS VENDIDO

		se(contadorExcelente > contadorSemi e contadorExcelente > contadorUsado e contadorExcelente > contadorDanificado)
		{
			porcentagem = (100 * contadorExcelente) / 15
			escreva("O estado de concervação mais vendido foi o ESCELENTE e a porcentagem foi de ", porcentagem, "%\n")
			
		}
		senao se(contadorSemi > contadorExcelente e contadorSemi > contadorUsado e contadorSemi > contadorDanificado)
		{
			porcentagem = (100 * contadorSemi) / 15
			escreva("O estado de concervação mais vendido foi o SEMI-NOVO e a porcentagem foi de ", porcentagem, "%\n")
		}
		senao se(contadorUsado > contadorExcelente e contadorUsado > contadorSemi e contadorUsado > contadorDanificado)
		{
			porcentagem = (100 * contadorUsado) / 15
			escreva("O estado de concervação mais vendido foi o USADO e a porcentagem foi de ", porcentagem, "%\n")
		}
		senao se(contadorDanificado > contadorExcelente e contadorDanificado > contadorSemi e contadorDanificado > contadorUsado)
		{
			porcentagem = (100 * contadorDanificado) / 15
			escreva("O estado de concervação mais vendido foi o DANIFICADO e a porcentagem foi de ", porcentagem, "%\n")
		}

		escreva("E a maior venda foi a que custou ", maiorVenda, "\n")
		escreva("E o nome do livro da maior venda foi o ", livroMaiorVenda, "\n")

		
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 514; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */