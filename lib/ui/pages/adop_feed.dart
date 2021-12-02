import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petbes/domain/controllers/adopt_controller.dart';
import 'package:petbes/domain/models/adopt_post/adopt_post.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/ui/_components/drawer_component.dart';
import 'package:petbes/ui/_components/network_image.dart';

class AdoptFeedUI extends StatelessWidget {
  static const route = 'adopt_feed';
  AdoptFeedUI({Key? key}) : super(key: key);
  final AdoptController _controller = Get.find();
  final S s = Get.find();
  late final Size sSize;

  @override
  Widget build(BuildContext context) {
    sSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: _appBar(),
        drawer: DrawerComponent(currentRoute: route),
        backgroundColor: Colors.grey.shade100,
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
      AppBar(title: Text(s.adopt), foregroundColor: Colors.white);

  Widget _post(BuildContext context, AdoptPost post) {
    return Card(
      child: ListTile(
        title: Text('${post.petName} - ${post.petAge} ${s.years}'),
        subtitle: Text('${s.city}: ${post.city}',
            style: Theme.of(context).textTheme.caption),
        leading: ClipOval(
            child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 48),
                child: MyNetworkImage(post.imageUrl))),
        trailing: IconButton(
          icon: const Icon(
            Icons.favorite_border,
            color: Colors.red,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
