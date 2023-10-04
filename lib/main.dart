import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nhealth/NotificationDemo.dart';
import 'package:nhealth/Screens/CalenderPage.dart';
import 'package:nhealth/Screens/PeriodTrackerPage.dart';
import 'package:nhealth/Screens/PeriodDetailsPage.dart';
import 'package:nhealth/services/NotificationService.dart';
import 'package:nhealth/viewmodels/Period_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:nhealth/Screens/HomePage.dart';

import 'Components/Palette.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  WidgetsFlutterBinding.ensureInitialized();

  await Future.delayed(const Duration(seconds: 3));
  FlutterNativeSplash.remove();
  runApp(const MyApp());

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  NotificationService.initalize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //Add providers here
      providers: [
        ChangeNotifierProvider(create: (_) => PeriodViewModel()),
      ],
      child: MaterialApp(
        title: 'mHealth',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Pallete.primarySwatch,
          //primarySwatch: Pallete.primarySwatch,
          textTheme: GoogleFonts
              .poppinsTextTheme(), // Customize the font using Google Fonts
          // User this where you want to add poppins>>style: Theme.of(context).textTheme.headline6,
        ),
        //donot change this, rollback before you
        initialRoute: "/HomePage", //change the route here
        routes: {
          "/Calender": (context) => const CalendarPage(),
          "/NotificationPage": (context) => const NotificationDemo(),
          "/TrackPeriodPage": (context) => const PeriodDetails(),
          "/TrackP": (context) => const PeriodTracker(),
          "/HomePage": (context) => const HomePage(),
        }, //Add the page here
      ),
    );
  }
}
