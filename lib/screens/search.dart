import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/utils/app_styles.dart';
import 'package:ticket/widgets/button.dart';
import 'package:ticket/widgets/icon_text.dart';
import 'package:ticket/widgets/section_lead.dart';
import 'package:ticket/widgets/tabs.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            // heading
            const Gap(40),
            Text(
              "What are\nyou looking for?",
              style: Styles.headLineStyle1.copyWith(fontSize: 36),
            ),
            const Gap(20),
            // tab bar
            const TiTabs(first: "Flights", second: "Hotels"),
            // button
            const Gap(25),
            const TiIconText(
                icon: Icons.flight_takeoff_rounded, text: "Departure"),
            const Gap(15),
            const TiIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
            const Gap(25),
            const TiButton(text: "Find Tickets", type: "primary"),
            const Gap(40),
            const TiSectionLead(title: "Upcomming"),
            const Gap(25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 400,
                  width: size.width * 0.42,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 11, vertical: 13),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 2,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Column(children: [
                    Container(
                      height: 196,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/one.jpg"))),
                    ),
                    const Gap(15),
                    Text(
                      "20% discount on the early booking on the flight, Don't miss out this chance.",
                      style: Styles.headLineStyle2,
                    )
                  ]),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.45,
                          height: 190,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 16),
                          decoration: BoxDecoration(
                              color: const Color(0xFF3ab8b8),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Discount\nfor survey",
                                  style: Styles.headLineStyle2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const Gap(10),
                                Text(
                                  'Take the survey about our services and get the discount.',
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.white),
                                ),
                              ]),
                        ),
                        Positioned(
                          right: -35,
                          top: -35,
                          child: Container(
                            padding: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: const Color(0xFF189999))),
                          ),
                        ),
                      ],
                    ),
                    const Gap(20),
                    Container(
                      width: size.width * 0.45,
                      height: 190,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 16),
                      decoration: BoxDecoration(
                          color: const Color(0xFFec6545),
                          borderRadius: BorderRadius.circular(18)),
                      child: Column(children: [
                        Text(
                          "Take love",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const Gap(10),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(text: '😍', style: TextStyle(fontSize: 32)),
                          TextSpan(text: '🥰', style: TextStyle(fontSize: 48)),
                          TextSpan(text: '😘', style: TextStyle(fontSize: 32)),
                        ]))
                      ]),
                    ),
                  ],
                ),
              ],
            )
          ]),
    );
  }
}
