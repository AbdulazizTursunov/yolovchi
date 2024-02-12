import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/utils/size_box_extension_screen_util.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.sms)),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.car_repair_rounded,
            color: Colors.green,
          ),
        ),
        title: Text(
          "Profile Screen",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 100.w),
            height: 122.h,
            width: 122.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70.r),
            ),
            child: CircleAvatar(child: Image.asset("assets/images/fake_images/dr_fake2.png"),
            ),
          ),
15.ph,
          Center(child:Text("Andrew Ainsley",style: Theme.of(context).textTheme.headlineMedium,),),
          10.ph,
          Center(child:Text("+998 94 203 93 77",style: Theme.of(context).textTheme.titleMedium,),),



        ],
      ),
    );
  }
}
