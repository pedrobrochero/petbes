import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/misc/service_locator.dart';
import 'package:petbes/ui/_components/network_image.dart';
import 'package:petbes/ui/_components/spacers_components.dart';

import '../../misc/extensions.dart';

class FeedUI extends StatelessWidget {
  static const route = 'feed';
  const FeedUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = sl<S>();
    final faker = Faker();
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        floatingActionButton: _fab(context),
        body: SafeArea(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            itemCount: 50,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 4),
                child: Card(
                    elevation: 4,
                    // shape:
                    //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(faker.person.name()),
                              Text(faker.date.dateTime().lapse,
                                  style: Theme.of(context).textTheme.overline),
                            ],
                          ),
                          //
                          Spacers.verticalS,
                          MyNetworkImage('https://picsum.photos/500'),
                          // Caption
                          Spacers.verticalS,
                          Text(
                            faker.lorem.sentences(2).join(' '),
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
            },
          ),
        ));
  }

  _fab(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add, color: Colors.white),
    );
  }
}
