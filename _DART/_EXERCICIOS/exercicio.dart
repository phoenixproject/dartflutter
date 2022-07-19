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
