import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ram_kumar_flutter_task/controller/authentication.dart';
import 'package:ram_kumar_flutter_task/view/home_page.dart';

class second_page extends StatefulWidget {
  const second_page({super.key});

  @override
  State<second_page> createState() => _second_pageState();
}

class _second_pageState extends State<second_page> {

  AuthCon auth = Get.put(AuthCon()); // Instance of AuthCon class and makes it accessible for managing states and dependencies.

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black45,
          title: Text("Second Page"), // Second page title showing in appbar.
        ),
        body: Form(
          key: auth.formkey,
          child: Center(
            child:Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/logooo.png",height:200,width: 400),
                    SizedBox(height: 20,),
                    Center(child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: auth.first_name,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Please enter the First Name";
                        }
                        if (!RegExp(r'^[a-zA-Z]').hasMatch(value)) {
                          return 'Please enter capital and small alphabetic characters';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 12.0,top: 10.0,right:12.0,bottom: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(width: 10.0,color: Colors.black),
                        ),
                        labelText: 'First Name',
                        labelStyle: TextStyle(color: Colors.grey),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),

                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: auth.last_name,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Please enter the Last Name";
                        }
                        if (!RegExp(r'^[a-zA-Z]').hasMatch(value)) {
                          return 'Please enter capital and small alphabetic characters';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 12.0,top: 10.0,right:12.0,bottom: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(width: 10.0,color: Colors.black),
                        ),
                        labelText: 'Last Name',
                        labelStyle: TextStyle(color: Colors.grey),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),

                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: auth.email_id,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Please enter the Email ID";
                        }
                        if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9]+\.[a-zA-Z]').hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 12.0,top: 10.0,right:12.0,bottom: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(width: 10.0,color: Colors.black),
                        ),
                        labelText: 'Email ID',
                        labelStyle: TextStyle(color: Colors.grey),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Center(child: ElevatedButton(
                        onPressed: (){
                          if(auth.formkey.currentState!.validate()) {
                           Get.to(home_page());
                          }
                        }, child: Text("Submit"),style: ElevatedButton.styleFrom(backgroundColor: Colors.black12,foregroundColor: Colors.black),)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
