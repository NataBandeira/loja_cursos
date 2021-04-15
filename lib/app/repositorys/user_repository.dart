import 'package:loja_flutter/app/models/user.dart';

class UserRepository {
  static User getUser() {
    return User(name: "Julia", profileImage: "assets/images/user.png");
  }
}
