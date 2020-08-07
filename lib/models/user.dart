import 'package:flutter/material.dart';

class User {
  final String username;
  final String email;
  final String password;

  User({
    @required this.username,
    @required this.password,
    @required this.email,
  });
}