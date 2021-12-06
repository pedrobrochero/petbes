import 'package:flutter/material.dart';

class MyNetworkImage extends StatelessWidget {
  const MyNetworkImage(
    this.url, {
    this.fit,
    Key? key,
  }) : super(key: key);
  final String? url;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image.network(url ?? '',
        errorBuilder: (context, error, stackTrace) => Center(
              child: ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxWidth: 96, maxHeight: 96),
                  child: const Icon(Icons.broken_image, color: Colors.grey)),
            ),
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Center(
              child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null ||
                    loadingProgress.cumulativeBytesLoaded == 0
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ));
        },
        fit: fit ?? BoxFit.cover);
  }
}
