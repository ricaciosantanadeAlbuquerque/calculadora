import 'dart:io';
void main(List<String> args){
  
}

void menu(){
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
         valor = int.parse(entradaOp);
       }catch(e){
        throw Exception('$entradaOp, Não é um valor numérico por tanto não pode ser CONVERTIDO !!!');
       }

    }else{
      print('ERRO! $entradaOp é nulo ou vazio !! ');
    }
  }else{
      print('ERRO! $entradaOp é nulo ou vazio !! ');
  }


}