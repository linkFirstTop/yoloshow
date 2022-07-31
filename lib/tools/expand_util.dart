
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension BuildContextExt on BuildContext {

  ///国际化
  AppLocalizations get l10n => AppLocalizations.of(this);

  ///页面大小
  Size get screenSize => MediaQuery.of(this).size;
}