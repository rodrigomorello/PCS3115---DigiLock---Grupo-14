	PCS3115 - Projeto Digilock - Grupo 14
Projeto para uma fechadura eletrônica desenvolvido em verilog
Grupo: Bruno Schio, Nicholas Ogata, Rodrigo Morello, Vitor Thompson

Nesta página você irá encontrar uma pasta principal com os demais arquivos do projeto
Dentro da pasta "PCS3115 - Projeto Digilock - Grupo 14" tem outras pastas, sendo elas:
> "Diagrama": contem o pdf diagrama do projeto como um todo;
> "TestBench": contem os códigos em verilog dos arquivos de teste que foram feitos para cada parte do projeto;
> "Verilog Code": contem os códigos em verilog de cada parte do projeto.


OBS 1: Os códigos foram escritos no software Quartus e simulados com Questa/ModelSim. Todos os códigos compilaram
	corretamente no programa e todos as simulações corretamente também.
OBS 2: Devido a dificuldades encontradas no caminho, infelizmente não conseguimos fazer um arquivo com o projeto
	rodando como um todo com todas as partes em conjunto.


- Para realizar as simulações dos arquivos testbench no Quartus, é preciso primeiro criar um projeto dentro do software 
em "New Project Wizard".
- Em seguida, adicionar os arquivos de código e testbench da parte desejada no projeto.
- Após isso, recomenda-se compilar novamente o arquivo código, a fim de garantir que tudo esteja certo e colocá-lo como
topo da hierarquia. Para isso, basta clicar com o botão direito em cima do file, na aba da esquerda, e selecionar
"Set as Top-Level entity".
- Logo após, é preciso configurar o arquivo de testbench seguindo algumas etapas:
	1 - Ir na aba "Assignments" na parte superior e em seguida ir em "Settings";
	2 - Ir na parte de "EDA Tool Settings" e "Simulation";
	3 - Nesse menu, na parte de baixo, clicar em "Compile test bench", no botão "Test Benches" e "New";
	4 - Selecionar o arquivo testbench em "File Name", clicar em "Add" e colocar um nome para o test bench;
	5 - Clicar em "Ok" até fechar todas as telas.
- Feito isso, já está configurado, agora basta rodar a simulação indo em:
	"Tools" -> "Run Simulation Tool" -> "RTL Simulation"
- Então, irá abrir o simulador que deve estar programado no computador, no nosso caso foi o ModelSim. Então, é só esperar
que o programa irá executar o test bench e irá apresentar entradas e saídas devidas.
OBS: Lembrando que essas etapas são para a execução da simulação de cada parte separada e no software Quartus.
