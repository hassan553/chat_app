import 'package:chat_app/binding.dart';
import 'package:chat_app/features/auth/ui/views/register.dart';
import 'package:chat_app/features/oboarding/ui/views/onboarding_view.dart';
import 'package:chat_app/features/oboarding/ui/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ChatWithMe',
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialBinding: Binding(),
      home: const SplashView(),
    );
  }
}
