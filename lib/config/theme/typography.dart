import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography extends ThemeExtension<AppTypography> {
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;
  final TextStyle subtitle;
  final TextStyle largeText;
  final TextStyle mediumText;
  final TextStyle smallText;
  final TextStyle caption;
  final TextStyle smallLink;
  final TextStyle mediumLink;
  final TextStyle largeLink;

  const AppTypography({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.subtitle,
    required this.largeText,
    required this.mediumText,
    required this.smallText,
    required this.caption,
    required this.smallLink,
    required this.mediumLink,
    required this.largeLink,
  });

  static AppTypography base(Color defaultTextColor) => AppTypography(
    h1: GoogleFonts.poppins(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      height: 1.5,
      color: defaultTextColor,
    ),
    h2: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      height: 1.5,
      color: defaultTextColor,
    ),
    h3: GoogleFonts.poppins(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      height: 1.5,
      color: defaultTextColor,
    ),
    h4: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      height: 1.5,
      color: defaultTextColor,
    ),
    subtitle: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      height: 1.5,
      color: defaultTextColor,
    ),
    largeText: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: defaultTextColor,
    ),
    mediumText: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: defaultTextColor,
    ),
    smallText: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: defaultTextColor,
    ),
    caption: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: defaultTextColor,
    ),
    smallLink: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      height: 1.5,
      decoration: TextDecoration.underline,
      color: defaultTextColor,
    ),
    mediumLink: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.5,
      decoration: TextDecoration.underline,
      color: defaultTextColor,
    ),
    largeLink: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.5,
      decoration: TextDecoration.underline,
      color: defaultTextColor,
    ),
  );

  static TextTheme textTheme(Brightness brightness) {
    final baseTheme = ThemeData(brightness: brightness);
    return GoogleFonts.poppinsTextTheme(baseTheme.textTheme);
  }

  @override
  ThemeExtension<AppTypography> copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? subtitle,
    TextStyle? largeText,
    TextStyle? mediumText,
    TextStyle? smallText,
    TextStyle? caption,
    TextStyle? smallLink,
    TextStyle? mediumLink,
    TextStyle? largeLink,
  }) {
    return AppTypography(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      h4: h4 ?? this.h4,
      subtitle: subtitle ?? this.subtitle,
      largeText: largeText ?? this.largeText,
      mediumText: mediumText ?? this.mediumText,
      smallText: smallText ?? this.smallText,
      caption: caption ?? this.caption,
      smallLink: smallLink ?? this.smallLink,
      mediumLink: mediumLink ?? this.mediumLink,
      largeLink: largeLink ?? this.largeLink,
    );
  }

  @override
  ThemeExtension<AppTypography> lerp(
    covariant ThemeExtension<AppTypography>? other,
    double t,
  ) {
    if (other is! AppTypography) return this;

    return AppTypography(
      h1: TextStyle.lerp(h1, other.h1, t)!,
      h2: TextStyle.lerp(h2, other.h2, t)!,
      h3: TextStyle.lerp(h3, other.h3, t)!,
      h4: TextStyle.lerp(h4, other.h4, t)!,
      subtitle: TextStyle.lerp(subtitle, other.subtitle, t)!,
      largeText: TextStyle.lerp(largeText, other.largeText, t)!,
      mediumText: TextStyle.lerp(mediumText, other.mediumText, t)!,
      smallText: TextStyle.lerp(smallText, other.smallText, t)!,
      caption: TextStyle.lerp(caption, other.caption, t)!,
      smallLink: TextStyle.lerp(smallLink, other.smallLink, t)!,
      mediumLink: TextStyle.lerp(mediumLink, other.mediumLink, t)!,
      largeLink: TextStyle.lerp(largeLink, other.largeLink, t)!,
    );
  }
}
