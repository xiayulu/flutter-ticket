import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/utils/app_styles.dart';
import 'package:ticket/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;

  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xFF526799),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21), topRight: Radius.circular(21)),
            ),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    ticket['from']['code'],
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  const Spacer(),
                  const ThickContainer(),
                  Expanded(
                      child: Stack(
                    children: [
                      SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: (context, constraints) => Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                (constraints.constrainWidth() / 6).floor(),
                                (index) => const SizedBox(
                                    width: 3,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                    )),
                              ),
                            ),
                          )),
                      Center(
                        child: Transform.rotate(
                          angle: 1.5,
                          child: const Icon(
                            Icons.local_airport_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )),
                  const ThickContainer(),
                  const Spacer(),
                  Text(
                    ticket['to']['code'],
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  )
                ],
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                      width: 100,
                      child: Text(
                        ticket['from']['name'],
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      )),
                  Text(
                    ticket['flying_time'],
                    style: Styles.headLineStyle4.copyWith(color: Colors.white),
                  ),
                  SizedBox(
                      width: 100,
                      child: Text(
                        ticket['to']['name'],
                        textAlign: TextAlign.end,
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      )),
                ],
              ),
            ]),
          ),
          Container(
            color: Styles.orangeColor,
            child: Row(children: [
              SizedBox(
                width: 10,
                height: 20,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: Styles.bgColor)),
              ),
              Expanded(
                  child: LayoutBuilder(
                builder: (context, constraints) => Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(
                      (constraints.constrainWidth() / 15).floor(),
                      (index) => const SizedBox(
                            width: 5,
                            height: 1,
                            child: DecoratedBox(
                                decoration: BoxDecoration(color: Colors.white)),
                          )),
                ),
              )),
              SizedBox(
                width: 10,
                height: 20,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        color: Styles.bgColor)),
              ),
            ]),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21))),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticket['date'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Gap(5),
                      Text(
                        "Date",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        ticket['departure_time'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Gap(5),
                      Text(
                        "Departure time",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${ticket['number']}',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Gap(5),
                      Text(
                        "Number",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
