import 'headers.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.splash: (context) => const SplashScreen(),
        Routes.home: (context) => const HomePage(),
        Routes.detail: (context) => const DetailPage(),
        Routes.cart: (context) => const CartPage(),
        Routes.category: (context) => const CategoryPage(),
        Routes.search: (context) => const SearchPage(),
        Routes.profile: (context) => const ProfilePage(),
      },
    );
  }
}
