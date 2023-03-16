class ModelChat {
  String? message;
  String? imageUrls;
  String? type;

  ModelChat({this.message, this.imageUrls, this.type});

  ModelChat.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    imageUrls = json['image_urls'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['image_urls'] = this.imageUrls;
    data['type'] = this.type;
    return data;
  }
}