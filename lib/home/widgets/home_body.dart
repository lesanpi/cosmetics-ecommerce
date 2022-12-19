import 'package:cometics_ecommerce/home/bloc/bloc.dart';
import 'package:cometics_ecommerce/models/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

/// {@template home_body}
/// Body of the HomePage.
///
/// Add what it does
/// {@endtemplate}
class HomeBody extends StatelessWidget {
  /// {@macro home_body}
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                color: Colors.indigo,
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'New in',
                    style: GoogleFonts.dmSansTextTheme().headline1?.copyWith(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                  ),
                  const Spacer(),
                  Text(
                    'View all',
                    style: GoogleFonts.dmSansTextTheme().headline1?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 2 / 2.8,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  final product = productsExample[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),

                              // color: Colors.red,
                              image: DecorationImage(
                                image: AssetImage(product.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        product.title,
                        style:
                            GoogleFonts.dmSansTextTheme().headline1?.copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black,
                                ),
                      ),
                      Text(
                        NumberFormat.simpleCurrency().format(product.price),
                        style:
                            GoogleFonts.dmSansTextTheme().bodySmall?.copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w100,
                                  color: Colors.black38,
                                ),
                      ),
                    ],
                  );
                },
                itemCount: productsExample.length,
              ),
            ],
          ),
        );
      },
    );
  }
}
