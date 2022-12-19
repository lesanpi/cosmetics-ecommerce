// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:cometics_ecommerce/home/bloc/bloc.dart';

void main() {
  group('HomeEvent', () { 
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          CustomHomeEvent(),
          equals(const CustomHomeEvent()),
        );
      });
    });
  });
}
