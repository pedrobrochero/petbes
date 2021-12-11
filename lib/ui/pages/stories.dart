import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:petbes/domain/controllers/stories_controller.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/misc/extensions.dart';
import 'package:petbes/ui/_components/drawer_component.dart';
import 'package:petbes/ui/_components/field_dialog_component.dart';

class StoriesUI extends StatefulWidget {
  const StoriesUI({Key? key}) : super(key: key);
  static const route = 'stories';

  @override
  State<StoriesUI> createState() => _StoriesUIState();
}

class _StoriesUIState extends State<StoriesUI> {
  final S s = Get.find();

  final pagerController = PageController();

  final StoriesController controller = Get.find();

  @override
  void initState() {
    controller.getInitialData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        drawer: DrawerComponent(currentRoute: StoriesUI.route),
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
                      color: controller.entries.elementAt(index).color,
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
                                '@${controller.entries.elementAt(index).posterName} - ${controller.entries.elementAt(index).postedAt.lapse}',
                                style: Theme.of(context).textTheme.overline,
                              ))
                        ],
                      )));
            },
          ),
        ));
  }

  AppBar _appBar() => AppBar(
        title: Text(s.stories),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: controller.getInitialData, icon: Icon(Icons.refresh))
        ],
      );

  _fab(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        final result = await showDialog(
            context: context,
            builder: (context) => FieldDialogComponent(
                  submitLabel: s.postStory,
                  hintText: s.postStoryHint,
                ));
        if (result is String && result.isNotEmpty) {
          controller.postStory(result);
        }
      },
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}
