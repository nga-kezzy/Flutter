class Man {
  final int userId;
  final int id;
  final String title;

  Man({required this.userId, required this.id, required this.title});

  factory Man.fromJson(Map<String, dynamic> json) {
    return Man(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    return data;
  }
}
