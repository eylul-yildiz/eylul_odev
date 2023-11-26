import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Container postItem(
          String avatar, String photo, String name, String location) =>
      Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 0, left: 0, right: 0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(avatar),
                        radius: 20,
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            location,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(
                    Icons.more_horiz_rounded,
                    size: 50,
                  ),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: Image.asset(photo)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite_border_outlined,
                          size: 28, color: Colors.black87),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.chat_bubble_outline_rounded,
                          color: Colors.black87),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.flag_outlined, color: Colors.black87),
                ],
              ),
            ),
            CommentAdd("rümeysa", "askitooo"),
            CommentAdd("melih", "harikasınız"),
          ]),
        ),
      );
  Padding CommentAdd(String name, String comment) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
              maxLines: 3,
              text: TextSpan(children: [
                TextSpan(
                  text: name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 12,
                  ),
                ),
                TextSpan(text: "   "),
                TextSpan(
                  text: comment,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 12),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget storyWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 0, left: 5, right: 5),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: Colors.black87,
                gradient: LinearGradient(colors: [
                  const Color.fromRGBO(214, 71, 108, 1),
                  Color.fromARGB(241, 166, 117, 214),
                  Color.fromARGB(255, 11, 44, 231)
                ]),
                shape: BoxShape.circle),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 34,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Eylül",
                  style: TextStyle(
                      color: Color.fromARGB(255, 153, 153, 153),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset("assets/images/mainlogo.png", width: 120),
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: 0, top: 4, left: 6, bottom: 4),
                      child: Icon(Icons.add_circle,
                          color: Colors.black87, size: 30),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child:
                          Icon(Icons.favorite, color: Colors.black87, size: 30),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.send, color: Colors.black87, size: 30),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        storyWidget("assets/images/p0.jpg", "Eylül "),
                        storyWidget("assets/images/p1.jpg", "Tuana "),
                        storyWidget("assets/images/p2.jpg", "Yaren "),
                        storyWidget("assets/images/p3.jpg", "İlayda"),
                        storyWidget("assets/images/p4.jpg", "Toprak"),
                        storyWidget("assets/images/p5.jpg", "Bahri"),
                        storyWidget("assets/images/p6.jpg", "Orçun"),
                        storyWidget("assets/images/p7.jpg", "Ömer"),
                        storyWidget("assets/images/p8.jpg", "Sude"),
                        storyWidget("assets/images/p9..jpg", "Burak"),
                        storyWidget("assets/images/p10..jpg", "İlo"),
                      ],
                    ),
                  ),
                  postItem("assets/images/p1.jpg", "assets/images/tuana.jpg",
                      "Tuana", "makyol yaşam"),
                  postItem("assets/images/p0.jpg", "assets/images/eylul.jpg",
                      "Eylül", "Rize"),
                  postItem("assets/images/p3.jpg", "assets/images/ilayda.jpg",
                      "ilayda", "Sinan Erdem Spor Salonu"),
                  postItem("assets/images/p10..jpg", "assets/images/ilo.jpg",
                      "ilo", "istinye üniversitesi"),
                  postItem("assets/images/p5.jpg", "assets/images/eslabb.jpg",
                      "Bahri", "Espressolab Roastery"),
                  postItem("assets/images/p4.jpg", "assets/images/bsk.jpg",
                      "Toprak", "Beşiktaş"),
                  postItem("assets/images/p9.jpg", "assets/images/hmb.jpg",
                      "Burak", "Happy Moon's"),
                ],
              ),
            ),
          )),
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color.fromARGB(50, 0, 0, 0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home,
                    size: 35, color: const Color.fromARGB(221, 22, 22, 22)),
                Icon(Icons.search_rounded,
                    size: 35, color: const Color.fromARGB(221, 22, 22, 22)),
                const Icon(Icons.smart_display,
                    size: 35, color: Color.fromARGB(221, 22, 22, 22)),
                const Icon(Icons.favorite,
                    size: 35, color: Color.fromARGB(221, 22, 22, 22)),
                Icon(Icons.person,
                    size: 35, color: const Color.fromARGB(221, 22, 22, 22)),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

