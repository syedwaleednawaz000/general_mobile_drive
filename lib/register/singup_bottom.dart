import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  bool loading = false;
  Future<void> singUp() async {
    setState(() {
      loading = true;
    });
    final url = Uri.parse('https://gentle-fortress-77748.herokuapp.com/api/register');
    final headers = {'Content-Type': 'application/json'};
    final data = {
      "id": 113,
      "login": "testsflutterUser1",
      "firstName": "string",
      "lastName": "string",
      "email": "testsflutterUser1@gmail.com",
      "imageUrl": "https://i.pravatar.cc/150?img=58",
      "activated": true,
      "langKey": "string",
      "createdBy": "string",
      "createdDate": "2023-03-08T09:55:53.046Z",
      "lastModifiedBy": "string",
      "lastModifiedDate": "2023-03-08T09:55:53.046Z",
      "authorities": [
        "user"
      ],
      "password": "123456AZERTY",
      "phoneNumber": "+33768545456",
      "nni": "123446788979",
      "dateOfBirth": "2000-03-08T09:55:53.046Z",
      "address": "string"
    };

    final response = await http.post(url, headers: headers, body: jsonEncode(data));
    try{
      if (response.statusCode == 200) {
        print('Data successfully posted');
        loading = false;
        setState(() {

        });
        Get.back();
      } else {
        print('Error posting data: ${response.reasonPhrase}');
        loading = false;
        setState(() {

        });
        Get.back();
      }
    }catch(error){
      loading = false;
      setState(() {
      });
      print("this is cathcmethid error ");
      Get.back();
    }

  }

  int selectedRadio = 0;
  TextEditingController FNcontroller = TextEditingController();
  TextEditingController LNcontroller = TextEditingController();
  TextEditingController Emailcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
              ListTile(
                leading: IconButton(
                    onPressed: (){Get.back();},
                    icon: Icon(Icons.arrow_back_ios,color: Colors.purpleAccent,)),
                title: Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: Text('Sign up with email',
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
              SizedBox(height: 10,),
              //First name & Last name
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  controller: FNcontroller,
                  decoration: InputDecoration(
                    enabled: true,disabledBorder: InputBorder.none,
                    filled: true,fillColor: Colors.white,
                    hintText: 'First name',
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  controller: LNcontroller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,fillColor: Colors.white,
                    hintText: 'Last name',
                  ),
                ),
              ),

              SizedBox(height: 40,),
              // Email & Password
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  controller: Emailcontroller,
                  decoration: InputDecoration(
                    enabled: true,disabledBorder: InputBorder.none,
                    filled: true,fillColor: Colors.white,
                    hintText: 'Email Address',
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  controller: Passwordcontroller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,fillColor: Colors.white,
                    hintText: 'Password',
                  ),
                ),
              ),

              SizedBox(height: 40,),
              //I agree to the privecy policy
              ListTile(
                  leading:  Radio(
                    value: 2,
                    groupValue: selectedRadio,
                    onChanged: (_value) {
                      setState(() {
                        selectedRadio = _value!;
                      });
                    },
                  ),
                  title: Text('I agree to the Privacy Policy',
                    style: TextStyle(color: Colors.black,fontSize: 12),),
                  trailing: Container(
                    height: 20.h,
                    width: 22.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                      border: Border.all(color: Colors.purpleAccent,width: 2),
                    ),
                    child: Center(child: Text('i',style: TextStyle(color: Colors.purpleAccent,fontSize: 18),)),
                  )
              ),
              ListTile(
                leading:  Radio(
                  value: 1,
                  groupValue: selectedRadio,
                  onChanged: (_value) {
                    setState(() {
                      selectedRadio = _value!;
                    });
                  },
                ),
                title: Text('I would like to receive the Getaround newslatter and special offers',
                  style: TextStyle(color: Colors.black,fontSize: 12),),
              ),

              SizedBox(height: 40.h,),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text:'By signing up, you agree to our',
                      style: TextStyle(color: Colors.black,fontSize: 12),),
                    TextSpan(
                      text: 'Terms of service',
                      style: TextStyle(color: Colors.purpleAccent,fontSize: 12),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10.h,),
              // Sign_up button
              GestureDetector(
                onTap: (){
                  singUp();

                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 40.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: loading ?  CircularProgressIndicator(): Text('Sign up',style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                ),
              ),

              SizedBox(height: 40.h,),
              Text('Already have a Getaround Account?',style: TextStyle(fontSize: 15,color: Colors.black),),
              SizedBox(height: 10.h,),
              Text('Log in',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500, color: Colors.purpleAccent),)

            ]
        ),
      ),
    );
  }
}