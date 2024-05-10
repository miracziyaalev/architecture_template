enum ProductServicePath {
  userV1("user"),
  userV2("v2/users"),
  posts("posts");

  final String value;

  const ProductServicePath(this.value);

  /// example : users/123
  String withQuery(String value) {
    return "${this.value}/$value";
  }
}
