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
      message: "Latency/Ping",
      child: Opacity(
        opacity: 0.8,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(5)),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Row(
            children: [
              AnimatedContainer(
                duration: Duration(
                  milliseconds: 300,
                ),
                curve: Curves.ease,
                height: 15,
                width: 15,
                margin: EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: pingColor,
                ),
              ),
              Text(
                "${widget.ping.value?.toString() ?? '-'} ms",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
