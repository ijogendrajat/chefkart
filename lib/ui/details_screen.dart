import 'package:chefkart/const/const.dart';
import 'package:chefkart/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            top: 0.h,
            left: 16.w,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),
          Positioned(
            top: 0,
            right: -15.w,
            child: Container(
              width: 171.w,
              height: 192.h,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 249, 242, 1),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(171.w, 192.h),
                ),
              ),
            ),
          ),
          Positioned(
            top: 60.h,
            right: -60.w,
            child: SizedBox(
              width: 180.w,
              height: 130.h,
              child: Image.asset(plantPng),
            ),
          ),
          Positioned(
            top: 60.h,
            right: -50.w,
            child: SizedBox(
              height: 100.h,
              child: Image.asset(cupPng),
            ),
          ),
          // Image.asset(refrPng),
          // all stuff
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //

                SizedBox(
                  height: 30.h,
                ),

                //
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 24.h,
                      ),
                      Text(
                        "Mashala Muglai",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23.sp,
                          color: Color.fromRGBO(36, 36, 36, 1),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      SizedBox(
                        width: 182.w,
                        height: 39.h,
                        child: Text(
                          "Mughlai Masala is a style of cookery developed in the Indian Subcontinent by the imperial kitchens of the Mughal Empire.",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(163, 163, 163, 1),
                              fontSize: 8.sp,
                              wordSpacing: 0.16.sp),
                        ),
                      ),
                      SizedBox(
                        height: 26.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.alarm,
                          ),
                          SizedBox(
                            width: 7.sp,
                          ),
                          Text(
                            "Mashala Muglai",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10.sp,
                              color: Color.fromRGBO(36, 36, 36, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 56.h,
                      ),
                      Text(
                        "Ingredients",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          letterSpacing: 0.16.sp,
                          color: Color.fromRGBO(36, 36, 36, 1),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        "For 2 people",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 8.sp,
                          color: Color.fromRGBO(36, 36, 36, 1),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Divider(
                        thickness: 1.sp,
                        color: Color.fromRGBO(214, 214, 214, 0.81),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    // add drop down svg file
                    Text(
                      "Vegetables (03)",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                // ListTile(
                //   minVerticalPadding: 9,
                //   title: Text(
                //     "Tomato",
                //     style: TextStyle(
                //         fontWeight: FontWeight.normal, fontSize: 10.sp),
                //   ),
                //   trailing: Text(
                //     "22",
                //     style: TextStyle(
                //         fontWeight: FontWeight.normal, fontSize: 10.sp),
                //   ),
                // ),
                CustonListTile(
                  start: "Cauliflower",
                  end: "01 Pc",
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustonListTile(
                  start: "Tomato",
                  end: "10 Pc",
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustonListTile(
                  start: "Spinach",
                  end: "1/2 Kg",
                ),

                // this is just copy paste data
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  children: [
                    // add drop down svg file
                    Text(
                      "Vegetables (03)",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),

                CustonListTile(
                  start: "Coriander",
                  end: "100 gram",
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustonListTile(
                  start: "Mustard oil",
                  end: "1/2 litres",
                ),
                //

                SizedBox(
                  height: 24.h,
                ),
                // here we go for referegrator
                Text(
                  "Appliances",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Container(
                      width: 72.w,
                      height: 95.h,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 245, 245, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.sp),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 30.w,
                            height: 55.h,
                            child: Image.asset(refrPng),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Refrigerator",
                            style: TextStyle(
                              fontSize: 8.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 21.w,
                    ),
                    //cc
                    Container(
                      width: 72.w,
                      height: 95.h,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 245, 245, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.sp),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 30.w,
                            height: 55.h,
                            child: Image.asset(refrPng),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Refrigerator",
                            style: TextStyle(
                              fontSize: 8.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 21.w,
                    ),
                    Container(
                      width: 72.w,
                      height: 95.h,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 245, 245, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.sp),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 30.w,
                            height: 55.h,
                            child: Image.asset(refrPng),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Refrigerator",
                            style: TextStyle(
                              fontSize: 8.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                    //cc-end
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class CustonListTile extends StatelessWidget {
  String start;
  String end;
  CustonListTile({super.key, required this.start, required this.end});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          start,
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 10.sp),
        ),
        Text(
          end,
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 10.sp),
        ),
        // SizedBox(
        //   height: 10.h,
        // )
      ],
    );
  }
}
