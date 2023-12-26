import 'package:flutter_locker/flutter_locker.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum LocalStorageKey {
  isFirstTimeOpen,
  signature,
}

enum StorageType {
  authStorage,
  nonAuthStorage,
}

class LocalStorageManager {
  LocalStorageManager(this._flutterSecureStorage);

  final FlutterSecureStorage _flutterSecureStorage;

  final androidOptions = const AndroidOptions(
    encryptedSharedPreferences: true,
  );

  final iOSOptions = const IOSOptions(
    accessibility: KeychainAccessibility.unlocked_this_device,
    synchronizable: true,
  );

  Future<void> write(LocalStorageKey key, String value) =>
      _flutterSecureStorage.write(
        key: key.name,
        value: value,
        aOptions: androidOptions,
        iOptions: iOSOptions,
      );

  Future<String?> read(LocalStorageKey key) => _flutterSecureStorage.read(
        key: key.name,
        aOptions: androidOptions,
        iOptions: iOSOptions,
      );

  Future<void> delete(LocalStorageKey key) => _flutterSecureStorage.delete(
        key: key.name,
        aOptions: androidOptions,
        iOptions: iOSOptions,
      );

  Future<void> deleteAll() => _flutterSecureStorage.deleteAll(
        aOptions: androidOptions,
        iOptions: iOSOptions,
      );

  Future<Map<String, String>> readAll() => _flutterSecureStorage.readAll(
        aOptions: androidOptions,
        iOptions: iOSOptions,
      );

  Future<void> writeAuth(
    String key,
    String value,
  ) =>
      FlutterLocker.save(
        SaveSecretRequest(
          key: key,
          secret: value,
          androidPrompt: AndroidPrompt(
            cancelLabel: 'Cancel',
            title: 'Authenticate',
          ),
        ),
      );

  Future<String?> readAuth(
    String key,
  ) =>
      FlutterLocker.retrieve(
        RetrieveSecretRequest(
          key: key,
          androidPrompt: AndroidPrompt(
            cancelLabel: 'Cancel',
            title: 'Authenticate',
          ),
          iOsPrompt: IOsPrompt(touchIdText: 'Authenticate'),
        ),
      );

  Future<void> deleteAuth(
    String key,
  ) =>
      FlutterLocker.delete(key);
}
