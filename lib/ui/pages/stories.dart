import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:petbes/domain/controllers/stories_controller.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/misc/extensions.dart';
import 'package:petbes/ui/_components/drawer_component.dart';

class StoriesUI extends StatelessWidget {
  static const route = 'stories';
  StoriesUI({Key? key}) : super(key: key);

  final S s = Get.find();
  final pagerController = PageController();
  final StoriesController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        drawer: DrawerComponent(currentRoute: route),
        floatingActionButton: _fab(context),
        body: Obx(
          () => PageView.builder(
            controller: pagerController,
            itemCount: controller.entries.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    if (pagerController.page! < controller.entries.length - 1) {
                      pagerController.animateToPage(
                          pagerController.page!.toInt() + 1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOutQuart);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(s.noMoreStories)));
                    }
                  },
                  child: Card(
                      color: Colors.primaries
                          .elementAt(Random().nextInt(Colors.primaries.length))
                          .shade100,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: Text(
                              controller.entries.elementAt(index).content,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                          Positioned(
                              top: 16,
                              child: Text(
                                '${controller.entries.elementAt(index).posterName} - ${controller.entries.elementAt(index).postedAt.lapse}',
                                style: Theme.of(context).textTheme.overline,
                              ))
                        ],
                      )));
            },
          ),
        ));
  }

  AppBar _appBar() =>
      AppBar(title: Text(s.stories), foregroundColor: Colors.white);

  _fab(BuildContext context) {
    return FloatingActionButton(
      onPressed: controller.postStory,
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}
