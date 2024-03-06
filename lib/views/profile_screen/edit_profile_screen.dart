import 'package:eshop_seller/views/widgets/custom_text_field.dart';
import 'package:eshop_seller/views/widgets/normal_text.dart';
import '../../const/const.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(text: "Edit profile", size: 16.0),
        actions: [
          TextButton(
            onPressed: () {},
            child: normalText(
              text: "Save",
              size: 16.0,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              imgProduct,
              width: 150,
            ).box.roundedFull.clip(Clip.antiAlias).make(),
            10.heightBox,
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: white,
                ),
                onPressed: () {},
                child: normalText(text: "Change Image", color: darkGrey)),
            10.heightBox,
            Divider(
              color: white,
            ),
            10.heightBox,
            customTextField(label: name, hint: "eg. Max payne"),
            10.heightBox,
            customTextField(label: password, hint: passwordHint),
            10.heightBox,
            customTextField(label: conPass, hint: passwordHint),
          ],
        ),
      ),
    );
  }
}
