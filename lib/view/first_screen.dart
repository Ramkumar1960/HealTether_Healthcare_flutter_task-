import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ram_kumar_flutter_task/view/second_page.dart';

class first_screen extends StatefulWidget {
  const first_screen({super.key});

  @override
  State<first_screen> createState() => _first_screenState();
}

class _first_screenState extends State<first_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black12,
          title: Text("First Screen"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo1.png",height:200,width: 400),
              SizedBox(height: 40,),
              Center(child: Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
              SizedBox(height: 0,),
              ElevatedButton(
                onPressed: (){Get.to(second_page());},
                child: Text("click"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey,foregroundColor: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
