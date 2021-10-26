import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class MyApp6 extends StatelessWidget {
  const MyApp6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Register(),
    );
  }
}
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  var fkey = GlobalKey<FormState>();
  var txtUserName = TextEditingController();
  var txtEmail = TextEditingController();
  var txtNumberPhone = TextEditingController();
  var txtAddress = TextEditingController();
  var txtPassWord = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign In", style: TextStyle(fontSize: 30, color: Colors.deepOrangeAccent),),
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),

          child:  Form(
            key: fkey,
            child: Column(
              children: [
                Text("REGISTER", style: TextStyle(fontSize: 30, color: Colors.deepOrangeAccent),),
                TextFormField(
                  controller: txtUserName,
                  validator: (value){
                    if (value == null || value.isEmpty)
                      return "Please enter your user name";
                    else
                      return null;
                  },
                  decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "Input user name",
                      labelText: "User Name"
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(

                  controller: txtEmail,
                  validator:(value)=>EmailValidator.validate(value!) ? null: "Please enter a valid email"
                  ,
                  decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: "Input email",
                      labelText: "Email"
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: txtAddress,
                  decoration: InputDecoration(
                      icon: Icon(Icons.place),
                      hintText: "Input place",
                      labelText: "Address"
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: txtNumberPhone,
                  validator: (value) {
                    if (value!.length != 10)
                      return 'Mobile Number must be of 10 digit';
                    else
                      return null;
                  },
                  decoration: InputDecoration(
                      icon: Icon(Icons.phone),
                      hintText: "Input number phone",
                      labelText: "Number Phone"
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: txtPassWord,
                  obscureText: true,
                  validator: (value){
                    if(value == null || value.isEmpty)
                      return "Password cannot empty";
                    else if(value.length < 6)
                      return "Length minimu of password is 6";
                    else
                      return null;
                  },
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: "Input password",
                      labelText: "Password"
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  if (fkey.currentState!.validate()) {
                    print("oke");
                    var userName = txtUserName.text;
                    var email = txtEmail.text;
                    var address = txtAddress.text;
                    var phone = txtNumberPhone.text;
                    var password = txtPassWord.text;
                    var alert = AlertDialog(
                      content: Text("${userName} + ${email}  + ${address} + ${phone} + ${password} "),
                    );
                    showDialog(context: context, builder: (context){
                      return alert;
                    });
                  }
                  else
                    print("NOT oke");
                }, child: Text("REGISTER")),
                ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Back'))
              ],
            ),
          ),
        ),
      )
    );
  }
}



