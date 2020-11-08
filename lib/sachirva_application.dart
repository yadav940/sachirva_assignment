
import 'package:fluro/fluro.dart' as t;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sachirva_assignment/routes/sachirva_routes.dart';
import 'package:sachirva_assignment/util/color/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'provider/singin_provider.dart';

//import 'language/app_translations_delegate.dart';


class SachirvaApp extends StatefulWidget {
  @override
  _TagrankAppState createState() => _TagrankAppState();
}

class _TagrankAppState extends State<SachirvaApp> {


  /// application translate object
  //AppTranslationsDelegate newLocaleDelegate;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //var appDir = (await getTemporaryDirectory()).path + '/<com.modista.tagrank>';
    //new Directory(appDir).delete(recursive: true);
    final tagrunkRoutes=t.Router();
    SachirvaRoutes.router=tagrunkRoutes;
    SachirvaRoutes.configureRoutes(tagrunkRoutes);
    //TagrankRoutes.home(tagrunkRoutes);

   /* newLocaleDelegate = AppTranslationsDelegate(
      // ignore: prefer_if_null_operators
        newLocale: Locale(TagRankPreferences()
            .getSharePreference()
            .getString('language_code') ==
            null
            ? 'en'
            : TagRankPreferences()
            .getSharePreference()
            .getString('language_code')));*/

  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SignInProvider()),
        /*ChangeNotifierProvider(create: (_) => HomeProvider(HomeService())),
        ChangeNotifierProvider(create: (_) => SearchFilterProvider(SearchService())),*/
      ],
      child: MaterialApp(
        //initialRoute: ,
        onGenerateRoute: SachirvaRoutes.router.generator,
        debugShowCheckedModeBanner: false,
        theme:ThemeData(
            primaryColor: white,
            backgroundColor: Colors.white,
            buttonColor: secondaryColor,
            accentColor: dividerColor,
            primarySwatch: secondaryPrimarySwatchColor,
            unselectedWidgetColor: diabledButtontextColor,
            primaryIconTheme: IconThemeData(
              color: Colors.black,
            ),
            errorColor: red,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            accentIconTheme: IconThemeData(
              color: Colors.white, // FAB icon color
            )),
        /*localizationsDelegates: [
          //newLocaleDelegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],*/
        //home: LoginPage(),
        supportedLocales: const [
          Locale('ar', 'AR'), // Arabic
          Locale('en', 'US'),
        ],
        /*locale: Locale(TagRankPreferences()
            .getSharePreference()
            .getString('language_code') ==
            null
            ? 'en'
            : TagRankPreferences()
            .getSharePreference()
            .getString('language_code')),*/
      ),
    );
  }

  void onLocaleChange(Locale locale) {
    setState(() {
      //newLocaleDelegate = AppTranslationsDelegate(newLocale: locale);
    });
  }
}

