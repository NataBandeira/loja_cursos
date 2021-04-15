import 'package:flutter/material.dart';
import 'package:loja_flutter/app/pages/courses/components/appbar_component.dart';
import 'package:loja_flutter/app/pages/courses/components/course_categorys_component.dart';
import 'package:loja_flutter/app/pages/courses/components/search_bar_component.dart';
import 'package:loja_flutter/app/pages/courses/components/week_courses_component.dart';

class CoursesPage extends StatefulWidget {
  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsets.only(top: 30, left: 10),
            child: AppBarComponent(),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 5),
            SearchBarComponent(),
            Expanded(flex: 3, child: CourseCategoryComponent()),
            Expanded(flex: 7, child: WeekCoursesComponent()),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
