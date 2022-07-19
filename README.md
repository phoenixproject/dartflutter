##### [Referência para formatação de conteúdo](https://docs.github.com/pt/github/writing-on-github/basic-writing-and-formatting-syntax)<br/>

**************************************************************

#### Para configurar seu ambiente adequado para trabalhar com Dart e Flutter

##### [Como fazer a configuração correta do Flutter](https://mastigado.wordpress.com/2020/12/13/como-resolver-problemas-de-configuracao-do-flutter/)<br/>
##### [Instalar o VS Codium para executar programas em Dart ou Flutter](https://vscodium.com/)<br/>
##### [Instalar o plugin Code Runner no VS Codium para executar aplicações Dart](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner)<br/>      

**************************************************************

### Projetos em Dart

**Parte 1**

- [Hello World básico](https://github.com/phoenixproject/dartflutter/blob/master/_DART/DART_01/01_helloword.dart)<br/>
- [Variáveis](https://github.com/phoenixproject/dartflutter/blob/master/_DART/DART_01/02_variaveis.dart)<br/>
- [Variáveis e Listas](https://github.com/phoenixproject/dartflutter/blob/master/_DART/DART_01/03_variaveislistas.dart)<br/>
- [Variáveis Dinâmicas](https://github.com/phoenixproject/dartflutter/blob/master/_DART/DART_01/04_variaveisdinamicas.dart)<br/>
- [Estruturas de Controle](https://github.com/phoenixproject/dartflutter/blob/master/_DART/DART_01/05_estruturasdecontrole.dart)<br/>
- [Funções](https://github.com/phoenixproject/dartflutter/blob/master/_DART/DART_01/06_funcoes.dart)<br/>

**Parte 2**

- [Código gerado em html a partir do Dart](https://github.com/phoenixproject/dartflutter/blob/master/_DART/DART_02)<br/>

**Parte 3**

- [Construtores](https://github.com/phoenixproject/dartflutter/blob/master/_DART/DART_03/01_contrutores.dart)<br/>
- [Classe Main](https://github.com/phoenixproject/dartflutter/blob/master/_DART/DART_03/Pessoa.dart)<br/>

### Projetos em Flutter

**************************************************************

### Dart

- A função __main()__ no Dart tem de ter sintaxe minúscula e é a porta de entrada de uma aplicação Flutter.

##### Para declarar variáveis em Dart

```dart
// Declarando função misturando parâmetros posicionais e nomeados
imprimirProduto(int qtde, {String? nome, double? preco}) {
  for (var i = 0; i < qtde; i++) {
    print("O produto ${nome} tem preço R\$${preco}");
  }
}

class Produto {
  String nome = "";
  double preco = 0;

  // Construtor por ordem
  // Produto(this.nome, this.preco);

  // Construtor nomeado
  Produto({required this.nome, required this.preco});

  /*Produto(String nome, double preco) {
    this.nome = nome;
    this.preco = preco;
  }*/
}

// Declarando função void de assinatura com variáveis Dynamic
soma1(a, b) {
  print(a + b);
}

// Declarando função com retorno
soma2(int a, int b) {
  return (a + b);
}

// Declarando função void (que nao retorna nada)
void soma3(a, b) {
  print(a + b);
}

// Declarando função que recebe função como parâmetro
int exec(int a, int b, int Function(int, int) fn) {
  return fn(a, b);
}

// Declarando função void
void botaoCriado() {
  print("Botao Criado");
}

// Declarando função que recebe função como parâmetro
void criarBotao(String texto, Function criadoFunc,
    {String? cor, double? largura}) {
  print(texto);
  print(cor ?? "Preto");
  print(largura ?? 10.0);
  criadoFunc();
}

main() {
  print('Primeiro programa');

  // Declarando inteiro
  int a = 3;

  // Declarando double
  double b = 3.1;

  // Declarando booleano
  bool estaChovendo = true;
  bool estaFrio = false;

  // Declarando e inicializando um array de strings
  var nomes = ['Ana', 'Bia', 'Carlos'];

  // Declarando uma string
  String nome = 'Baguncinha';

  // Declando conjuntos
  Set<int> conjunto = {0, 1, 2, 3, 4, 4, 4, 4, 4};

  // Declarando Map
  Map<String, double> notasDosAlunos = {
    'Ana': 9.7,
    'Bia': 9.2,
    'Carlos': 7.8,
  };

  // Declarando Dynamic (comporta-se como uma variável fracamente tipada)
  dynamic x = 'Teste';
  x = 123;
  x = false;

  // Declarando Final (tem melhor desempenho em runtime)
  final d = 3;

  // Declarando Constantes (tem melhor desempenho em tempo de compilação)
  const e = 5;

  // Incrementando uma lista'
  nomes.add('Daniel');

  // Declarando um objeto
  // var p1 = new Produto('Caneta', 4.99);
  // var p2 = new Produto('Geladeira', 1454.99);
  // Declarando um objeto nomeado
  var p3 = new Produto(preco: 1454.99, nome: 'Geladeira');
  var p4 = new Produto(preco: 42.99, nome: 'Videogame');
  // p1.nome = 'Lapis';
  // p1.preco = 4.59;

  // Acessando strings
  print('Hello ' + nome);

  // Acesso booleanos
  print(estaChovendo || estaFrio);

  // Acessando lista
  print(nomes.length);
  print(nomes.elementAt(0));
  print(nomes[3]);

  // Acessando conjuntos
  print(conjunto.length);
  print(conjunto is Set);

  // Acessando Map
  for (var chave in notasDosAlunos.keys) {
    print('chave = $chave');
  }

  for (var valor in notasDosAlunos.values) {
    print('valor = $valor');
  }

  for (var registro in notasDosAlunos.entries) {
    print('${registro.key} = ${registro.value}');
  }

  // Acessando Dynamic
  print(x);

  // Acessando função de assinatura de variáveis Dynamic
  soma1(2, 3);

  // Acessando função que retorna valor inteiro
  print('O valor da some é: ${soma2(3, 7)}');

  // Acessando função que retorna valor inteiro
  final resultado1 = soma2(3, 7);
  print('O valor da some é: $resultado1');

  // Acessando função que recebe função como parâmetro
  final resultado2 = exec(2, 3, (a, b) {
    return a * b + 100;
  });
  print('O resultado é $resultado2');

  // Acessando função que recebe função como parâmetro usando Arrow Function
  final resultado3 = exec(20, 30, (a, b) => a * b + 100);
  print('O resultado é $resultado3');

  // Acessando função que recebe função como parâmetro
  criarBotao("Botao Sair", botaoCriado);

  // Acessando objeto de classe
  // print("O produto ${p1.nome} tem preço R\$${p1.preco}");
  // print("O produto ${p2.nome} tem preço R\$${p2.preco}");
  print("O produto ${p3.nome} tem preço R\$${p3.preco}");
  imprimirProduto(3, preco: p4.preco, nome: p4.nome);
}
```

##### Para executar seu primeiro projeto/arquivo Dart

- 1 Abra o prompt do Windows ou terminal do Linux;
- 2 Execute o aplicativo flutter_console.bat;
- 3 Vá até o local onde está o aplicativos que você escreveu e execute-o com o comando:

```dart
dart nome_do_seu_aplicativo.dart
```

##### Para ver a versão de seu Dart no terminal/console

```dart
dart --version
```

**************************************************************

### Flutter

**É composto por:**

- SDK (Software Development Kit): Ferramentas para compilar seu código para código nativo e desenvolver com facilidade;
- Framework Widget Libray: Componente de UI reutilizáveis (widgets), funções utilitárias, pacotes;

**Definições a respeito do Flutter**

- O Flutter é um componente baseado completamente em Widgets, ou seja, componentes visuais.
- Os componentes do Flutter são baseados em classe, que em outras palavras quer dizer que ele se aproveita da estrutura da classe para parametrizar seus atributos e herdar o comportamento de classes Widget.
- O Flutter utiliza por "baixo dos panos" uma engine 2D de jogos para renderizar os pixels na tela.

#### Comandos Flutter

###### Para criar um projeto Flutter a partir do console

```dart
flutter create nome_projeto
```

###### Para rodar o projeto criado

```dart
cd nome_projeto
flutter run
```

#### Estrutura de um projeto Flutter

![Alt text](https://github.com/phoenixproject/dartflutter/blob/master/__MEDIA/01_conf_projeto_flutter.png?raw=true "Estrutura de um projeto Flutter")

- Diretório .dart_tool: é criado a partir de um pacote chamado build runner e sempre que ele vai compilando os arquivos vai sendo incrementado o diretório baseado em algumas ferramentas. Ele é basicamente para você ter o build do seu código feito em Dart dentro desta pasta. Esta pasta é um daqueles diretórios que são reconstruídos sempre que um novo código é compilado e não vai para um repositório git.
- Diretório .idea/arquivo extensão .iml: esta pasta existe porque o Android Studio é uma versão do Intelij Idea modificado e tanto este diretório quanto o arquivo de extensão .iml fazem referência a isso e o próprio arquivo .gitignore já por padrão ignora estes itens.
- Diretório android: é a pasta que guarda todos os arquivos do projeto em Android ;
- Diretório build: é onde o projeto compilado/executável é criado e está apto a ser executado nas plataformas compatíveis;
- Diretório ios: é onde fica o projeto para XCode responsável pelo IOS assim como existe uma pasta Android só pra códigos em Android;
- Diretório lib: é o local onde são criados os widgets, patterns, toda a organização dos códigos Dart e é onde está o arquivo Main.dart;
- Diretório test: define-se por ser o local possível para fazer teste como TDD por exemplo;
- Arquivo .gitignore: possuí uma pré configuração de coisas que não devem ser enviadas para o git ou Github;
- Arquivo .metadata: que é um arquivo gerenciado internamente pelo Flutter;
- Arquivo .packages: sempre terá novas dependências assim que forem sendo acrescentadas no projeto;
- Arquivo pubspec.lock: é gerado a partir do conteúdo inserido no arquivo pubspec.yaml;
- Arquivo pubspec.yaml: é um arquivo que contém nome, descrição do projeto, versão de sdk, informações sobre dependências, informações de diretórios de assets, configurações do projeto em si;
- Arquivo README.md: é o arquivo padrão do Github que é usado para exibir a definição do repositório;

#### Definições em projeto básico do Flutter

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
```

**Arquivo Main.dart**
O código acima trata-se do arquivo __Main.dart__ de um projeto básico do Flutter e esse arquivo é o responsável por chamar a aplicação. A porta de entrada para uma aplicação Flutter é a função __main()__ que executa o método __runApp__ que recebe por parâmetro um __Widget__ que é a classe __MyApp() (a classe MyApp herda de StatelesWidget e por isso torna-se um Widget).

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