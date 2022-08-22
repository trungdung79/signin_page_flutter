import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  final onPressed;
  const CustomCircleButton({Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkResponse(
      onTap: onPressed,
      child: Container(
        width: size.width / 7,
        height: size.width / 7,
        alignment: Alignment.center, //noi dung ben trong
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 2),),
          ],
        ),
        child: Stack(
          children: [
            SizedBox(
              width: size.width / 7,
              height: size.width / 7,
              child: Image.asset('assets/images/Ellipse_4.png', fit: BoxFit.fill,),
            ),
            Container(
              width: size.width / 7,
              height: size.width / 7,
              alignment: Alignment.center,
              child: SizedBox(
                width: size.width / 7 / 2.6,
                height: size.width / 7 / 4,
                child: Image.asset('assets/images/Vector.png', fit: BoxFit.fill,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
