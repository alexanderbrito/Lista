class Character {
  int char_id = 0;
  String fullName = "";
  String image = "";
  String nickname = "";
  String family = "";

  Character(
      this.char_id, this.fullName, this.image, this.nickname, this.family);

  Character.fromjson(Map<String, dynamic> json) {
    char_id = json['char_id'];
    fullName = json['fullName'];
    image = json['image'];
    nickname = json['nickname'];
    family = json['family'];
  }

  Map<String, dynamic> tojason() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = char_id;
    data['name'] = fullName;
    data['image'] = image;
    data['nickname'] = nickname;
    data['family'] = family;
    return data;
  }
}
