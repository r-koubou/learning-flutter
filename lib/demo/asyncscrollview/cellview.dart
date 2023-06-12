
import 'package:flutter/cupertino.dart';
import 'package:learning_flutter/demo/asyncscrollview/information.dart';

class CellView extends StatelessWidget {

  final Information information;

  const CellView({Key? key, required this.information}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.activeOrange,
      child: Expanded(child:Row(
        children: [
          Padding(padding: const EdgeInsets.all(10), child:
          Image.network(
              information.imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }
              return Center(child: CupertinoActivityIndicator(animating: true,));
            },
            frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
              return child;
            }
          )),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(information.name),
                Text(information.description),
                Text(information.url),
          ])
        ],
      ),
    ));
  }
}
