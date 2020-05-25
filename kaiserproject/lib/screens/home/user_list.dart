import 'package:flutter/material.dart';
import 'package:kaiserproject/models/user_information.dart';
import 'package:provider/provider.dart';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {

    final users = Provider.of<List<UserInformation>>(context);

    users.forEach((element) {
      print(element.username);
      print(element.statusMood.toString());
      print(element.wentWell);
      print(element.wentPoorly);
    });

    return Container();
  }
}
