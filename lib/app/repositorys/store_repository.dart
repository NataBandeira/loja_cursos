import 'package:loja_flutter/app/models/course.dart';
import 'package:loja_flutter/app/models/lesson.dart';

class StoreRepository {
  static List<Course> getCourseList() {
    return <Course>[
      Course(
        title: "Programação",
        description: "Aprenda a programar.",
        autor: "Lucas",
        value: 210.0,
        coverImage: "assets/images/coding.png",
        lessons: [
          Lesson(duration: 25, title: "Lição Inicial"),
          Lesson(duration: 25, title: "Primeiro projeto"),
          Lesson(duration: 25, title: "Segundo Projeto"),
        ],
        category: Category.codificacao,
      ),
      Course(
        title: "Animações 2D",
        description: "Aprenda a criar e animar personagens bidimensionais.",
        autor: "Ana Luiza",
        value: 250.0,
        coverImage: "assets/images/animating.png",
        lessons: [
          Lesson(duration: 25, title: "Lição Inicial"),
          Lesson(duration: 25, title: "Primeiro projeto"),
          Lesson(duration: 25, title: "Segundo Projeto"),
        ],
        category: Category.animacao,
      ),
      Course(
        title: "Marketing",
        description:
            "Aprenda a explorar, criar e entregar valor para satisfazer as necessidades do mercado.",
        autor: "Helena",
        value: 178.0,
        coverImage: "assets/images/marketing.png",
        lessons: [
          Lesson(duration: 25, title: "Lição Inicial"),
          Lesson(duration: 25, title: "Primeiro projeto"),
          Lesson(duration: 25, title: "Segundo Projeto"),
        ],
        category: Category.marketing,
      ),
      Course(
        title: "Modelagem 3D",
        description: "Aprenda a modelar e animar objetos tridimensionais usando as principais ferramentas do mercado. Incluindo também vários projetos ilustrativos para potencializar seu aprendizado.",
        autor: "Ana Luiza",
        value: 135.0,
        coverImage: "assets/images/modeling.png",
        lessons: [
          Lesson(duration: 25, title: "Lição Inicial"),
          Lesson(duration: 25, title: "Primeiro projeto"),
          Lesson(duration: 25, title: "Segundo Projeto"),
        ],
        category: Category.modelagem,
      ),
      Course(
        title: "Desenvolvimento Web",
        description: "Crie paginas web usando as tecnogias mais atuais",
        autor: "Lucas",
        value: 0.0,
        coverImage: "assets/images/web_evelopment.png",
        lessons: [
          Lesson(duration: 25, title: "Lição Inicial"),
          Lesson(duration: 25, title: "Primeiro projeto"),
          Lesson(duration: 25, title: "Segundo Projeto"),
        ],
        category: Category.codificacao,
      )
    ];
  }
}
