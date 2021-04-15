import 'package:loja_flutter/app/models/lesson.dart';

enum Category { animacao, modelagem, codificacao, webdesing, marketing }

class Course {
  String title;
  String description;
  String autor;
  String coverImage;
  double value;
  List<Lesson> lessons;
  Category category;

  Course(
      {this.title,
      this.description,
      this.autor,
      this.value,
      this.lessons,
      this.category,
      this.coverImage});
}
