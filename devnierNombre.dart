import 'dart:io';
import 'dart:math';
void main (){
devinerNombre();
}

void devinerNombre() {
  final aDeviner = 1 + Random().nextInt(100);
  int essais = 7;

  while (essais>0) {
    print("Il vous reste "+ essais.toString() + " essais");
    String? question  = stdin.readLineSync();
    int nb = int.parse(question!);

    if (nb == aDeviner){
      print('Vous avez trouvé le bon Nombre');
      break;
    } else if (nb < aDeviner) {
      print("Le nombre à deviner est plus grand");
    }else if (nb > aDeviner) {
      print("Le nombre à deviner est plus petit");
    }
    essais--;
  }
}
