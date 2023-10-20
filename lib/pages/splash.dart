import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simulado2/styles/cores.dart';
import 'package:simulado2/styles/fonts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    Future.wait([Future.delayed(const Duration(seconds: 3))]).then(
      (value) => Navigator.pushNamed(context, '/home'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png', height: 300),
              Text(
                'GoGo Trip',
                style: TextStyle(
                  fontFamily: Fonte.fonte,
                  fontSize: Fonte.fonteSubtitulo,
                  color: Cores.verdeEscuro,
                ),
              ),
              SizedBox(height: height * .1),
              CircularProgressIndicator(
                color: Cores.verdeEscuro,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
