import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Addtest extends StatefulWidget {
  const Addtest({super.key});

  @override
  State<Addtest> createState() => _AddtestState();
}

bool visible = false;
class _AddtestState extends State<Addtest> {
TextEditingController _dataController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.only(left: 20.w
              ,top: 77.h),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Add New Test",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp,
                    color: Color(0xff121212)
                ),),
              SizedBox(height: 24.h,),
              Container(
                width: 350.w,
                height: 58.h,
                decoration: BoxDecoration(
                  color: Color(0xffE6F0FF),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child:
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: SizedBox(
                    width: 300.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Test Name",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: Color(0xff868686)),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h,),
              Row(
                children: [
                  Container(
                    width: 170.w,
                    height: 58.h,
                    decoration: BoxDecoration(
                      color: Color(0xffE6F0FF),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: SizedBox(
                      width: 200.w,
                      child: TextFormField(

                        controller: _dataController,
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,

                              hintText:"Test Date",
                              hintStyle:  TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight:FontWeight.w400,
                                  color: Color(0xff868686)
                                ),
                              prefixIcon:  Icon(Icons.calendar_month_outlined,color: Color(0xff1256BC),size: 22.h,)
                            ),
                        readOnly: true,
                        onTap: (){
                              _selectDate();
                        },
                            ),
                          //   "Test Date",style: TextStyle(
                          //   fontSize: 14.sp,
                          //   fontWeight:FontWeight.w400,
                          //   color: Color(0xff868686)
                          // ),)
                          ),
                    ),


                  SizedBox(width: 10.w,),
                  Container(
                    width: 170.w,
                    height: 58.h,
                    decoration: BoxDecoration(
                      color: Color(0xffE6F0FF),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child:
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child:  Row(
                        children: [
                        SizedBox(width: 10.w,),
                      Icon(Icons.access_time_outlined,color: Color(0xff1256BC),size: 22.h,),
                          SizedBox(width: 8.w,),
                          SizedBox(
                            width: 100.w,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Test Time",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.sp,
                                      color: Color(0xff868686)),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none),
                            ),
                          ),
                      ]),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16.h,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    visible=!visible;
                  });

                },
                child: Container(
                  width: 350.w,
                  height: 58.h,
                  decoration: BoxDecoration(
                    color: Color(0xffE6F0FF),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(12.r),
                    topLeft: Radius.circular(12.r,),bottomLeft: Radius.circular(visible==true?0.r:12.r),
                    bottomRight: Radius.circular(visible==true?0.r:12.r)),
                  ),
                  child:
                  Padding(
                    padding: EdgeInsets.only(left: 10.w,),
                    child: Row(
                      children: [
                        Text("Customer Details",
                        style:  TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: Color(0xff363636)),
                        ),
                        SizedBox(width: 180.w,),
                        Icon(visible==true?Icons.arrow_drop_up_sharp:
                        Icons.arrow_drop_down,
                        color:Color(0xff1256BC),size:25.h,
                        )
                      ],
                    ),
                  )
                ),
              ),

              ///--------Customer detailse Container------///

              Visibility(
              visible: visible,
              child: Container(
                width: 350.w,
                  height: 274.h,
                decoration: BoxDecoration(
                  color: Color(0xffC8DEFF),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8.r),
                    bottomRight: Radius.circular(8.r),
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.w,top: 18.h,right: 10.w),
                  child: Column(
                  children: [
                     Container(
                       width: 330.w,
                       height: 52.h,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(4.r),
                         color: Color(0xffF7F7F7),
                       ),
                       child: Padding(
                         padding: EdgeInsets.only(left: 10.w),
                         child: TextFormField(
                           decoration: InputDecoration(
                             hintText: "Customer Name",
                             hintStyle: TextStyle(
                               fontWeight: FontWeight.w400,
                               fontSize: 15.sp,
                               color: Color(0xff979797)

                             ),
                             focusedBorder: InputBorder.none,
                             enabledBorder: InputBorder.none,
                             disabledBorder: InputBorder.none,
                           ),
                         ),
                       ),
                     ),
                    SizedBox(height: 15.h,),
                    Container(
                      width: 330.w,
                      height: 52.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: Color(0xffF7F7F7),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Customer Place",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                                color: Color(0xff979797)

                            ),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h,),
                    Container(
                      width: 330.w,
                      height: 52.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: Color(0xffF7F7F7),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Customer Number",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                                color: Color(0xff979797)

                            ),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h,),
                    Container(
                      width: 135.w,
                      height: 37.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Color(0xff1256BC),
                      ),
                      child:
                      Text("Save",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: Color(0xffF7F7F7)
                      ),),

                    )
                    ]
                  ),
                ),
              ),
              ),
              SizedBox(height: 16.h,),
              Container(
                width: 350.w,
                height: 58.h,
                decoration: BoxDecoration(
                  color: Color(0xffE6F0FF),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child:
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: SizedBox(
                    width: 300.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "PH Value",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: Color(0xff363636)),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h,),
              Container(
                width: 350.w,
                height: 58.h,
                decoration: BoxDecoration(
                  color: Color(0xffE6F0FF),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child:
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: SizedBox(
                    width: 300.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "TDS",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: Color(0xff363636)),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h,),
              Container(
                width: 350.w,
                height: 58.h,
                decoration: BoxDecoration(
                  color: Color(0xffE6F0FF),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child:
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: SizedBox(
                    width: 300.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Iron",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: Color(0xff363636)),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h,),
              Container(
                width: 350.w,
                height: 58.h,
                decoration: BoxDecoration(
                  color: Color(0xffE6F0FF),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child:
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: SizedBox(
                    width: 300.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Hardness",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: Color(0xff363636)),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h,),
              Container(
                width: 350.w,
                height: 58.h,
                decoration: BoxDecoration(
                  color: Color(0xffE6F0FF),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child:
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: SizedBox(
                    width: 300.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Tur Buet",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: Color(0xff363636)),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none),
                    ),
                  ),
                ),
              ),

              Padding(
                padding:EdgeInsets.only(left: 80.w,top: 40),
                child: Container(
                  width: 179.w,
                  height: 45.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xff1256BC),
                      borderRadius: BorderRadius.circular(8.r)
                  ),
                  child: Text("Save",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Color(0xffF7F7F7)
                  ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Future<void> _selectDate() async {
   DateTime? _picked = await showDatePicker(
     barrierColor: Colors.transparent,
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

   if(
   _picked != null

   ){
     setState(() {
       _dataController.text=_picked.toString().split(" ")[0];
     });
   }
  }
}
