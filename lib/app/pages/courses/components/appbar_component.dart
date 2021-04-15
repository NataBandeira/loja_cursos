import 'package:flutter/material.dart';
import 'package:loja_flutter/app/providers/user_provider.dart';
import 'package:provider/provider.dart';

class AppBarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserProvider _userProvider = Provider.of<UserProvider>(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Seja bem vinda!",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              // SizedBox(height: 3),
              Text(
                "${_userProvider.usuario.name}",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0, top: 10),
            child: Image.asset(
              _userProvider.usuario.profileImage,
            ),
          )
        ],
      ),
    );
  }
}
