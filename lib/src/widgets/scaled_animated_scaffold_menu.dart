import 'package:flutter/material.dart';

class ScaledAnimatedScaffoldMenu extends StatefulWidget {
  const ScaledAnimatedScaffoldMenu({
    Key key,
    @required this.animationDuration,
    this.header,
    this.content,
    this.footer,
  }) : super(key: key);

  final Duration animationDuration;
  final Widget header;
  final Widget footer;
  final Widget content;

  @override
  ScaledAnimatedScaffoldMenuState createState() =>
      ScaledAnimatedScaffoldMenuState();
}

class ScaledAnimatedScaffoldMenuState
    extends State<ScaledAnimatedScaffoldMenu> {
  bool _isOpened = false;

  void toggle() {
    setState(() {
      _isOpened = !_isOpened;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: 0,
      right: 0,
      bottom: 0,
      left: _isOpened ? 0 : -MediaQuery.of(context).size.width / 4,
      duration: widget.animationDuration,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 12,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SingleChildScrollView(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: widget.header,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(
                    child: SingleChildScrollView(
                      child: widget.content,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 12,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: SingleChildScrollView(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: widget.footer,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
