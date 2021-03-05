import 'package:flutter/material.dart';

Widget foodCard(String img, String price, String title) {
  return Container(
    child: Card(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Image.network(
              img,
              height: 100,
            ),
            SizedBox(height: 10),
            Flexible(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children:<Widget> [
                Expanded(
                  child: Text(
                    '$price Dollar',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Expanded(child: Icon(Icons.favorite,color: Colors.red,)),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
