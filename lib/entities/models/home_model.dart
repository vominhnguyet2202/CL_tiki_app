class HomeModel {
  List<Data>? data;

  HomeModel({this.data});

  HomeModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? title;
  String? content;
  String? url;
  String? imageUrl;
  String? thumbnailUrl;
  String? mobileUrl;
  double? ratio;

  Data(
      {this.id,
      this.title,
      this.content,
      this.url,
      this.imageUrl,
      this.thumbnailUrl,
      this.mobileUrl,
      this.ratio});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    url = json['url'];
    imageUrl = json['image_url'];
    thumbnailUrl = json['thumbnail_url'];
    mobileUrl = json['mobile_url'];
    ratio = json['ratio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['content'] = content;
    data['url'] = url;
    data['image_url'] = imageUrl;
    data['thumbnail_url'] = thumbnailUrl;
    data['mobile_url'] = mobileUrl;
    data['ratio'] = ratio;
    return data;
  }
}