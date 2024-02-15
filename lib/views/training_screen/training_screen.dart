import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/training_screen/widgets/course_card.dart';
import 'package:zaisystems/views/training_screen/widgets/course_detail.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            "Certified Courses We Offer"
                .text
                .size(heading)
                .fontFamily(bold)
                .color(mehroonColor)
                .make()
                .centered()
                .box
                .width(double.infinity)
                .padding(const EdgeInsets.all(20))
                .make(),
            5.heightBox,
            Column(
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: courseList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final course = courseList[index];
                    return courseCard(
                      item: course,
                      onCardClick: () async => await courseDetailModel(
                        cardIndex: index,
                        context: context,
                        course: course,
                      ),
                    );
                  },
                ),
              ],
            ).box.padding(const EdgeInsets.only(bottom: 20)).make(),
          ],
        ),
      ),
    );
  }
}
