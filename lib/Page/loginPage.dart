import 'package:flutter/material.dart';
import 'package:social_media/widget/custom_button.dart';
import 'package:social_media/widget/text_field.dart';


class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<Loginpage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  double buttonOpacity = 0.0;

  @override
  void initState(){
    super.initState();
    
  }

  Widget build(BuildContext context) {
    double height  = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(252, 200, 218, 219),
      body: SafeArea(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: height/2.7,
                child: Image.asset('Images/white.png'),
              ),
              TextFieldInput(
                textEditingController: emailController,
                hintText: 'Enter your Email',
                icon: Icons.email,
              ),
              TextFieldInput(
                textEditingController: passwordController,
                hintText: 'Enter your Password',
                icon: Icons.lock,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                  onTab: () {

                },
                text: 'Log In',
              ),
              SizedBox(height: height/27,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tidak punya akun?  ',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    ),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Text('Buat akun',style: TextStyle(fontWeight: FontWeight.bold),),
                    )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}