import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_integration/features/app/splash_screen/splash_screen.dart';
import 'package:flutter_integration/features/user_auth/presentation/pages/login_page.dart';
import 'package:flutter_integration/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:flutter_integration/provider/cart_provider.dart';
import 'package:flutter_integration/provider/favorite_provider.dart';
import 'package:flutter_integration/provider/product_provider.dart';
import 'package:flutter_integration/screens/base.dart';
import 'package:provider/provider.dart';
import 'common/route_generator.dart';
import 'common/routes.dart';
import 'common/theme.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyC9C84wbvkyn9VjukNJiRQcBdjy8dl3VPI",
        appId: "1:297497611789:android:e37a90dbac3f8368b10f44",
        messagingSenderId: "297497611789",
        projectId: "flutter-integration-63548",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(
    MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ProductProvider()),
      ChangeNotifierProvider(create: (_) => CartProvider()),
      ChangeNotifierProvider(create: (_) => FavoriteProvider()),
    ],
    child: MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      theme: Themes.light,
      themeMode: ThemeMode.light,
      initialRoute: Routes.base,
      onGenerateRoute: RouteGenerator.generateRoute,
      routes: {
        '/': (context) => SplashScreen(
          // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
          child: LoginPage(),
        ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => Base(),
      },
    );
  }
}

