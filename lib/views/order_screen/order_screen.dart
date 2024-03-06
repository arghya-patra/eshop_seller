import 'package:eshop_seller/const/const.dart';
import 'package:eshop_seller/views/widgets/appbar_widget.dart';
import 'package:eshop_seller/views/widgets/normal_text.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart' as intl;

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWidget("Orders"),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(
                        20,
                        (index) => ListTile(
                              onTap: () {},
                              tileColor: textfieldGrey,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              title: boldText(
                                  text: "8787867868787", color: fontGrey),
                              subtitle: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.calendar_month),
                                      10.widthBox,
                                      boldText(
                                          text: intl.DateFormat()
                                              .add_yMd()
                                              .format(DateTime.now()),
                                          color: darkGrey),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.payment),
                                      10.widthBox,
                                      boldText(text: "Unpaid", color: red),
                                    ],
                                  )
                                ],
                              ),
                              trailing: boldText(
                                  text: "\$40.0",
                                  color: purpleColor,
                                  size: 16.0),
                            )
                                .box
                                .margin(const EdgeInsets.only(bottom: 5))
                                .make()))
              ],
            ),
          ),
        ));
  }
}
