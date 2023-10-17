import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/app/modules/home/home_widgets/m_text.dart';

class MGridView extends StatelessWidget {
  const MGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120 * 20,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20, mainAxisSpacing: 10, crossAxisCount: 2),
        itemBuilder: (context, index) => MGridCard(),
      ),
    );
  }
}

class MGridCard extends StatelessWidget {
  const MGridCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 100,
        // color: Colors.lightBlue,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('asset/image/sm_01.jpg'))),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MText(
              text: 'Flutter Test',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 20,
            ),
            MText(
              text: 'Flutter Text',
              fontSize: 20,
            )
          ],
        ),
      ),
    );
  }
}
