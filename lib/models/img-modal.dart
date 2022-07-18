class ImgModal {
  late int id;
  late String url;
  late String title;
  ImgModal(this.id, this.url,this.title);

  ImgModal.fromJson(Map<String, dynamic> parsedJosn) {
    id = parsedJosn['id'];
    url = parsedJosn['url'];
    title = parsedJosn['title'];
  }
}
