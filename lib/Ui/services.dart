import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:water_purifier/Ui/test_profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30.w, top: 58.h),
            child: Row(
              children: [
                Text(
                  "Service",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 23.sp,
                      color: Color(0xff121212)),
                ),
                SizedBox(
                  width: 220.w,
                ),
                IconButton(
                  icon: Icon(
                    Icons.person_outline,
                    size: 33.h,
                    color: Color(0xff121212),
                  ), onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Testprofile()));
                }
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 30.w,right: 30.w),
                  child: Container(
                    width:350.w ,
                    height: 147.h,
                    decoration: BoxDecoration(
                      color: Color(0xffE6F0FF),
                      borderRadius: BorderRadius.circular(16.r)
                    ),
                    child: Padding(
                      padding:EdgeInsets.only(left: 10.w,top: 10.h),
                      child: Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("vimal kumar",style: TextStyle(
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff121212)
                              ),),
                              SizedBox(height: 10.h,),
                              Text("Kottakunnu Rd, Up Hill, ",style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff686868)
                              ),),
                              SizedBox(height: 8.h,),
                              Text("91+080822435, ",style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff686868)
                              ),),
                              SizedBox(height: 8.h,),
                              Text("due 06- 01- 2024 ",style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffFF3B30)
                              ),),

                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30.w,top: 50.h),
                            child: Column(
                              children: [
                                Container(
                                  width: 110.w,
                                  height: 31.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xffE6F0FF),
                                    borderRadius: BorderRadius.circular(8.r),
                                    border: Border.all(color: Color(0xff1256BC))
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 8.w,),
                                      Transform.rotate(
                                       angle:4.69, // Angle in radians (45 degrees = pi/4)
                                       child: RotatedBox(
                                       quarterTurns: 3, // Number of quarter turns (45 degrees = 1/8th turn)
                                       child:
                                       Icon(Icons.subdirectory_arrow_left_outlined,color: Color(0xff1256BC),
                                         size: 18.h,
                                       ),
                                       ),),
                                      Text("Directions",style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.sp,
                                        color: Color(0xff1256BC)
                                      ),)
                                    ],
                                  ),
                                                  ),
                                SizedBox(height: 10.h,),
                                Padding(
                                  padding: EdgeInsets.only(left: 30.w),
                                  child: Container(
                                    width: 79.w,
                                    height: 31.h,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Color(0xff1256BC),
                                      borderRadius: BorderRadius.circular(8.r)
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 15.w,),
                                        Icon(Icons.phone,
                                        color: Color(0xffFFFFFF),
                                        size: 17.h,),
                                        SizedBox(width: 4,),
                                        Text("call",style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffFFFFFF)
                                        ),)
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
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
    );
  }
}
