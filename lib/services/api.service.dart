class Api {
  static final _baseUrl = '';

  static post({
    required String path,
    required Map<String, dynamic> body,
    required Map<String, dynamic> parameters,
  }) {
    String url = _baseUrl + path;
  }
}
