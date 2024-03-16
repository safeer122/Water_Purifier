import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:water_purifier/Ui/Add_costumer.dart';

class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
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
                        .push(MaterialPageRoute(builder: (_)=>Addcustomer()));
                  },
                  child: Container(
                    width: 88.w,
                    height: 44.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xff1256BC),
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Row(
                      children: [
                        SizedBox(width: 7.w,),
                       ImageIcon(AssetImage("asset/person.png",),color: Color(0xffFFFFFF),size: 15.h,),
                        SizedBox(width: 4,),
                        Text("Add New",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffF7F7F7)
                        ),)
                      ],
                    ),
                  ),
                )
              ],
            ),
              Expanded(
              child: ListView.separated(
         itemBuilder: (context, index) {
            return    Container(
              width: 350.w,
              height: 107.h,
              decoration: BoxDecoration(
                color: Color(0xffE6F0FF),
                borderRadius: BorderRadius.circular(16.r)
              ),
              child:Padding(
                padding: EdgeInsets.only(left: 15.w,top: 16.h),
                child: Row(
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Muhammed jamsheer",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Color(0xff121212)
                        ),),
                        SizedBox(height: 8.h,),
                        Text("Up Hill, Malappuram",style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff343434)
                        ),),
                        SizedBox(height: 4.h,),
                        Text("91+980822435",style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff343434)
                        ),)
                      ],
                    ),
                Padding(
                  padding: EdgeInsets.only(left: 82.w,top: 40.h),
                  child: Container(
                    width: 67.w,
                    height: 25.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xffF7F7F7),
                        borderRadius: BorderRadius.circular(8.r)
                    ),
                    child: Text("Check ",style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff1256BC)
                    ),),
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
