// Este é um arquivo de configuração simulado.
// Quando você tiver o Firebase configurado, substitua pelos dados reais.

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    return const FirebaseOptions(
      apiKey: "SUA_API_KEY",
      appId: "SEU_APP_ID",
      messagingSenderId: "SEU_SENDER_ID",
      projectId: "SEU_PROJECT_ID",
      databaseURL: "https://seu-projeto.firebaseio.com",
    );
  }
}

class FirebaseOptions {
  final String apiKey;
  final String appId;
  final String messagingSenderId;
  final String projectId;
  final String databaseURL;

  const FirebaseOptions({
    required this.apiKey,
    required this.appId,
    required this.messagingSenderId,
    required this.projectId,
    required this.databaseURL,
  });
}