import 'dart:io';
void main(List<String> args){
  opcao(op: menu());
}

int menu(){
  int valor = 0;

  print('========== Menu ==========');
  print('Digite [1] para somar !');
  print('Digite [2] subtrair !');
  print('Digite [3] multiplicar !');
  print('Digite [4] dividir !');
  print('Digite [5] para sair !');
  String? entradaOp = stdin.readLineSync();

  if(entradaOp != null){
    if(entradaOp.isNotEmpty){
       try{
         valor = int.parse(entradaOp); // sobreposição de valor de 0 para a opção
       }catch(e){
        throw Exception('$entradaOp, Não é um valor numérico por tanto não pode ser CONVERTIDO !!!');
       }

    }else{
      print('ERRO! $entradaOp é nulo ou vazio !! ');
    }
  }else{
      print('ERRO! $entradaOp é nulo ou vazio !! ');
  }

  return valor;

}

// ===========================================================opcao==========================================================

void opcao({required int op}){

  switch(op){
    case 1:
    print('Digite o primeiro valor');
    String? entrada1 = stdin.readLineSync();
    print('Digite o segundo valor ');
    String? entrada2 = stdin.readLineSync();

     if(entrada1 != null &&entrada2 != null ){
        if(entrada1.isNotEmpty && entrada2.isNotEmpty){
            try{
              int num1 = int.parse(entrada1);
              int num2 =  int.parse(entrada2);

              int soma = num1 + num2;

              somaValores(soma:soma);
              
            }catch(e){

              throw Exception('ERRO! $entrada1 e $entrada2 não são valores numéricos');

              }
        }else{
          print('ERRO! valor nulo ou vazio !!');
        }
     }else{
      print('ERRO! valor nulo !!');
     }

    break;
    case 2:
      print('Digite o primeiro valor');
      String? entrada1 = stdin.readLineSync();
      print('Digite o segundo valor ');
      String? entrada2 = stdin.readLineSync();

      if (entrada1 != null && entrada2 != null) {
        if (entrada1.isNotEmpty && entrada2.isNotEmpty) {
          try {
            int num1 = int.parse(entrada1);
            int num2 = int.parse(entrada2);

            int subtracao = num1 - num2 ;

            subtracaoValores(subtracao:subtracao);
                       
          } catch (e) {
            throw Exception('ERRO! $entrada1 e $entrada2 não são valores numéricos');
          }
        } else {
          print('ERRO! valor nulo ou vazio !!');
        }
      } else {
        print('ERRO! valor nulo !!');
      }
    break;
    case 3:
      print('Digite o primeiro valor');
      String? entrada1 = stdin.readLineSync();
      print('Digite o segundo valor ');
      String? entrada2 = stdin.readLineSync();

      if (entrada1 != null && entrada2 != null) {
        if (entrada1.isNotEmpty && entrada2.isNotEmpty) {
          try {
            int num1 = int.parse(entrada1);
            int num2 = int.parse(entrada2);

            int multiplicacao =  num1 * num2 ;

            multiplicacaoValores(multiplicacao: multiplicacao);
          } catch (e) {
            throw Exception('ERRO! $entrada1 e $entrada2 não são valores numéricos');
          }
        } else {
          print('ERRO! valor nulo ou vazio !!');
        }
      } else {
        print('ERRO! valor nulo !!');
      }
    break;
    case 4:
      print('Digite o primeiro valor');
      String? entrada1 = stdin.readLineSync();
      print('Digite o segundo valor ');
      String? entrada2 = stdin.readLineSync();

      if (entrada1 != null && entrada2 != null) {
        if (entrada1.isNotEmpty && entrada2.isNotEmpty) {
          try {
            int num1 = int.parse(entrada1);
            int num2 = int.parse(entrada2);
            
            int divisao = num1 ~/ num2 ;

          } catch (e) {
            throw Exception('ERRO! $entrada1 e $entrada2 não são valores numéricos');
          }
        } else {
          print('ERRO! valor nulo ou vazio !!');
        }
      } else {
        print('ERRO! valor nulo !!');
      }
    break;
    case 5:
    print('Encerrando o Programa !');
    exit(0);
    default:
    print('ERRO! valor fora da faixa !!!\n');
    print('O programa será encerrado');
    exit(0);

  }  
}

//+++++++++++++++++++++++++SOMA++++++++++++++++++++++++

void somaValores({required int soma}) {
  print('O resultado da soma ${soma}');
}

//-------------------------Subtração----------------------

void subtracaoValores({required int subtracao}){
  print('O Resultado da subtração é $subtracao !');
}

// ******************Multiplicacao*************************

void multiplicacaoValores({required int multiplicacao}){
  print('O resultado da multiplicação $multiplicacao');
}

//                 Divisao 

void divisaoValores({required int divisao}){
  print('O resultado da divisão $divisao');
}