class Fake {
  late int postId;
  late int id;
  late String name;
  late String body;

  Fake(
      {required this.postId,
      required this.id,
      required this.name,
      required this.body});

  factory Fake.fromJson(Map<String, dynamic> json) {
    return Fake(
      postId: json['postId'],
      id: json['id'],
      name: json['name'],
      body: json['body'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['postId'] = this.postId;
    data['id'] = this.id;
    data['name'] = this.name;
    data['body'] = this.body;
    return data;
  }
}
