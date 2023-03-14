import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  TextEditingController FNcontroller = TextEditingController();
  TextEditingController LNcontroller = TextEditingController();
  TextEditingController Emailcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();

  int selectedRadio = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 140.w),
                  child: Text('Log in',
                    style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700),),
                ),
                trailing: GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: Text('Cancel',
                    style: TextStyle(color: Colors.purpleAccent,fontSize: 18,fontWeight: FontWeight.w500),),
                ),
              ),
              SizedBox(height: 20,),


              //Continue with Apple, Google, Facebook
              Container(
                  height: 50.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: ListTile(
                    leading: Icon(Icons.apple,color: Colors.white,),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Continue with Apple',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                    ),
                  ))
              ),
              SizedBox(height: 10,),
              Container(
                  height: 50.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: ListTile(
                    leading: Image.asset('assets/images/google.png',scale: 20,),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Continue with Google',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
                    ),
                  ))
              ),
              SizedBox(height: 10,),
              Container(
                  height: 50.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: ListTile(
                    leading: Icon(Icons.facebook,color: Colors.white,),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Continue with Facebook',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                    ),
                  ))
              ),

              SizedBox(height: 20,),
              Text('or',style: TextStyle(color: Colors.black,fontSize: 20 ),),


              SizedBox(height: 20,),
              // Email & Password
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  controller: Emailcontroller,
                  decoration: InputDecoration(
                    enabled: true,disabledBorder: InputBorder.none,
                    filled: true,fillColor: Colors.white,
                    hintText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  controller: Passwordcontroller,
                  decoration: InputDecoration(
                    // border: InputBorder.none,
                    filled: true,fillColor: Colors.white,
                    hintText: 'Password',
                  ),
                ),
              ),


              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text('Forgot Password?',style: TextStyle(fontSize: 15,color: Colors.black),),
              ),

              SizedBox(height: 30.h,),
              // Sign_up button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 40.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('Log in',style: TextStyle(fontSize: 20),)),
                ),
              ),

              SizedBox(height: 60.h,),
              Text("Don't have a Getaround Account?",style: TextStyle(fontSize: 15,color: Colors.black),),
              SizedBox(height: 10.h,),
              Text('Sign up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500, color: Colors.purpleAccent),)

            ]
        ),
      ),
    );
  }
}