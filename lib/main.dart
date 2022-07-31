import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'pages/home.dart';

enum LocalEnum {
  //英文
  en,

  //简体中文
  zh,

  //繁体中文
  zhHant
}

///支持的国际化列表
const appLocals = <LocalEnum, Locale>{
  LocalEnum.en: Locale('en'),
  LocalEnum.zh: Locale('zh'),
  LocalEnum.zhHant: Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant')
};

///当前APP的国际化配置
final local = StateProvider<Locale>((ref) => appLocals[LocalEnum.zhHant]!);

///main函数启动
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'YoloShow',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: appLocals.values.toList(),
      theme: ThemeData(primarySwatch: Colors.purple, useMaterial3: true),
      locale: ref.watch(local),
      home: const HomePage(),
    );
  }
}
