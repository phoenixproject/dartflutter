void main()
{
  hello1('Mike Baguncinha ');
  hello1('Mike Baguncinha ', sobrenome: 'Jiraya');

  hello2('Mike');
  hello2('Mike', 32,'da Swat');
}

// Variáveis nomeadas
// Parâmetros opcionais nomeados (ou named ou optional)
// são inseridos entre chaves e podem serem
// invocados apenas pelo nome sem precisar identificar
// uma posição em específico
void hello1(String nome, {int idade : 0, String sobrenome : 'da Swat'}){  	
	  print('Hello ' +  nome + sobrenome);
}

// Variáveis em posição
void hello2(String nome, [int idade = 0, String sobrenome]){  	
    var msg = 'Hello ' + nome;
    if(sobrenome != null){
      msg = msg + ' ' + sobrenome;
    }
    
    msg = msg + ', ' + idade.toString() + ' anos';
	  print(msg);
}