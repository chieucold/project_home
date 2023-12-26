class RegexConstants {
  RegexConstants._();

  static final exceptNumber = RegExp(r'[^0-9]');

  static final phoneNumber =
      RegExp(r'^(?:\+84|0)(?:1\d{9}|3\d{8}|5\d{8}|7\d{8}|8\d{8}|9\d{8})$');

  static final exceptName = RegExp(r'[a-z A-Z]');
  static final exceptEmail = RegExp(r'[^\x00-\x7F]+');
}
