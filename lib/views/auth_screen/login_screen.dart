import 'package:eshop_seller/const/const.dart';
import 'package:eshop_seller/views/home_screen/home.dart';
import 'package:eshop_seller/views/widgets/common_button.dart';
import 'package:eshop_seller/views/widgets/normal_text.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: purpleColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(12),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              normalText(text: welcome, size: 18.0),
              20.heightBox,
              Row(
                children: [
                  Image.asset(
                    iclogo,
                    height: 80,
                    width: 80,
                  )
                      .box
                      .border(color: white)
                      .padding(EdgeInsets.all(8))
                      .rounded
                      .make(),
                  10.widthBox,
                  boldText(text: appname, size: 18.0)
                ],
              ),
              60.heightBox,
              normalText(text: "Login to yur account", size: 18.0),
              10.heightBox,
              Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: textfieldGrey,
                        prefixIcon: Icon(
                          Icons.email,
                          color: purpleColor,
                        ),
                        border: InputBorder.none,
                        hintText: emailHint),
                  ),
                  10.heightBox,
                  TextFormField(
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: textfieldGrey,
                        prefixIcon: Icon(
                          Icons.lock,
                          color: purpleColor,
                        ),
                        border: InputBorder.none,
                        hintText: passwordHint),
                  ),
                  10.heightBox,
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: normalText(
                              text: forgotPassword, color: purpleColor))),
                  10.heightBox,
                  SizedBox(
                    width: context.screenWidth - 100,
                    child: CommonButton(
                        title: login,
                        onPress: () {
                          Get.to(() => const Home());
                        }),
                  ),
                  10.heightBox
                ],
              )
                  .box
                  .white
                  .rounded
                  .outerShadowSm
                  .padding(EdgeInsets.all(8))
                  .make(),
              10.heightBox,
              Center(
                child: normalText(text: anyProblem),
              ),
              const Spacer(),
              Center(
                child: boldText(text: credit),
              ),
              20.heightBox
            ]),
          ),
        ));
  }
}
