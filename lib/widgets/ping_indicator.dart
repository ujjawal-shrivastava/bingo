import 'package:flutter/material.dart';

class PingIndicator extends StatefulWidget {
  final ValueNotifier<int?> ping;
  const PingIndicator({
    Key? key,
    required this.ping,
  }) : super(key: key);

  @override
  _PingIndicatorState createState() => _PingIndicatorState();
}

class _PingIndicatorState extends State<PingIndicator> {
  @override
  initState() {
    super.initState();
    widget.ping.addListener(() {
      setState(() {});
    });
  }

  Color get pingColor {
    if (widget.ping.value != null) {
      if (widget.ping.value! < 300) {
        return Colors.green;
      } else if (widget.ping.value! < 600) {
        return Colors.orange;
      } else {
        return Colors.red;
      }
    } else {
      return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.ping.value?.toString() ?? 'Disconnected',
      child: AnimatedContainer(
        duration: Duration(
          milliseconds: 300,
        ),
        curve: Curves.ease,
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: pingColor,
        ),
      ),
    );
  }
}
