import 'transporte.dart';
import 'viagem.dart';

void main() {
  Viagem viagemMaio = Viagem(transporte: Transporte.aviao);
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.visitar("Museu");
  print(viagemMaio.consultarTotalLocaisVisitados);

  viagemMaio.alterarLocaisVisitados = 9;

  print(viagemMaio.consultarTotalLocaisVisitados);
}
