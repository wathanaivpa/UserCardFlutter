import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ListCustomer extends StatefulWidget {
  String username;
  ListCustomer(String username) {
    this.username = username;
  }

  @override
  _ListCustomerState createState() {
    return _ListCustomerState(username);
  }
}

class _ListCustomerState extends State<ListCustomer> {
  String username;
  List item = [1, 2, 3, 4];
  _ListCustomerState(String username) {
    this.username = username;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        brightness: Brightness.light,
        //iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                "List user no confirm",
                style: TextStyle(
                    color: Colors.black87.withOpacity(0.8),
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 250,
                child: ListView.builder(
                    itemCount: item.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return _getCardNoConfirm(index);
                    }),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                "List user confirm",
                style: TextStyle(
                    color: Colors.black87.withOpacity(0.8),
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 250,
                child: ListView.builder(
                    itemCount: item.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return _getCardConfirm(index);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getCardNoConfirm(item) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(24)),
      padding: EdgeInsets.only(top: 16, right: 16, left: 16),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60 / 3),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"))),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(2.0)),
                  AutoSizeText(
                    "Wathanavipa",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                    maxLines: 1,
                  ),
                  Text(
                    "Chamnan",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  RatingBarIndicator(
                    rating: 2.5,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 3,
                    itemSize: 20.0,
                    direction: Axis.horizontal,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _getCardConfirm(item) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(24)),
      padding: EdgeInsets.only(top: 16, right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "speciality",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "Doctors",
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
          /*Image.asset(
            imgAssetPath,
            height: 160,
            fit: BoxFit.fitHeight,
          )*/
        ],
      ),
    );
  }
}
