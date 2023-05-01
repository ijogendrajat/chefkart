import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        centerTitle: false,
        title: const Text(
          "Select Dishes",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // this is time
            DateAndTimeWidget(),
            // this is dish card
            //
            Padding(
              padding: EdgeInsets.only(left: 18.w, right: 18.w),
              child: SizedBox(
                height: 40,
                child: ListView.builder(
                    padding: EdgeInsets.only(left: 13.w, right: 13.sp),
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 76.w,
                        height: 24.h,
                        child: Row(
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17.sp),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Indian",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(255, 148, 26, 1),
                                    fontSize: 10.sp,
                                    wordSpacing: 0.1.sp),
                              ),
                            ),
                            SizedBox(
                              width: 13.w,
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
            //
            SizedBox(
              height: 21.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.w, right: 18.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Popular Dishes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(28, 28, 28, 1),
                      fontSize: 14.sp,
                      //wordSpacing: 0.16.sp
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.w, right: 18.w),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-photo/top-view-delicious-corn-dog_23-2149387975.jpg",
                    ),
                    radius: 29.w,
                    // backgroundColor: Colors.orange,
                    child: CircleAvatar(
                      radius: 29.w,
                      backgroundColor: Colors.black.withOpacity(0.4),
                      child: Text(
                        "Biryani",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 10.sp,
                            wordSpacing: 0.1.sp),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-photo/top-view-delicious-corn-dog_23-2149387975.jpg",
                    ),
                    radius: 29.w,
                    // backgroundColor: Colors.orange,
                    child: CircleAvatar(
                      radius: 29.w,
                      backgroundColor: Colors.black.withOpacity(0.4),
                      child: Text(
                        "Biryani",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 10.sp,
                            wordSpacing: 0.1.sp),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-photo/top-view-delicious-corn-dog_23-2149387975.jpg",
                    ),
                    radius: 29.w,
                    // backgroundColor: Colors.orange,
                    child: CircleAvatar(
                      radius: 29.w,
                      backgroundColor: Colors.black.withOpacity(0.4),
                      child: Text(
                        "Biryani",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 10.sp,
                            wordSpacing: 0.1.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Divider(
              color: Color.fromRGBO(242, 242, 242, 1),
              thickness: 3.sp,
            ),
            SizedBox(
              height: 19.h,
            ),
            // this is story type item show case

            // Recommnded item header
            Padding(
              padding: EdgeInsets.only(left: 18.w, right: 18.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(28, 28, 28, 1),
                      fontSize: 16.sp,
                      //wordSpacing: 0.16.sp
                    ),
                  ),
                  Container(
                    width: 56.w,
                    height: 22.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromRGBO(28, 28, 28, 1),
                    ),
                    child: Center(
                      child: Text(
                        "Menu",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 8.sp,
                          //wordSpacing: 0.16.sp
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            //
            Padding(
              padding: EdgeInsets.only(left: 18.w, right: 18.w),
              child: Column(
                children: [
                  DishCard(
                      name: "Masala Mughlai",
                      rating: 4.2,
                      description:
                          "Chicken fried in deep tomato sauce with delicious spices",
                      equipments: ["Refrigerator", "Microwave"],
                      image:
                          "https://img.freepik.com/free-photo/top-view-delicious-corn-dog_23-2149387975.jpg",
                      id: 1),
                  //
                  DishCard(
                      name: "Masala Mughlai",
                      rating: 4.2,
                      description:
                          "Chicken fried in deep tomato sauce with delicious spices",
                      equipments: ["Refrigerator", "Microwave"],
                      image:
                          "https://img.freepik.com/free-photo/top-view-delicious-corn-dog_23-2149387975.jpg",
                      id: 1),
                  //
                ],
              ),
            ),
            // stack card after select item
            SelectedItemCard(),
          ],
        ),
      ),
    );
  }
}

class DishCard extends StatelessWidget {
  String name;
  double rating;
  String description;
  List<String> equipments;
  String image;
  int id;
  DishCard(
      {super.key,
      required this.id,
      required this.name,
      required this.rating,
      required this.description,
      required this.equipments,
      required this.image});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        color: Colors.white.withOpacity(0.8),
        height: 97.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // details
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(28, 28, 28, 1),
                        fontSize: 12.sp,
                        //wordSpacing: 0.16.sp
                      ),
                    ),
                    SizedBox(
                        width: 22.w,
                        height: 10.h,
                        child: Chip(
                            backgroundColor: Color.fromRGBO(81, 196, 82, 1),
                            label: Text(
                              rating.toString() + "*",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 6.sp,
                              ),
                            )))
                  ],
                ),
                Container(
                  width: 156.w,
                  height: 22.h,
                  child: Text(
                    description,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(163, 163, 163, 1),
                        fontSize: 8.sp,
                        wordSpacing: 0.16.sp),
                  ),
                ),
              ],
            ),
            // pic and add btn
            Container(
              width: 100,
              height: 100,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: SizedBox(
                      width: 58.w,
                      height: 21.h,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.sp),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "ADD +",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(255, 136, 0, 1),
                            fontSize: 11.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(image), fit: BoxFit.fitWidth),
                        ),
                        height: 68.h,
                        width: 100.w,
                      ),
                      // Expanded(
                      //   child: new Container(
                      //     color: Colors.white,
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SelectedItemCard extends StatelessWidget {
  const SelectedItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: SizedBox(
        width: 239.w,
        height: 40.h,
        child: Padding(
          padding:
              EdgeInsets.only(left: 16.w, right: 16.w, top: 10.h, bottom: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.local_drink_outlined,
                color: Colors.white,
                size: 16.sp,
              ),
              Text(
                "3 Food item selected",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 12.sp,
                    wordSpacing: 0.12.sp),
              ),
              SizedBox(
                width: 2.w,
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DetailsScreen()));
                },
                icon: Icon(
                  Icons.navigate_next_outlined,
                  color: Colors.white,
                  size: 16.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DateAndTimeWidget extends StatelessWidget {
  const DateAndTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 110.h,
          child: Column(
            children: [
              Container(
                height: 42.h,
                color: Colors.black,
              ),
              Container(
                height: 68.h,
              ),
            ],
          ),
        ),
        //
        Positioned(
          bottom: 21.h,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.only(left: 18.w, right: 18.w),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9.sp),
              ),
              child: SizedBox(
                height: 63.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "21 May 2021",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(28, 28, 28, 1),
                          fontSize: 12.sp,
                          wordSpacing: 0.16.sp),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Icon(
                      Icons.alarm,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "10:30 PM - 11:00 AM",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(28, 28, 28, 1),
                          fontSize: 12.sp,
                          wordSpacing: 0.16.sp),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
