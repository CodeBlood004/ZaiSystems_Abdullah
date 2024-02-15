import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/contact_screen/widgets/contact_form.dart';
import 'package:zaisystems/views/contact_screen/widgets/email_list_builder.dart';
import 'package:zaisystems/views/contact_screen/widgets/get_in_touch.dart';
import 'package:zaisystems/widget_common/footer.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: whiteColor,
        padding: const EdgeInsets.only(top: 20),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Image.asset(
              imgContact,
              height: 200,
            ),
            20.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: emailListBuilder(),
            ),
            20.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: getInTouch(),
            ),
            10.heightBox,
            const ContactForm(),
            const Footer(),
          ],
        ).box.white.make(),
      ),
    ).onTap(() {
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    });
  }
}
