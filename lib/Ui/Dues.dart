import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Dues extends StatefulWidget {
  const Dues({super.key});

  @override
  State<Dues> createState() => _DuesState();
}

class _DuesState extends State<Dues> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF7F7F7),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w,top: 77.h,right: 20.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 350.w,
              height: 44.h,
              decoration: BoxDecoration(
                  color: Color(0xffE6F0FF),
                  borderRadius: BorderRadius.circular(8.r)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.search_rounded,
                    color: Color(0xff999999),
                    size: 28.h,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  SizedBox(
                    width: 190.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "search customer",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                              color: Color(0xff999999)),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.h,),
        Container(
          width: 97.w,
          height: 32.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xffF7F7F7),
              borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: Color(0xff1256BC))),
          child:Text("Today",style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff1256BC)
          ),)

        ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return    Container(
                    width: 350.w,
                    height: 192.h,
                    decoration: BoxDecoration(
                        color: Color(0xffE6F0FF),
                        borderRadius: BorderRadius.circular(16.r)
                    ),
                    child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15.w,top: 16.h),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("rahul kumar",style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: Color(0xff121212)
                              ),),
                              SizedBox(height: 5.h,),
                              Text("malappuram kottapdi",style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff424242)
                              ),),
                              SizedBox(height: 2.h,),
                              Text("22- 02 - 2024",style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff424242)
                              ),),
                              SizedBox(height: 2.h,),
                              Text("Livpure Smart Bolt For Rent 7 L Water \n Purifier",style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff424242)
                              ),),

                            ],
                          ),
                        ),
                        SizedBox(height: 20.h,),
                        Container(
                          width: 350.w,
                          height: 46.h,
                          decoration: BoxDecoration(
                              color: Color(0xff1256BC),
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.r),
                                  bottomRight: Radius.circular(16.r))
                          ),
                          child:
                          Row(
                            children: [
                              SizedBox(width: 20.w,),
                              Icon(Icons.phone,color: Color(0xffF7F7F7),size: 20.h,),
                              SizedBox(width: 5.w,),
                              Text("Call",style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                  color: Color(0xffF7F7F7)
                              ),),
                              SizedBox(width: 69.w,),
                              Transform.rotate(
                                angle:4.69, // Angle in radians (45 degrees = pi/4)
                                child: RotatedBox(
                                  quarterTurns: 3, // Number of quarter turns (45 degrees = 1/8th turn)
                                  child:
                                  Icon(Icons.subdirectory_arrow_left_outlined,color: Color(0xffF7F7F7),
                                    size: 21.h,
                                  ),
                                ),),
                              Text("Directions",style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                                  color: Color(0xffF7F7F7)
                              ),),
                              SizedBox(width: 51.w,),
                              Icon(Icons.info_outline,color: Color(0xffF7F7F7),size: 22.h,),
                              SizedBox(width: 5.w,),
                              Text("Details",style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                                  color: Color(0xffF7F7F7)
                              ),),
                            ],
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
          ],
        ),
      ),



    );
  }
}
