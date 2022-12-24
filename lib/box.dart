import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final String imageAsset;
  final String firstname;
  final String lastname;
  final String email;
  final String phone;

  Box(
      {required this.imageAsset,
        required this.firstname,
      required this.lastname,
      required this.email,
      required this.phone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xFFFCDDBD),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(right: 15)),
              Container(
                height: 20,
                width: 20,
                child: Image.asset(imageAsset, height: 210, width: 70,),
              ),
              Padding(padding: EdgeInsets.only(right: 15)),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 25, 0, 15),
                child: Column(
                  children: [
                    Text(
                      firstname,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      lastname,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Text(
                      email,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      phone,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
