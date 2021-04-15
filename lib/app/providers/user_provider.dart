import 'package:flutter/material.dart';
import 'package:loja_flutter/app/models/user.dart';
import 'package:loja_flutter/app/repositorys/user_repository.dart';

class UserProvider extends ChangeNotifier{

  User usuario = UserRepository.getUser();

}