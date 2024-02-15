import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/hcm_screen/widgets/hcm_card.dart';
import 'package:zaisystems/views/hcm_screen/widgets/impulse_description.dart';
import 'package:zaisystems/widget_common/request_demo.dart';

class HCMScreen extends StatelessWidget {
  const HCMScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          impulseDescription(),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: hcmList.length,
            itemBuilder: (context, index) {
              final item = hcmList[index];
              return hcmCard(
                decorationImg: item.image,
                title: item.title,
                text: item.subText,
              );
            },
          ),
          requestDemo(),
        ],
      ),
    );
  }
}
