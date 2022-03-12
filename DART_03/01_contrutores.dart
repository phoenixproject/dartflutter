class Retangulo
{
  num largura, altura;

  Retangulo(this.largura, this.altura);

  // Construtor nomeado
  /*Retangulo.quadrado(num dimensao) 
  {
    this.largura = dimensao;
    this.altura = dimensao;  
  }*/

  // Redirecionador de parâmetro
  Retangulo.quadrado(num dimensao) : this(dimensao, dimensao);
  
  num area()
  {
    return this.largura * this.altura;
  }
}

void main(){
  Retangulo retangulo = new Retangulo(3, 4);
  print(retangulo.area());

  Retangulo quadrado = new Retangulo(3, 3);
  print(quadrado.area());
}