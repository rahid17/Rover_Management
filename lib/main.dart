import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

// void main() {
//   runApp(
//     SafeArea(
//       child: GetMaterialApp(
//         debugShowCheckedModeBanner: false, 
//         title: "Rover Management",
//         initialRoute: AppPages.INITIAL,
//         getPages: AppPages.routes,
//       ),
//     ),
//   );
// }

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false, 
          title: "Rover Management",
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            useMaterial3: true,
            appBarTheme: AppBarTheme(backgroundColor: Colors.green)
          ),
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
    
      ),
    );
  }
}
