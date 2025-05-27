// Simulação de funções Firebase (estrutura básica)

class Sala {
  final String codigo;
  final List<String> jogadores;

  Sala({required this.codigo, required this.jogadores});

  Map<String, dynamic> toJson() => {
    'codigo': codigo,
    'jogadores': jogadores,
  };
}

// Aqui futuramente você vai integrar com Firebase Database Realtime.