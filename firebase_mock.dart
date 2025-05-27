// Simulação de leitura e escrita como se fosse Firebase

class SalaSimulada {
  static final Map<String, List<String>> _salas = {};

  static bool criarSala(String codigo, String jogador) {
    if (_salas.containsKey(codigo)) return false;
    _salas[codigo] = [jogador];
    return true;
  }

  static bool entrarNaSala(String codigo, String jogador) {
    if (_salas.containsKey(codigo)) {
      _salas[codigo]!.add(jogador);
      return true;
    }
    return false;
  }

  static List<String>? listarJogadores(String codigo) {
    return _salas[codigo];
  }

  static void limpar() {
    _salas.clear();
  }
}