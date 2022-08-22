import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.latoTextTheme(),
        colorScheme: const ColorScheme.light(
          primary: Color(0xff5AC2EE),
          primaryVariant: Color(0xff0492bb),
          onPrimary: Colors.black,
          secondary: Color(0xffffa726),
          secondaryVariant: Color(0xffc77800),
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          surface: Color(0xffeceff1),
          onSurface: Colors.black,
          brightness: Brightness.light,
          background: Colors.white,
          onBackground: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).colorScheme.primary,
              elevation: 0.0,
              shadowColor: const Color(0x7040BFFF),
            )
        ),
        snackBarTheme: SnackBarThemeData(
          contentTextStyle:
          Theme.of(context).snackBarTheme.contentTextStyle?.copyWith(
            fontFamily: GoogleFonts.cabin().fontFamily,
          ),
        ),
        chipTheme: ChipThemeData.fromDefaults(
          brightness: Brightness.light,
          secondaryColor: const Color(0xff5AC2EE),
          labelStyle: GoogleFonts.lato(),
        ),
      ),

    );
  }
}
