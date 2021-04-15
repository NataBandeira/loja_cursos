import 'package:flutter/material.dart';
import 'package:loja_flutter/app/pages/courses/components/category_card_component.dart';

class CourseCategoryComponent extends StatefulWidget {
  @override
  _CourseCategoryComponentState createState() =>
      _CourseCategoryComponentState();
}

class _CourseCategoryComponentState extends State<CourseCategoryComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 12, 5, 12),
            child: Text(
              "Categorias",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Expanded(
            child: Container(
              child: GridView.count(
                  childAspectRatio: MediaQuery.of(context).size.width / 1000,
                  crossAxisCount: 1,
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryCardComponent(
                        category: 'Tecnologia',
                        quantity: '07',
                        color: Color(0xFFF9EFFF),
                        sublabelColor: Color(0xFFB278DE)),
                    CategoryCardComponent(
                        category: '3D e Animação',
                        quantity: '10',
                        color: Color(0xFFEEF9FF),
                        sublabelColor: Color(0xFF00A4EA)),
                    CategoryCardComponent(
                        category: 'Marketing e Negócios',
                        quantity: '04',
                        color: Color(0xFFFFF3E9),
                        sublabelColor: Color(0xFFD19FA0)),
                    CategoryCardComponent(
                        category: 'Fotografia e Vídeo',
                        quantity: '09',
                        color: Color(0xFFFFE9E9),
                        sublabelColor: Color(0xFFF0B7A6)),
                    CategoryCardComponent(
                        category: 'Desenho',
                        quantity: '07',
                        color: Color(0xFFF9EFFF),
                        sublabelColor: Color(0xFFB278DE)),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
