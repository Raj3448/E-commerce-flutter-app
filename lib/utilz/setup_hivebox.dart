import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';

const TOKEN_BOX_NAME = 'jwt_token_box';
const JWT_TOKEN_KEY = 'JWT_token';

const storage = FlutterSecureStorage();

Future<void> setupHiveBox() async {
  await initializeBoxForToken();
}

Future<void> initializeBoxForToken() async {
  var existingKey = await storage.read(key: 'hive_key');
  if (existingKey == null) {
    final newKey = Hive.generateSecureKey();
    await storage.write(key: 'hive_key', value: base64UrlEncode(newKey));
    existingKey = base64UrlEncode(newKey);
  }
  final key = base64Url.decode(existingKey);
  await Hive.openBox(TOKEN_BOX_NAME, encryptionCipher: HiveAesCipher(key));
}