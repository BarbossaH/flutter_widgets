import 'package:flutter/material.dart';

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
                  'Hello Welcome Back',
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
                  'Login to continue',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                // const SizedBox(
                //   height: 120,
                // ),
                const Spacer(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Username',
                    // border: InputBorder.none,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    // border: InputBorder.none,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        print('clicked');
                      },
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.white),
                      child: const Text('Forgot password')),
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
                        Navigator.of(context).pushReplacementNamed('/home');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 3, 145, 11),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                ),
                // const SizedBox(
                //   height: 60,
                // ),
                const Spacer(),
                const Text(
                  'Or sign in with',
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
                          const Text('Login with Google'),
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
                          const Text('Login with Facebook')
                        ],
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Don't have an account",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {},
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.red),
                        child: const Text(
                          'Sign Up',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        )),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Username',
                    // border: InputBorder.none,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
