import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petbes/data/image_picker_service.dart';
import 'package:petbes/domain/controllers/feed_controller.dart';
import 'package:petbes/domain/models/post/post.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/ui/_components/drawer_component.dart';
import 'package:petbes/ui/_components/field_dialog_component.dart';
import 'package:petbes/ui/_components/network_image.dart';
import 'package:petbes/ui/_components/spacers_components.dart';

import '../../misc/extensions.dart';

class FeedUI extends StatefulWidget {
  static const route = 'feed';
  const FeedUI({Key? key}) : super(key: key);

  @override
  State<FeedUI> createState() => _FeedUIState();
}

class _FeedUIState extends State<FeedUI> {
  final FeedController _controller = Get.find();

  final S s = Get.find();
  final ImagePickerService _imagePicker = Get.find();

  @override
  void initState() {
    _controller.getInitialData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        drawer: DrawerComponent(currentRoute: FeedUI.route),
        backgroundColor: Colors.grey.shade100,
        floatingActionButton: _fab(context),
        body: SafeArea(
          child: Obx(
            () => ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              itemCount: _controller.entries.length,
              itemBuilder: (context, index) {
                return _post(context, _controller.entries.elementAt(index));
              },
            ),
          ),
        ));
  }

  AppBar _appBar() => AppBar(
        title: Text(s.home),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: _controller.getInitialData,
              icon: const Icon(Icons.refresh))
        ],
      );

  Container _post(BuildContext context, Post post) {
    return Container(
      margin: const EdgeInsets.only(bottom: 4),
      child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(post.posterName),
                    Text(post.postedAt.lapse,
                        style: Theme.of(context).textTheme.overline),
                  ],
                ),
                //
                Spacers.verticalS,
                ConstrainedBox(
                    constraints: const BoxConstraints(minHeight: 300),
                    child: MyNetworkImage(post.imageUrl)),
                // Caption
                Spacers.verticalS,
                if (post.caption != null)
                  Text(
                    post.caption!,
                    style: Theme.of(context).textTheme.caption,
                  ),
                Spacers.verticalS,
                // Actions
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.thumb_up,
                          color: Theme.of(context).primaryColor,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment,
                          color: Theme.of(context).primaryColor,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: Theme.of(context).primaryColor,
                        )),
                  ],
                )
              ],
            ),
          )),
    );
  }

  _fab(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        final file = await _imagePicker.pickImageFromGallery();
        if (file == null) {
          return;
        }
        final caption = await showDialog(
            context: context,
            builder: (context) => FieldDialogComponent(
                  submitLabel: s.post,
                  hintText: s.addDescription,
                ));
        if (caption is String && caption.isNotEmpty) {
          _controller.postPost(caption, File(file.path));
        }
      },
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}
