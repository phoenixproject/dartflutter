class Pessoa 
{
  String primeiro_nome, ultimo_nome;

  Pessoa(this.primeiro_nome, this.ultimo_nome);

  String nome(){
    return this.primeiro_nome + ' ' + this.ultimo_nome;
  }
}

void main(){
  Pessoa mike = new Pessoa('Mike', 'da Swat');
  print(mike.nome());
}