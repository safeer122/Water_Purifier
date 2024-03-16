import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Addcustomer extends StatefulWidget {
  const Addcustomer({super.key});

  @override
  State<Addcustomer> createState() => _AddcustomerState();
}

class _AddcustomerState extends State<Addcustomer> {
  final List<String> items = [
    'Aquaguard RO Water Purifier',
    'KENT Supreme',
    'Pureit RO Water Purifier',
    'Aquaguard ASTOR RO',
    "Livpure",
    "Tata Swach 445666 12 L Ro Water Purifier"
  ];
  String? selectedValue;
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
              Text("Add Customer",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25.sp,
                color: Color(0xff121212)
              ),),
              SizedBox(height: 24.h,),
              Container(
                width: 340.w,
                height: 55.h,
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
                          hintText: "Customer Name",
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
              Container(
                width: 340.w,
                height: 55.h,
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
                          hintText: "Place",
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
              Container(
                width: 340.w,
                height: 55.h,
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
                          hintText: "Phone Number",
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
                    width: 167.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      color: Color(0xffE6F0FF),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child:
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: SizedBox(
                        width: 150.w,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Latitude",
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
                  SizedBox(width: 10.w,),
                  Container(
                    width: 167.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      color: Color(0xffE6F0FF),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child:
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: SizedBox(
                        width: 150.w,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Longitude",
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
                ],
              ),
              SizedBox(height: 16.h,),
              Container(
                width: 340.w,
                height: 55.h,
                decoration: BoxDecoration(
                  color: Color(0xffE6F0FF),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child:
                DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: Text(
                      'Select Item',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff868686),
                      ),
                    ),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff656565)
                        ),
                      ),
        
                    ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 13),
                      height: 40,
                      width: 140,
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
        
                    ),
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(left: 80.w,top: 250),
                child: Container(
                  width: 179.w,
                  height: 45.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff1256BC),
                    borderRadius: BorderRadius.circular(8.r)
                  ),
                  child: Text("Add",style: TextStyle(
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
}
