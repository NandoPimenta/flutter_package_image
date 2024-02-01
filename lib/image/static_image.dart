class StaticImage<T> {
  T tag;
  String? value;

  StaticImage({required this.tag, required this.value});
}

class StaticImages {
  static final List<StaticImage> _images = [];

  StaticImages({required List<StaticImage> i}) {
    _images.addAll(i);
  }

  List<StaticImage> get images => _images;

  set images(List<StaticImage> i) {
    _images.clear();
    _images.addAll(i);
  }

  static String? image<ImageTags>({required ImageTags tag}) => _images
      .firstWhere(
        (element) => element.tag == tag,
        orElse: () => StaticImage(tag: null, value: null),
      )
      .value;
}
