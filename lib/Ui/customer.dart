import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:water_purifier/Bloc/Customer_Screen/customer_bloc.dart';
import 'package:water_purifier/Ui/Add_costumer.dart';
import 'package:water_purifier/Ui/Customer_details.dart';


import '../Reprocitory/modelclass/Customermodel.dart';

class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}
late List<Customermodel> customer;
class _CustomerState extends State<Customer> {
  @override
  void initState() {
    BlocProvider.of<CustomerBloc>(context).add(FetchCustomer());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, top: 70.h, right: 20.w),
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
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Addcustomer()));
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
                        ImageIcon(AssetImage("asset/Icon/person.png",),
                          color: Color(0xffFFFFFF), size: 15.h,),
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
              child: BlocBuilder<CustomerBloc, CustomerState>(
                builder: (context, state) {
                  if(state is CustomerblocLoading){
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                  }
                  if(state is CustomerblocError){
                    return Center(
                      child: Text(
                        "Errror",style: TextStyle(
                         color: Colors.white
                      ),
                      )
                    );
                  }
                  if(state is CustomerblocLoaded){
                 customer=BlocProvider
                     .of<CustomerBloc>(context)
                     .customer;


                  return ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        width: 350.w,
                        height: 107.h,
                        decoration: BoxDecoration(
                            color: Color(0xffE6F0FF),
                            borderRadius: BorderRadius.circular(16.r)
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.w, top: 16.h),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 250.w,
                                    child: Text(customer[index].name.toString(), style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        overflow: TextOverflow.ellipsis,
                                        color: Color(0xff121212)
                                    ),),
                                  ),
                                  SizedBox(height: 8.h,),
                                  SizedBox(
                                    width: 200.w,
                                    child: Text(customer[index].address.toString(),
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        overflow:TextOverflow.ellipsis ,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff343434)
                                    ),),
                                  ),
                                  SizedBox(height: 4.h,),
                                  Text(customer[index].mobile.toString(), style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff343434)
                                  ),)
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.w, top: 40.h),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                        builder: (_) => Customerdetails()));
                                  },
                                  child: Container(
                                    width: 67.w,
                                    height: 25.h,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Color(0xffF7F7F7),
                                        borderRadius: BorderRadius.circular(8.r)
                                    ),
                                    child: Text("Check ", style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff1256BC)
                                    ),),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount:customer.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 10.h,
                      );
                    },


                  );
                  }else {
                    return SizedBox();
                  }

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
