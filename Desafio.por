/* O desafio era criar um programa que lesse as notas dos alunos e retornasse quais alunos passaram e quais reprovaram
 * Para isso a matriz notaAluno lê a nota dos 4 alunos em 3 trimestres, depois soma todos os numeros de cada coluna 
 * e divide, calculando a média e registrando no vetor mediaAluno. no final, ele escreve que o aluno nomeAluno[i] passou
 * (caso a mediaAluno [i] seja maior que 7) ou reprovou (caso contrário)
 */

programa
{
	
	funcao inicio()
	{
		// Matriz
		inteiro notaAluno[3][4]
		cadeia nomeAluno[4] = {"Larissa", "Anderson", "Bruno", "Heloisa"}
		// retornar tanto o nome do aluno quanto a media
		inteiro mediaAluno[4]
		// Lucas: criei esse vetor pra pegar os valores da matriz notaAluno e deixar numa linha só, igual ao nomeAluno

		para(inteiro linha = 0; linha <= 2; linha++)
		{

			// Achar a coluna de uma matriz
			para(inteiro coluna = 0; coluna <= 3; coluna++)
			{
				escreva("Digite a nota do aluno: ")
				leia(notaAluno[linha][coluna])
				mediaAluno[coluna] = notaAluno[linha][coluna]+mediaAluno[coluna]
				// Lucas: A mediaAluno vai somando os valores das linhas de registrando o resultado em suas colunas
			}
		}

		limpa()
		/*Esse "para" não é mais nescessário, pois o programa vai comparar a media agora
		Ele estava causando um loop que recauculava 4x a média e reprovava todo mundo no final*/
		//para(inteiro linha = 0; linha <= 2; linha++)
		//{

		para(inteiro coluna = 0; coluna <= 3; coluna++)
		{
			mediaAluno[coluna] = mediaAluno[coluna]/3
			se(mediaAluno[coluna] >= 7)
			{
				escreva(nomeAluno[coluna] + " passou com nota " + mediaAluno[coluna] + " na média\n")
			}
			senao
			{
				escreva(nomeAluno[coluna] + " reprovou com nota " + mediaAluno[coluna] + " na média\n")
			}
		}
		//}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 414; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {notaAluno, 13, 10, 9}-{mediaAluno, 16, 10, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */