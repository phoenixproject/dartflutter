##### [Referência para formatação de conteúdo](https://docs.github.com/pt/github/writing-on-github/basic-writing-and-formatting-syntax)<br/>

**************************************************************

#### Para configurar seu ambiente Dart/Flutter

##### [Como resolver problemas de configuração do Flutter](https://mastigado.wordpress.com/2020/12/13/como-resolver-problemas-de-configuracao-do-flutter/)<br/>

**************************************************************

### Projetos em Dart

##### [Hello World básico em Dart](https://github.com/phoenixproject/dartexamples/blob/master/01/01_helloword.dart)<br/>

### Projetos em Flutter

**************************************************************

### Dart

```dart
// Declaração de inialização de variáveis e exibindo (de forma concactenada) seu conteúdo.
void main()
{
	String nome = 'Baguncinha';
	print('Hello ' +  nome);
}
```

##### Para executar seu primeiro projeto/arquivo Dart

- 1 Abra o prompt do Windows ou terminal do Linux;
- 2 Execute o aplicativo flutter_console.bat;
- 3 Vá até o local onde está o aplicativos que você escreveu e execute-o com o comando:

```dart
dart nome_do_seu_aplicativo.dart
```

**************************************************************

### Flutter

Composto por:
- SDK (Software Development Kit): Ferramentas para compilar seu código para código nativo e desenvolver com facilidade;
- Framework Widget Libray: Componente de UI reutilizáveis (widgets), funções utilitárias, pacotes;

O Flutter utiliza por "baixo dos panos" uma engine 2D de jogos para renderizar os pixels na tela.

#### Widgets

##### StatelessWidget

Um widget que estende  StatelessWidget nunca muda e é chamado de widget stateless
porque não tem estado. Itens como os widgets Icon, que exibem pequenas imagens,
e os widget Text, que claro, exibem strings de texto, são considerados widgets
stateless. 

Exemplo deste tipo de classe:

```dart
class MyTextWidget extends StatelessWidget {
	
	Widget build(inContext){
		return new Text("Hello!");
	}
}
```

##### StatefulWidget

Por outrado lado, a classe base StatefulWidget traz a noção de estado, isto é, muda
de alguma forma quando o usuário interage com ela. Um **CheckBox**, um Slider,
um **TextFiled**, todos são exemplos conhecidos de widgets stateful (e, quando você
os encontrar com o uso de maiúsculas como apliquei qaqui, saberá que estou me 
referindo a nomes de classes de widgets reais do Flutter, e não a campos genéricos
com o campo de texto de um formulário). Quando codificamos com esse tipo de widget,
na verdade temos de criar *duas* classes: a classe widget stateful propriamente dita
e uma classe de estado para ser usada com ela. 

Aqui está o exemplo de um widget stateful e da classe de estado associada:

```dart
class LikesWidget extends StatefulWidget {
	
	@override
	LikesWidgetState createState() => LikesWidgetState();
}

class LikesWidgetState extends State<LikesWidget>{

	int likeCount = 0;
	
	void like(){
		setState((){
			likeCount += 1;
		});
	}
	
	@override
	Widget build(BuildContext inContext){
		return Row(
			children : [
				RaisedButton(
					onPressed : like,
					child : Text('$likeCount)
				)
			]
		);
	}
}
```

###### Observações

O método *build* visto acima recebe como argumento o estado atual e retorna
uma representação visual do widget que incorpora este estado. Quando o estado
muda, o widget "reage" à mudança, sendo reconstruído por uma nova chamada a buid(),
com a passagem do novo estado para o método.