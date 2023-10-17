import 'package:flutter/material.dart';
import 'package:untitled/app/modules/home/home_widgets/m_text.dart';

class MListView extends StatelessWidget {
  const MListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120 * 20,
      child: ListView.separated(
        itemCount: 20,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20,
          );
        },
        itemBuilder: (context, index) {
          return MListCard(
            msize: '$index',
          );
        },
      ),
    );
  }
}

class MListCard extends StatelessWidget {
  const MListCard({
    super.key,
    required this.msize,
  });

  final String msize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 100,
        color: Colors.orangeAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MText(
                  text: 'Flutter $msize',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                SizedBox(
                  height: 5,
                ),
                MText(text: 'Flutter'),
              ],
            ),
            Container(
              height: 80,
              width: 100,
              // color: Colors.indigo,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/image/sm_02.jpg'),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
