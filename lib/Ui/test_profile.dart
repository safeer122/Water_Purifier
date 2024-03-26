import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:water_purifier/Bloc/Profile_screen/profile_bloc.dart';

import '../Reprocitory/modelclass/Profile.dart';
class Testprofile extends StatefulWidget {
  const Testprofile({super.key});

  @override
  State<Testprofile> createState() => _TestprofileState();
}
late ProfileModel profile;
class _TestprofileState extends State<Testprofile> {
  @override
  void initState() {
    BlocProvider.of<ProfileBloc>(context).add(FetchProfile());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: BlocBuilder<ProfileBloc, ProfileState>(
  builder: (context, state) {
    if(state is ProfileblocLoading){
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    if(state is ProfileblocError){
      return Center(child: Text("Error",style: TextStyle(
        color: Colors.black
      ),));
    }
    if(state is ProfileblocLoaded){
      profile=BlocProvider
          .of<ProfileBloc>(context)
          .profile;

    return Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  width: 390.w,
                  height: 241.h,
                  decoration: BoxDecoration(
                    color: Color(0xff1256BC),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(22.r),
                      bottomLeft: Radius.circular(22.r)
                    )
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 21.w,top: 70.h),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageIcon(AssetImage("asset/Icon/arrow.png"),size: 22.h,color:  Color(0xffF7F7F7),),
                        SizedBox(width: 11.w,),
                        Text("Back To Home",style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color:  Color(0xffF7F7F7),
                        ),)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(left: 20.w,top: 200.h),
                child: Container(
                  width: 350.w,
                  height: 533.h,
                  decoration: BoxDecoration(
                    color:  Color(0xffF7F7F7),
                    borderRadius: BorderRadius.circular(22.r),
                      boxShadow:[BoxShadow(color:
                      Color(0xff8d8b8b),offset: Offset(
                          2, 6),spreadRadius:-25,blurRadius:30,),]
                  ),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 123.w,top: 70.h),
                        child: Text(profile.name.toString(),style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22.sp,
                          color: Color(0xff121212)
                        ),),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 139.w,),
                        child: Text(profile.employeeCode.toString(),style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: Color(0xff656565)
                        ),),
                      ),
                      Padding(
                        padding:EdgeInsets.only(left: 20.w,top: 40.h),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Address",style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        color: Color(0xff979797)
                                    ),),
                                    SizedBox(height: 5,),
                                    SizedBox(width: 265.w,
                                      child: Text(profile.address.toString(),
                                          maxLines: 1
                                          ,style: TextStyle(
                                          fontWeight: FontWeight.w500,

                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 14.sp,
                                          color: Color(0xff121212)
                                      ),),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 25),
                                Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff121212),size: 22.h,)
                              ],
                            ),
                            SizedBox(height: 30.h,
                            ),
                            Row(
                              children: [
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Contact NO",style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        color: Color(0xff979797)
                                    ),),
                                    SizedBox(height: 5,),
                                    Text(profile.mobile.toString(),style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        color: Color(0xff121212)
                                    ),),
                                  ],
                                ),
                                SizedBox(width: 185),
                                Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff121212),size: 22.h,)
                              ],
                            ),
                            SizedBox(height: 30.h,
                            ),
                            Row(
                              children: [
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Email",style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        color: Color(0xff979797)
                                    ),),
                                    SizedBox(height: 5,),
                                    SizedBox(
                                      width: 250.w,
                                      child: Text(profile.email.toString(),style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 16.sp,
                                          color: Color(0xff121212)
                                      ),),
                                    ),
                                  ],
                                ),
                                SizedBox(width:40 ),
                                Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff121212),size: 22.h,)
                              ],
                            ),
                            SizedBox(height: 30.h,
                            ),
                            Row(
                              children: [
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("DOJ",style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        color: Color(0xff979797)
                                    ),),
                                    SizedBox(height: 5,),
                                    Text(profile.createdOn.toString(),style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        color: Color(0xff121212)
                                    ),),
                                  ],
                                ),
                                SizedBox(width: 188),
                                Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff121212),size: 22.h,)
                              ],
                            ),
                            SizedBox(height: 28.h,),
                            Text("Log -Out",style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17.sp,
                                color: Color(0xffFF3B30)
                            ),),
                          ],
                        ),
                      ),

                    ],

                  ),
                ),
              ),
              ///-------prifile image--------///
              Padding(
                padding:EdgeInsets.only(left: 148.w,top: 140),
                child: Container(
                  width: 100.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                      color:  Color(0xffF7F7F7),
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xffF7F7F7))
                  ),
                  child: Image.asset("asset/Img/profile.png",fit: BoxFit.cover,),
                ),
              ),
            ],
          )
        ],
      );
    }else {
      return SizedBox();
    }
  },
),
    );
  }
}
