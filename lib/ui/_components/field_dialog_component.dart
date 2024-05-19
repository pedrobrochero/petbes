import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../ui/_components/spacers_components.dart';

class FieldDialogComponent extends StatefulWidget {
  const FieldDialogComponent({
    this.message,
    this.submitLabel,
    this.hintText,
    Key? key,
  }) : super(key: key);
  final String? message;
  final String? submitLabel;
  final String? hintText;

  @override
  _FieldDialogComponentState createState() => _FieldDialogComponentState();
}

class _FieldDialogComponentState extends State<FieldDialogComponent> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final cancelLabel = S.of(context).commonCancel;
    final submitLabel = widget.submitLabel ?? S.of(context).commonOk;
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.message != null) Text(widget.message!),
          Spacers.verticalM,
          TextField(
            controller: controller,
            autofocus: true,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              hintText: widget.hintText,
            ),
            maxLines: 3,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context, null);
          },
          child: Text(cancelLabel),
        ),
        TextButton(
          onPressed: () {
            final s = controller.text;
            Navigator.pop(context, s);
          },
          child: Text(submitLabel),
        ),
      ],
    );
  }
}
