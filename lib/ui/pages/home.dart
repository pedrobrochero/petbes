import 'package:flutter/material.dart';

import '../../../ui/_components/drawer_component.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({Key? key}) : super(key: key);
  static const route = 'home';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _appBar(context),
        drawer: const DrawerComponent(
          currentRoute: route,
        ),
        floatingActionButton: _fab(context),
        body: _body(context),
      );

  // With bloc
  // @override
  // Widget build(BuildContext context) => BlocProvider(
  //   create: (context) => HomeCubit(),
  //   child: BlocBuilder<HomeCubit, HomeState>(
  //     builder: (context, state) => Scaffold(
  //       appBar: _appBar(context),
  //       drawer: const DrawerComponent(
  //         currentRoute: ROUTE,
  //       ),
  //       floatingActionButton: _fab(context),
  //       body: _body(context),
  // )));

  // ignore: prefer_expression_function_bodies
  Widget _body(BuildContext context) {
    // ignore: no_runtimetype_tostring
    return Center(child: Text('$runtimeType'));
  }

  AppBar _appBar(BuildContext context) => AppBar();

  Widget? _fab(BuildContext context) => FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      );
}
