import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class Instagram extends StatelessWidget {
  var parser = EmojiParser();
  var coffee = Emoji('coffee', '☕');
  var heart = Emoji('heart', '❤');
 //deneme
  @override
  Widget build(BuildContext context) {
    var emojiHeart = parser.info('heart');

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Container(
            child: Center(
              child: Text(
                "Instagram",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "4.244 beğenme\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "drbetulsayan ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "Avrupalı Türk Kardeşlerimize selam olsun.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  WidgetSpan(
                    child: Image.asset(
                      'icons/flags/png/tr.png',
                      package: 'country_icons',
                      height: 15,
                      width: 15,
                    ),
                  ),
                  TextSpan(
                    text: "Azerbaycanı da ❤ anmadan olmaz.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  WidgetSpan(
                    child: Image.asset(
                      'icons/flags/png/az.png',
                      package: 'country_icons',
                      height: 15,
                      width: 15,
                    ),
                  ),
                  TextSpan(
                    text: " Hocam ne diyosunuz?  ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
