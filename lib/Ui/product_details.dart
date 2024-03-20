

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Productdetails extends StatefulWidget {
  const Productdetails({super.key});

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: Padding(
        padding: EdgeInsets.only(left: 25.w, top: 77.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product Name",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 19.sp,
                  color: Color(0xff121212)),
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              "Date Of Purchace",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17.sp,
                  color: Color(0xff121212)),
            ),

            Expanded(
              child: ListView.separated(
                physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
                itemBuilder: (context, index) {
                  return Column(children: [
                    Row(
                      children: [
                        Text(
                          "01 - 12- 2024",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17.sp,
                              color: Color(0xff121212)),
                        ),
                        SizedBox(
                          width: 175.w,
                        ),
                        GestureDetector(
                        onTap:(){
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: Center(child: Text("Service Note",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff424242)
                                
                              ),)),
                              content:  SizedBox(
                                  width: 250.w,
                                  child: Text("this product has done service on the date the authorised person",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
                                    color: Color(0xff424242),

                                  ),)),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 60.w),
                                    child: Container(
                                      width: 114.w,
                                      height: 37.h,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Color(0xff1256BC),
                                        borderRadius: BorderRadius.circular(6.r)
                                      ),

                                      child:  Text("Close",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffF7F7F7)
                                      ),),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                  },
                          child: Text(
                            "Details",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17.sp,
                                color: Color(0xff1256BC)),
                          ),
                        ),
                      ],
                    ),

                  ]);
                },
                itemCount: 2,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10.h,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Row(
// children: [
// Text("01 - 12- 2024",style: TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 17.sp,
// color: Color(0xff121212)
// ),),
// SizedBox(width: 175.w,),
// Text("Details",style: TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 17.sp,
// color: Color(0xff1256BC)
// ),),
// ],
// ),
// SizedBox(height: 16.h,),
// Row(
// children: [
// Text("11 - 02- 2024",style: TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 17.sp,
// color: Color(0xff121212)
// ),),
// SizedBox(width: 175.w,),
// Text("Details",style: TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 17.sp,
// color: Color(0xff1256BC)
// ),),
// ],
// )
