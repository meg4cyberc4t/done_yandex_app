import 'package:injectable/injectable.dart';

@injectable
@singleton
class AppEnviroment {
  AppEnviroment._create();
  factory AppEnviroment() => _instance;
  static final AppEnviroment _instance = AppEnviroment._create();

  final String token = "Glukchester";
  final String url = "https://beta.mrdekk.ru/todobackend/";
}
