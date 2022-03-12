void main()
{
	List listacompras = [1,2,3,4,5,'Baguncinha',45.3,true];
  print(listacompras);
  print('Tamanho da lista: ' + listacompras.length.toString());  

  List user = [
    'Mike',
    344,
    55,
    true
  ];

  print(user);

  Map user2 = {
    'Mike' : 'Baguncinha',
    'abatidos' : 40000,
    'skil' : 100.99,
    'Em atividade' : true
  };

  print(user2);
  print(user2['abatidos']);

  print(listacompras[0]);
  print(listacompras[5]);
}