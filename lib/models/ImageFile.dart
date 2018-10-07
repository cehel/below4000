import 'package:quiver/core.dart';


class ImageFile {
  final String name;
  final String url;

  ImageFile({this.name,this.url});

  factory ImageFile.fromJson(Map<String, dynamic> json) {
    return ImageFile(
      name: json['name'],
      url: json['url'],
    );
  }

}
