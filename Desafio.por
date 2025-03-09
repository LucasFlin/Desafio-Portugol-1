/* O desafio era criar um programa que lesse as notas dos alunos e retornasse quais alunos passaram e quais reprovaram
 * Para isso a matriz notaAluno lê a nota dos 4 alunos em 3 trimestres, depois soma todos os numeros de cada coluna 
 * e divide, calculando a média e registrando no vetor mediaAluno. no final, ele escreve que o aluno nomeAluno[i] passou
 * (caso a mediaAluno [i] seja maior que 7) ou reprovou (caso contrário)
 */

programa
{
	
	funcao inicio()
	{
		// Matriz notaAluno para ler as notas
		inteiro notaAluno[3][4]
		// Vetor nome aluno que atribui um nome para cada coluna 
		cadeia nomeAluno[4] = {"Larissa", "Anderson", "Bruno", "Heloisa"}
		/* Vetor mediaAluno que vai servir pra condensar a matriz de notas em uma só linha com a média
		 *  facilitando a comparação no final
		 */
		inteiro mediaAluno[4]

		// Contador para mudar de linha na matriz após todas as colunas serem preenchidas
		para(inteiro linha = 0; linha <= 2; linha++)
		{

			// contador que pergunta a nota e vai registrando em cada coluna, passando pra proxima depois
			para(inteiro coluna = 0; coluna <= 3; coluna++)
			{
				escreva("Digite a nota do aluno: ")
				leia(notaAluno[linha][coluna])
				mediaAluno[coluna] = notaAluno[linha][coluna]+mediaAluno[coluna]
				// A mediaAluno vai somando os valores das linhas de registrando o resultado em suas colunas
			}
		}

		limpa()
		/*(comentário para a aula) tirei ess "para" que haviamos colocado pois ele estava fazendo o código se repetir
		* 3x sem necessidade, e como agora o código vai usar só o vetor mediaAluno, um contador de linhas não é mais nescessário*/
		//para(inteiro linha = 0; linha <= 2; linha++)
		//{

		// Contador para repetir o códico em todas as colunas
		para(inteiro coluna = 0; coluna <= 3; coluna++)
		{
			// Divide a média por 3 e decide se o aluno passou ou não, mostrando na tela o resultado
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
