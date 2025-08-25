import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConfig {
  static String serverUrl = dotenv.env['SERVER_URL'] ?? 'http://bricksnmix.com:8000';
}