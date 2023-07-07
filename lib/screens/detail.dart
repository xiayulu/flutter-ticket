import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/app_data.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/utils/app_styles.dart';
import 'package:ticket/widgets/dash.dart';
import 'package:ticket/widgets/double_text.dart';
import 'package:ticket/widgets/pin.dart';
import 'package:ticket/widgets/tabs.dart';
import 'package:ticket/widgets/thick_container.dart';

class TicketDetail extends StatelessWidget {
  const TicketDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> ticket = ticketList[0];
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(padding: const EdgeInsets.all(20), children: [
        const Gap(40),
        const Text("Tickets", style: TextStyle(fontSize: 42)),
        const Gap(20),
        const TiTabs(first: "Flights", second: "Hotels"),
        const Gap(20),
        Container(
          width: size.width * 0.85,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(24)),
          child: Column(children: [
            BarcodeWidget(
              barcode: Barcode.code128(),
              data: '0055 444 77147',
              height: 100,
            ),

            // place
            const Gap(20),
            Row(
              children: [
                Text(
                  ticket['from']['code'],
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                ),
                const Spacer(),
                ThickContainer(
                  color: Styles.primaryColor,
                ),
                Expanded(
                    child: Stack(
                  children: [
                    SizedBox(
                        height: 24,
                        child: TiDash(
                          color: Styles.primaryColor,
                        )),
                    Center(
                      child: Transform.rotate(
                        angle: 1.5,
                        child: Icon(
                          Icons.local_airport_rounded,
                          color: Styles.primaryColor,
                        ),
                      ),
                    ),
                  ],
                )),
                ThickContainer(
                  color: Styles.primaryColor,
                ),
                const Spacer(),
                Text(
                  ticket['to']['code'],
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                )
              ],
            ),
            const Gap(10),
            // flight name
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                    width: 100,
                    child: Text(
                      ticket['from']['name'],
                      style: Styles.headLineStyle4,
                    )),
                Text(
                  ticket['flying_time'],
                  style: Styles.headLineStyle4.copyWith(color: Colors.black),
                ),
                SizedBox(
                    width: 100,
                    child: Text(
                      ticket['to']['name'],
                      textAlign: TextAlign.end,
                      style: Styles.headLineStyle4,
                    )),
              ],
            ),

            //  dash
            const Gap(20),
            TiDash(
              solid: 5,
              blank: 10,
              color: Colors.grey.shade300,
            ),

            // time
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ticket['date'],
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.black),
                    ),
                    const Gap(5),
                    Text(
                      "Date",
                      style: Styles.headLineStyle4,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      ticket['departure_time'],
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.black),
                    ),
                    const Gap(5),
                    Text(
                      "Departure time",
                      style: Styles.headLineStyle4,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${ticket['number']}',
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.black),
                    ),
                    const Gap(5),
                    Text(
                      "Number",
                      style: Styles.headLineStyle4,
                    ),
                  ],
                ),
              ],
            ),

            const Gap(20),
            TiDash(
              solid: 1,
              blank: 1,
              color: Colors.grey.shade300,
            ),

            // passenger
            const Gap(20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TiDoubleText(
                  title: "Flutter DB",
                  subtitle: "Passenger",
                  align: 'start',
                ),
                TiDoubleText(
                    title: "5221 364869", subtitle: "Passport", align: 'end')
              ],
            ),

            const Gap(20),
            TiDash(
              solid: 5,
              blank: 10,
              color: Colors.grey.shade300,
            ),

            // passenger
            const Gap(20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TiDoubleText(
                  title: "0055 444 77147",
                  subtitle: "Number of E-Ticket",
                  align: 'start',
                ),
                TiDoubleText(
                    title: "B2SG28", subtitle: "Booking Code", align: 'end')
              ],
            ),

            const Gap(20),
            TiDash(
              solid: 5,
              blank: 10,
              color: Colors.grey.shade300,
            ),

            // passenger
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(width: 48, "assets/images/visa.png"),
                        Text(
                          "*** 2462",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.black),
                        )
                      ],
                    ),
                    const Gap(5),
                    Text(
                      "Payment Method",
                      style: Styles.headLineStyle4,
                    )
                  ],
                ),
                const TiDoubleText(
                    title: "\$249.99", subtitle: "Price", align: 'end')
              ],
            ),
          ]),
        ),
      ]),
    );
  }
}
