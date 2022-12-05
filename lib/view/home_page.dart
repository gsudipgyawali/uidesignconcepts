import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../models/book.dart';


class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.cyanAccent,
        backgroundColor: Color(0xFFF2F5F9),
        // backgroundColor: Colors.cyan[500],
        // backgroundColor: Color.fromRGBO(20, 50, 100, 0.9),
        appBar: AppBar(
          backgroundColor: Color(0xFFF2F5F9),
          elevation: 0,
          title: Text('Hi John,', style: TextStyle(color: Colors.black),),
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(CupertinoIcons.search, color: Colors.black,)
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              // padding: const EdgeInsets.all(10),
              // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: IconButton(
                  onPressed: (){},
                  icon: Icon(CupertinoIcons.bell, color: Colors.black,)
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.yellow,
                child: Image.network('https://cdn.dribbble.com/users/3384370/screenshots/10496975/media/da794477b9dd88515f5bed2f7880e2c0.png', width: double.infinity)),






            Container(
              margin: EdgeInsets.only(top: 10),
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: booksData.length,
                  itemBuilder: (context, index){
                    return Container(
                      width: 300,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(booksData[index].imageUrl, width: 150,),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20,left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(booksData[index].label, style: TextStyle(fontSize: 17),),
                                  Text(booksData[index].detail,maxLines: 4, style: TextStyle(fontSize: 16),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: booksData.length,
                  itemBuilder: (context, index){
                    return Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 150,
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Image.network(booksData[index].imageUrl, width: 150,),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20,left: 10),
                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(booksData[index].label, style: TextStyle(fontSize: 17),),
                                  Text(booksData[index].detail,maxLines: 4, style: TextStyle(fontSize: 16),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            )
          ],
        )
    );
  }
}
