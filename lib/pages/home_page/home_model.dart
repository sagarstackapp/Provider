// To parse this JSON data, do
//
//     final userDetails = userDetailsFromJson(jsonString);

import 'dart:convert';

List<UserDetails> userDetailsFromJson(String str) => List<UserDetails>.from(
    json.decode(str).map((x) => UserDetails.fromJson(x)));

String userDetailsToJson(List<UserDetails> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserDetails {
  UserDetails({
    this.userId,
    this.id,
    this.title,
  });

  int userId;
  int id;
  String title;

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
      };
}
