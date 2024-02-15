import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/custom_description.dart';
import 'package:zaisystems/widget_common/my_appbar.dart';
import 'package:zaisystems/widget_common/request_demo.dart';
import 'package:zaisystems/widget_common/section_builder.dart';

class EmployeeServiceScreen extends StatelessWidget {
  const EmployeeServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: employeeSelfService),
      body: SingleChildScrollView(
        child: Container(
          color: whiteColor,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(imgselfService),
              customDescription(
                title: impulseEmpSelfService,
                desc: impulseEmpSelfServiceDesc,
              ),
              hcmSectionBuilder(list: empSelfList),
              20.heightBox,
              requestDemo(),
            ],
          ),
        ),
      ),
    );
  }
}
