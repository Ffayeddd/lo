import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

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
                      "Signup",
                      style: TextStyle(fontSize: 33, fontFamily: "myfont"),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    SvgPicture.asset(
                      "assets/icons/signup.svg",
                      height: 222,
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 9),
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
                    const SizedBox(
                      height: 17,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 27),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 9),
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
                    const SizedBox(
                      height: 17,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[500]),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 90)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66))),
                      ),
                      child: const Text(
                        "Signup",
                        style: TextStyle(fontSize: 21, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account? "),
                        GestureDetector(
                            onTap: (){Navigator.pushNamed(context, "/login");},
                            child: const Text(" Login",style: TextStyle(
                                fontWeight: FontWeight.bold),)),

                      ],
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    SizedBox(
                      width: 299,
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 1,
                            color: Colors.purple[900],
                          )),
                          Text(
                            "OR",
                            style: TextStyle(
                              color: Colors.purple[900],
                            ),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 1,
                            color: Colors.purple[900],
                          )),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin:const EdgeInsets.symmetric(vertical:27),
                        child: Center(
                          child: Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children:[
                            Container(
                          padding: const EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color:Colors.purple,width:1)
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/facebook.svg",
                            color: Colors.purple[400],
                            height: 44,
                          ),
                                              ),
                                              const SizedBox(width: 22,),
                                              Container(
                          padding: const EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color:Colors.purple,width:1)
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/icons8-instagram.svg",
                            color: Colors.purple[400],
                            height: 44,
                          ),
                                              ),
                                              const SizedBox(width: 22,),
                                              Container(
                          padding: const EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color:Colors.purple,width:1)
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/twitter.svg",
                            color: Colors.purple[400],
                            height: 44,
                          ),
                                              ),
                          ],
                                          ),
                        ),
                                    ),
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
