import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class FlagPic extends StatelessWidget {
  final String flagpic,countryname,rating;
  const FlagPic({
    super.key, required this.flagpic, required this.countryname, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(4, 4),
            blurRadius: 10,
          ),
        ],

      ),
      alignment: Alignment.center,
      height: 200.h,
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                flagpic,
              ),
              Positioned(
                bottom: 5.h,
                left: 5.h,
                child: Container(
                  color: Colors.white,
                  child: Text(
                    rating,
                    style: TextStyle(fontSize: 12.sp, color: Colors.orange),
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                right: 5,
                child: Container(
                  color: Colors.white,
                  child: Text(
                    countryname,
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            countryname,
            style: TextStyle(fontSize: 15.sp, color: Colors.deepPurpleAccent
            ),
          ),
        ],
      ),
    );
  }
}