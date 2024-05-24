import 'package:flutter/material.dart';
import 'package:music/record.dart';
import 'package:music/infinite_animation.dart';

class RotatingDisk extends StatefulWidget {
  final bool isPlaying;
  final Record? record;

  const RotatingDisk(
      {super.key, required this.isPlaying, required this.record});

  @override
  _RotatingDiskState createState() => _RotatingDiskState();
}

// a disk is the record on the turntable
class _RotatingDiskState extends State<RotatingDisk> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // remove the record from the disk
          setState(() {});
        },
        child: (widget.isPlaying)
            ? InfiniteAnimation(
                durationInSeconds: 20, // this is the default value
                child: Container(
                  child: widget.record,
                ),
              )
            : Container(
                child: widget.record,
              ));
  }
}
