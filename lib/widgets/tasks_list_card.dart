import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TasksListCard extends StatefulWidget {
  final int serialNumber;
  final String taskTitle;
  final VoidCallback onTap;

  const TasksListCard({
    super.key,
    required this.serialNumber,
    required this.taskTitle,
    required this.onTap,
  });

  @override
  State<TasksListCard> createState() => _TasksListCardState();
}

class _TasksListCardState extends State<TasksListCard> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: widget.onTap,
        highlightColor: Color.fromRGBO(237, 203, 25, 0.6),
        onHighlightChanged:
            (isPressed) => {
              setState(() {
                _isPressed = isPressed;
              }),
            },
        borderRadius: BorderRadius.circular(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Mata Kuliah Card
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 55,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(196, 196, 196, 0.2),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Text(
                              widget.serialNumber.toString().padLeft(2, '0'),
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 42,
                                fontWeight: FontWeight.w500,
                                color:
                                    _isPressed
                                        ? Colors.white
                                        : Color.fromRGBO(209, 209, 209, 1.0),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Download materi',
                                style: TextStyle(
                                  color: Color.fromRGBO(85, 85, 85, 0.58),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 9,
                                ),
                              ),
                              Text(
                                widget.taskTitle,
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.75),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(209, 209, 209, 0.4),
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: colors.secondary,
                                shape: BoxShape.circle,
                              ),
                              child: SvgPicture.asset(
                                'assets/svg/done.svg',
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
