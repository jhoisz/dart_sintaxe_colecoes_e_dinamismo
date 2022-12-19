import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = "CODIGOQUALQUER";
  double dinheiro = 0;
  Transporte transporte;
  Set<String> registrosVisitados = <String>{};
  Map<String, double> registrarPrecos = {};

  int _totalLocaisVisitados = 0;

  Viagem({required this.transporte});

  printCodigo() {
    print(codigoTrabalho);
  }

  int get consultarTotalLocaisVisitados {
    return _totalLocaisVisitados;
  }

  set alterarLocaisVisitados(int novaQnt) {
    novaQnt < 10 ? _totalLocaisVisitados = novaQnt : print("Não é possível.");
  }

  void escolherMeioTransporte(Transporte locomocao) {
    switch (locomocao) {
      case Transporte.bike:
        print("Vou de BIKE para a aventura!");
        break;
      case Transporte.carro:
        print("Vou de CARRO para a aventura!");
        break;
      default:
        print("Vou para a aventura");
        break;
    }
  }

  void visitar(String visita) {
    registrosVisitados.add(visita);
    _totalLocaisVisitados++;
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }
}
