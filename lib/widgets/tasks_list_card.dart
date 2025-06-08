import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TasksListCard extends StatelessWidget {
  final int serialNumber;
  final String taskTitle;

  const TasksListCard({
    super.key,
    required this.serialNumber,
    required this.taskTitle,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
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
                          serialNumber.toString().padLeft(2, '0'),
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 42,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(209, 209, 209, 1.0),
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
                            taskTitle,
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
                          child: SvgPicture.asset('assets/svg/done.svg', fit: BoxFit.scaleDown,),
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
    );
  }
}
