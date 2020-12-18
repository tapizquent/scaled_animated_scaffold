import 'package:flutter/material.dart';

class ScaledAnimatedScaffoldMenuButton extends StatelessWidget {
  final Widget icon;
  final Widget label;
  final void Function() onPressed;

  const ScaledAnimatedScaffoldMenuButton({
    Key key,
    this.icon,
    @required this.label,
    @required this.onPressed,
  })  : assert(label != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(2),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              if (icon != null) ...[
                icon,
                SizedBox(
                  width: 8,
                )
              ],
              Flexible(
                child: label,
              ),
            ],
          ),
        ),
        onTap: onPressed,
      ),
    );
  }
}
