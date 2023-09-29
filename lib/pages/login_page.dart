import 'package:flutter/material.dart';
import 'package:mynotes/components/text_field.dart';
import 'package:mynotes/config/app_strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      // floatingActionButton: FloatingActionButton(onPressed: () {}),
      // // backgroundColor: Colors.pink[100],
      // drawer: Container(
      //   width: 400,
      //   height: 500,
      //   color: Colors.amber[300],
      // ),
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                // const SizedBox(
                //   height: 166,
                // ),
                const Spacer(),
                const Text(
                  AppStrings.hello,
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 145, 11),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  AppStrings.loginToContinue,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                // const SizedBox(
                //   height: 120,
                // ),
                const Spacer(),
                const AppTextField(hint: AppStrings.username),
                const SizedBox(
                  height: 9,
                ),
                const AppTextField(hint: AppStrings.password),
                const SizedBox(
                  height: 9,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        print('clicked');
                      },
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.white),
                      child: const Text(AppStrings.forgotPassword)),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  // width: 240,
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context)
                        //     .push(MaterialPageRoute(builder: (context) {
                        //   return const HomePage();
                        // }));
                        // Navigator.of(context).pushNamed('/home');
                        Navigator.of(context).pushReplacementNamed('/main');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 3, 145, 11),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        AppStrings.signUp,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                ),
                // const SizedBox(
                //   height: 60,
                // ),
                const Spacer(),
                const Text(
                  AppStrings.orSignInWith,
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 36,
                  child: ElevatedButton(
                      onPressed: () {
                        print('login with google');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/google.png',
                            width: 24,
                            height: 24,
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          const Text(AppStrings.loginWithGoogle),
                        ],
                      )),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 36,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/facebook.png',
                            width: 24,
                            height: 24,
                          ),
                          const SizedBox(width: 18),
                          const Text(AppStrings.loginWithFacebook)
                        ],
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      AppStrings.noAccount,
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {},
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.red),
                        child: const Text(
                          AppStrings.signUp,
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
