class Fake {
  final int postId;
  final int id;
  final String name;
  final String body;
  final String email;

  Fake(
      {required this.postId,
      required this.id,
      required this.name,
      required this.body,
      required this.email});

  factory Fake.fromJson(Map<String, dynamic> json) {
    return Fake(
      postId: json['postId'],
      id: json['id'],
      name: json['name'],
      body: json['body'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['postId'] = this.postId;
    data['id'] = this.id;
    data['name'] = this.name;
    data['body'] = this.body;
    data['email'] = this.email;
    return data;
  }
}
