import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';
import 'package:get/get.dart';
import 'package:pointycastle/asymmetric/api.dart';
import 'package:project_home/base/data/data_source/local/local_storage_manager.dart';
import 'package:project_home/base/data/data_source/local/rsa_pem.dart';

class AuthLocalStorageDataSource {
  AuthLocalStorageDataSource(this._sharedPreferencesManager);

  final LocalStorageManager _sharedPreferencesManager;

  Future<String?> getSignature() async {
    var stringValue =
        await _sharedPreferencesManager.read(LocalStorageKey.signature);
    if (stringValue == null) {
      final rsaKeyHelper = Get.find<RsaKeyHelper>();
      final cipher = generateRandomString(100);
      final keyPair = rsaKeyHelper.generateKeyPair();
      stringValue = generateMd5(
        rsaKeyHelper.decrypt(cipher, keyPair.privateKey as RSAPrivateKey),
      );
      _sharedPreferencesManager.write(
        LocalStorageKey.signature,
        stringValue,
      );
    }
    return stringValue;
  }

  String generateRandomString(int length) {
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    final random = Random.secure();
    return List.generate(length, (index) => chars[random.nextInt(chars.length)])
        .join();
  }

  String generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }
}
