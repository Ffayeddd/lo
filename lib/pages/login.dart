import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    const Text(
                      "Login",
                      style: TextStyle(fontSize: 33, fontFamily: "myfont"),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    SvgPicture.asset("assets/icons/login.svg"),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(66),
                        color: Colors.purple[100],
                      ),

                      width: 266,
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                          hintStyle: TextStyle(fontSize: 19),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    const SizedBox(height: 17,),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 27),
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(66),
                        color: Colors.purple[100],
                      ),

                      width: 266,
                      child: const TextField(
                        keyboardType: TextInputType.emailAddress,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(fontSize: 19),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility),
                        ),
                      ),
                    ),
                    const SizedBox(height: 17,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.purple[500]),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 90)),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(66))),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 21, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 17,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account? "),
                        
                        GestureDetector(
                          onTap: (){Navigator.pushNamed(context, "/signup");},
                          child: const Text(" Sign Up",style: TextStyle(
                              fontWeight: FontWeight.bold),)),

                      ],
                    ),

                  ],
                ),
              ),
              Positioned(
                left: 0,
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: 111,
                ),
              ),
              Positioned(
                
                right: 0,
                child: Image.asset(
                  "assets/images/login_bottom.png",
                  width: 111,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
