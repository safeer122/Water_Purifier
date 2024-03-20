import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:water_purifier/Ui/Add_test.dart';
import 'package:water_purifier/Ui/test_profile.dart';
class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, top: 70.h,right: 20.w),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 242.w,
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
                SizedBox(width: 20.w,),
                GestureDetector(
                  onTap: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_)=>Addtest()));
                  },
                  child: Container(
                    width: 88.w,
                    height: 44.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xff1256BC),
                        borderRadius: BorderRadius.circular(8.r)),
                    child:
                        Text("New Test",
                          style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF7F7F7)
                          ),)

                  ),
                )
              ],
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return    Container(
                    width: 350.w,
                    height: 161.h,
                    decoration: BoxDecoration(
                        color: Color(0xffE6F0FF),
                        borderRadius: BorderRadius.circular(16.r)
                    ),
                    child:Padding(
                      padding: EdgeInsets.only(left: 20.w,top: 20.h),
                      child: Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Check TDS levels",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                  color: Color(0xff121212)
                              ),),
                              SizedBox(height: 8.h,),
                              Text("20 -01 -2024",style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff343434)
                              ),),
                              SizedBox(height: 5.h,),
                              Text("Rahul Kumar",style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff343434)
                              ),),
                              SizedBox(height: 5.h,),
                              Text("Malappuram Kottapdi",style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff343434)
                              ),)
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 81.w,top: 90.h),
                            child: Container(
                              width: 98.w,
                              height: 31.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color(0xffF7F7F7),
                                  borderRadius: BorderRadius.circular(8.r)
                              ),
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("See Details  ",style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff1256BC)
                                  ),),
                                  Icon(Icons.arrow_forward_ios,color: Color(0xff1256BC),size: 14.h,)
                                ],
                              ),
                            ),
                          )
                        ],
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
      ),
    );
  }
}
