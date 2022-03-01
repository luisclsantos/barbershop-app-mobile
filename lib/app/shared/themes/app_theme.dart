import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//?Custom App Theme (optional)
class CustomAppTheme {
  final signupPurpleGradient = const LinearGradient(colors: [
    Color.fromRGBO(145, 131, 222, 1),
    Color.fromRGBO(160, 148, 227, 1),
  ]);
  final signupDarkPurple = const Color.fromRGBO(82, 67, 154, 1);

  final loginPurpleGradient = const LinearGradient(colors: [
    Color.fromRGBO(229, 178, 202, 1),
    Color.fromRGBO(205, 130, 222, 1),
  ]);

  final loginDarkPurple = const Color.fromRGBO(120, 37, 139, 1);
}

//?Main App Theme
ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textSelectionTheme: textSelectionThemeData(),
  );
}

//?Text Selection ThemeData
TextSelectionThemeData textSelectionThemeData() {
  return const TextSelectionThemeData(
    cursorColor: kPrimaryColor,
  );
}

//?Text Theme
TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

//?AppBar Theme
AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    systemOverlayStyle: SystemUiOverlayStyle.light,
    toolbarTextStyle: TextStyle(
      color: Color(0xFF8B8B8B),
      fontSize: 18,
    ),
    titleTextStyle: TextStyle(
      color: Color(0xFF8B8B8B),
      fontSize: 18,
    ),
  );
}

//?Text Fields Input Deconration Theme
InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kTextColor),
    gapPadding: 10,
  );

  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 42,
      vertical: 20,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

//?Text Style of Page's Heading
final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

//?Text Style of Page's Heading
final shopStatusStyle = TextStyle(
  fontSize: getProportionateScreenWidth(14),
  height: 1.5,
);

//?Text Style of Page's Heading
final hourTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(14),
  height: 1.5,
);

//?Text Style of Page's Heading
final hourSelectedTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(14),
  height: 1.5,
  color: Colors.white,
);

final trackTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(14),
  height: 1.5,
);

final trackSelectedTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(14),
  height: 1.5,
  color: Colors.white,
);

//?Text Style of Page's Heading
final tileTitleTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(14),
  height: 1.5,
  fontWeight: FontWeight.w700,
);

//?Text Style of Page's Heading
final tileScheduleTitleTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(18),
  height: 1.5,
  color: Colors.black,
  fontWeight: FontWeight.w600,
);

//?Text Style of Page's Heading
final tileScheduleInfosTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(16),
  color: Colors.black54,
);

//?Text Style of Page's Heading
final tileSubitleTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(12),
  height: 1.5,
);

//?OTP Text Fields Input Decoration Theme
final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

//?OTP Outiline Input Border of Text Fields Theme
OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor),
  );
}

final textButtonStyle = ButtonStyle(
  foregroundColor:
      MaterialStateProperty.resolveWith((states) => Colors.black54),
  overlayColor: MaterialStateProperty.resolveWith(
    (states) => kPrimaryColor.withOpacity(0.1),
  ),
  backgroundColor:
      MaterialStateProperty.resolveWith((states) => kButtonBackgroundColor),
  padding: MaterialStateProperty.resolveWith(
    (states) => const EdgeInsets.all(20),
  ),
  shape: MaterialStateProperty.resolveWith(
    (states) => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
);

final textButtonStyleProfilePicSelect = ButtonStyle(
  foregroundColor:
      MaterialStateProperty.resolveWith((states) => Colors.black54),
  overlayColor: MaterialStateProperty.resolveWith(
    (states) => kPrimaryColor.withOpacity(0.1),
  ),
  backgroundColor:
      MaterialStateProperty.resolveWith((states) => kButtonBackgroundColor),
  shape: MaterialStateProperty.resolveWith(
    (states) => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
      side: const BorderSide(color: Colors.white),
    ),
  ),
);
