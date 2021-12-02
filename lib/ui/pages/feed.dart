import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petbes/domain/controllers/feed_controller.dart';
import 'package:petbes/domain/models/post/post.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/ui/_components/drawer_component.dart';
import 'package:petbes/ui/_components/network_image.dart';
import 'package:petbes/ui/_components/spacers_components.dart';

import '../../misc/extensions.dart';

class FeedUI extends StatelessWidget {
  static const route = 'feed';
  FeedUI({Key? key}) : super(key: key);
  final FeedController _controller = Get.find();
  final S s = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        drawer: DrawerComponent(currentRoute: route),
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

  AppBar _appBar() =>
      AppBar(title: Text(s.home), foregroundColor: Colors.white);

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
      onPressed: _controller.postPost,
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}
