import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/app_styles.dart';
import 'package:ticket/widgets/dash.dart';
import 'package:ticket/widgets/double_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(padding: const EdgeInsets.all(20), children: [
        const Gap(40),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 86,
              width: 86,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/img_1.png"))),
            ),
            const Gap(10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book Tickets",
                  style: Styles.headLineStyle2,
                ),
                const Gap(5),
                Text(
                  "New-York",
                  style: Styles.headLineStyle4,
                ),
                const Gap(5),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF526799),
                      ),
                      child: const Icon(
                        FluentSystemIcons.ic_fluent_shield_filled,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                    const Gap(5),
                    const Text(
                      "Premium status",
                      style: TextStyle(
                          color: Color(0xFF526799),
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                )
              ],
            ),
            const Spacer(),
            Column(
              children: [
                InkWell(
                  onTap: () => {
                    print("edit"),
                  },
                  child: Text("Edit",
                      style: Styles.textStyle
                          .copyWith(color: Styles.primaryColor)),
                )
              ],
            )
          ],
        ),
        const Gap(10),
        const Divider(),
        Stack(
          children: [
            Container(
              height: 98,
              decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            Positioned(
              right: -48,
              top: -42,
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: 18, color: const Color(0xFf264cd2))),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                      FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.primaryColor,
                      size: 27),
                ),
                const Gap(12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("You are got a new reward",
                        style: Styles.headLineStyle2
                            .copyWith(color: Colors.white)),
                    const Gap(5),
                    Text(
                      "You have 100 flights in a year",
                      style: Styles.headLineStyle4
                          .copyWith(color: Colors.white.withOpacity(0.9)),
                    ),
                  ],
                )
              ]),
            )
          ],
        ),
        const Gap(20),
        Text(
          "Accumulated miles",
          style: Styles.headLineStyle2,
        ),
        const Gap(20),
        Center(
          child: Text(
            "1 024 593",
            style: TextStyle(
                fontSize: 48,
                color: Styles.textColor,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Gap(25),
              Row(
                children: [
                  Text(
                    "Miles accrude",
                    style: Styles.headLineStyle4,
                  ),
                  const Spacer(),
                  Text(
                    "7 July 2023",
                    style: Styles.headLineStyle4,
                  ),
                ],
              ),
              const Gap(12),
              Divider(
                color: Colors.grey.shade500,
              ),
              const Gap(12),
              const Row(
                children: [
                  TiDoubleText(
                    title: "23 042",
                    subtitle: "Miles",
                    align: "start",
                  ),
                  Spacer(),
                  TiDoubleText(
                    title: "Airline CO",
                    subtitle: "Received from",
                    align: "end",
                  ),
                ],
              ),
              const Gap(12),
              TiDash(
                solid: 5,
                blank: 10,
                color: Colors.grey.shade500,
              ),
              const Gap(12),
              const Row(
                children: [
                  TiDoubleText(
                    title: "42",
                    subtitle: "Miles",
                    align: "start",
                  ),
                  Spacer(),
                  TiDoubleText(
                    title: "McDonal's",
                    subtitle: "Received from",
                    align: "end",
                  ),
                ],
              ),
              const Gap(12),
              TiDash(
                solid: 5,
                blank: 10,
                color: Colors.grey.shade500,
              ),
              const Gap(12),
              const Row(
                children: [
                  TiDoubleText(
                    title: "52 342",
                    subtitle: "Miles",
                    align: "start",
                  ),
                  Spacer(),
                  TiDoubleText(
                    title: "Exuma",
                    subtitle: "Received from",
                    align: "end",
                  ),
                ],
              ),
              const Gap(25),
              InkWell(
                onTap: () => {
                  print("How to get more miles?"),
                },
                child: Center(
                    child: Text(
                  "How to get more miles",
                  style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                )),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
