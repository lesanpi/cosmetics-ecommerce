import 'package:cometics_ecommerce/home/bloc/bloc.dart';
import 'package:cometics_ecommerce/home/widgets/home_body.dart';
import 'package:flutter/material.dart';

/// {@template home_page}
/// A description for HomePage
/// {@endtemplate}
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({super.key});

  /// The static route for HomePage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: Image.asset('assets/icons/fi-rr-menu-burger.png'),
              actions: [
                Image.asset('assets/icons/fi-rr-search.png'),
              ],
            ),
          ),
        ),
        body: const HomeView(),
      ),
    );
  }
}

/// {@template home_view}
/// Displays the Body of HomeView
/// {@endtemplate}
class HomeView extends StatelessWidget {
  /// {@macro home_view}
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeBody();
  }
}
