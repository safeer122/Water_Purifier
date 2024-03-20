import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:water_purifier/Ui/product_details.dart';

class Customerdetails extends StatefulWidget {
  const Customerdetails({super.key});

  @override
  State<Customerdetails> createState() => _CustomerdetailsState();
}

class _CustomerdetailsState extends State<Customerdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: Padding(
        padding: EdgeInsets.only(left: 19.w, top: 77.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "customer details",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff121212)),
                ),
                SizedBox(
                  width: 120.w,
                ),
                Container(
                    width: 88.w,
                    height: 44.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xff1256BC),
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Text(
                      "Add New",
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffF7F7F7)),
                    )),
              ],
            ),
            SizedBox(
              height: 41.h,
            ),
            Container(
              width: 350.w,
              height: 195.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: Color(0xffE6F0FF)),
              child: Padding(
                padding: EdgeInsets.only(left: 20.w, top: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "muhammed jamsheer",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff121212)),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      "Malappuram",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff363636)),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                      width: 250.w,
                      child: Text(
                        "Mr. Rajiv Rattan 4, Amrita Shergill Road kochi 110003 INDIAMr. Rajiv Rattan 4, Amrita Shergill Road kochi 110003 INDIA",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff363636)),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      "(231048754 , 542984231)",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff363636)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 53.h,),
            Text(
              "Products",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff121212)),
            ),
            SizedBox(height: 12.h,),
            Container(
              width: 350.w,

              decoration: BoxDecoration(
                color: Color(0xffE6F0FF),
                borderRadius: BorderRadius.circular(8.r)
              ),
              child:  SizedBox(
                height: 5*30.h,
                child: ListView.separated(
                  physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
                  itemBuilder: (context, index) {
                    return   Padding(
                      padding:EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        children: [
                          Row(mainAxisAlignment:MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 167.w,
                                child: Text(

                                  "Livpure Smart Bolt For Rent 7 L Water Purifie",
                                  style: TextStyle(

                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff363636)),

                                ),
                              ),
                              SizedBox(width: 35.w,),
                              Text(
                                "22 -10 -2023",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff121212)),
                              ),
                              SizedBox(width: 8.w,),
                              GestureDetector(
                                  onTap: (){
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(builder: (_)=>Productdetails()));
                                  },
                                  child: Icon(Icons.info_outline,color:Color(0xff1256BC),size: 20.h,))
                            ],
                          ),
                          SizedBox(
                            width:290,
                            child: Divider(
                              thickness: 1.h,
                              color: Color(0xff66696C),
                            ),
                          )
                        ],
                      ),
                    );

                  },
                  itemCount:5,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 10.h,
                    );
                  },


                ),

              ),

            )
          ],
        ),
      ),
    );
  }
}
