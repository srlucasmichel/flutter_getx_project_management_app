class User {
  final int id;
  final String name;
  final String? photoUrl;

  User(this.id, this.name, this.photoUrl);

  @override
  String toString() {
    return 'User{id: $id, name: $name, photoUrl: $photoUrl}';
  }
}
