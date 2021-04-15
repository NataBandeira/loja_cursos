import 'package:flutter/material.dart';
import 'package:loja_flutter/app/models/course.dart';
import 'package:loja_flutter/app/repositorys/store_repository.dart';

class CourseProvider extends ChangeNotifier {
  List<Course> _courses = StoreRepository.getCourseList();
  List<Course> get courses => _courses;
}
