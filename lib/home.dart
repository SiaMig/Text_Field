import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {

TextEditingController emailController = TextEditingController();
// A TextEditingController can also be used to provide an initial value 
//for a text field. 
TextEditingController passController = TextEditingController();
String email="";
String pass="";

@override
Widget build(BuildContext context) {
return Scaffold(
/*appBar: AppBar(
title: const Text('TextField'),),*/

body:  Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
 TextField(
  // controllers are used to store text value which user 
  // has entered as a part of input
controller: emailController,
decoration: const InputDecoration(
hintText: "Email", 
labelText: "Email",
prefixIcon: Icon(Icons.email), 

// An icon that appears before the [prefix] or
// [prefixText] and before the editable part of 
////the text field, within the decoration's container

border: OutlineInputBorder(), 

//  Creates a rounded rectangle outline border for an 
// [InputDecorator].
),

keyboardType: TextInputType.emailAddress,),

TextField( 
controller: passController,
decoration:const InputDecoration(
hintText: "Enter password", 
labelText: "Password",
prefixIcon: Icon(Icons.security),

labelStyle: TextStyle(
fontStyle: FontStyle.normal,
fontSize: 20,
color: Colors.black,),
border: OutlineInputBorder(),     ),
keyboardType: TextInputType.visiblePassword,
obscureText: true,),

Text("Your email is $email and your password is $pass"),
TextButton(onPressed: (){
  setState(() {
email= emailController.text;
pass = passController.text; 
});
}, child: const Text("Enter")),
// creates a text buttons
], ) ,);
      }}





/*MaterialButton(onPressed: () {
SnackBar snackBar = const SnackBar(content: Text("Welcome to the app"));
ScaffoldMessenger.of(context).showSnackBar(snackBar);
}, 
    color: Colors.blue,
    child: const Text("Enter"),), */