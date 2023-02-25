// this model is for the user

import 'package:flutter/material.dart';

class User {
  final int id;
  final String firstname;
  final String lastname;
  final String email;
  final String phone;
  final String? access_token;
  final String? refresh_token;

  const User(this.id, this.firstname, this.lastname, this.email,
      this.phone, this.access_token,this.refresh_token);
  
  factory User.fromJson(Map<String,dynamic> json){
    return User(json['id'], json['firstname'], json['lastname'], json['email'], json['phone'], json['access_token'], json['refresh_token']);
  }

  
}
