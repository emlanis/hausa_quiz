import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hausa_quiz/quizpage.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List<String> images = [
    "images/A.png",
    "images/B.png",
    "images/C.png",
    "images/D.png",
    "images/F.png",
    "images/G.png",
    "images/H.png",
    "images/I.png",
    "images/J.png",
    "images/K.png",
    "images/L.png",
    "images/M.png",
    "images/N.png",
    "images/R.png",
    "images/S.png",
    "images/T.png",
    "images/U.png",
    "images/W.png",
    "images/Y.png",
    "images/Z.png",
  ];

  List<String> des = [
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin A\nAkwai karin magana sama da 350 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin B\nAkwai karin magana sama da 100 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin C\nAkwai karin magana sama da 80 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin D\nAkwai karin magana sama da 150 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin F\nAkwai karin magana sama da 200 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin G\nAkwai karin magana sama da 200 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin H\nAkwai karin magana sama da 350 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin I\nAkwai karin magana sama da 350 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin J\nAkwai karin magana sama da 350 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin K\nAkwai karin magana sama da 350 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin L\nAkwai karin magana sama da 350 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin M\nAkwai karin magana sama da 350 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin N\nAkwai karin magana sama da 350 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin R\nAkwai karin magana sama da 350 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin S\nAkwai karin magana sama da 350 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin T\nAkwai karin magana sama da 350 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin U\nAkwai karin magana sama da 350 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin W\nAkwai karin magana sama da 350 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin Y\nAkwai karin magana sama da 350 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
    "Shiga gasar kacici-kacicin karin maganar da suka fara da harafin Z\nAkwai karin magana sama da 350 a wannan runbun \nMuje zuwa wai mahaukaci ya hau kura !!",
  ];

  Widget customcard(String alphabet, String image, String des){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            // in changelog 1 we will pass the alphabet name to ther other widget class
            // this name will be used to open a particular JSON file
            // for a particular alphabet
            builder: (context) => getjson(alphabet),
          ));
        },
        child: Material(
          color: Colors.indigoAccent,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    alphabet,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: "Righteous",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "Oswald"
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HausaQuiz",
          style: TextStyle(
            fontSize: 35.0,
            fontFamily: "Westey",
            fontWeight: FontWeight.w700,

          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          customcard("Harafin A", images[0], des[0]),
          customcard("Harafin B", images[1], des[1]),
          customcard("Harafin C", images[2], des[2]),
          customcard("Harafin D", images[3], des[3]),
          customcard("Harafin F", images[4], des[4]),
          customcard("Harafin G", images[5], des[5]),
          customcard("Harafin H", images[6], des[6]),
          customcard("Harafin I", images[7], des[7]),
          customcard("Harafin J", images[8], des[8]),
          customcard("Harafin K", images[9], des[9]),
          customcard("Harafin L", images[10], des[10]),
          customcard("Harafin M", images[11], des[11]),
          customcard("Harafin N", images[12], des[12]),
          customcard("Harafin R", images[13], des[13]),
          customcard("Harafin S", images[14], des[14]),
          customcard("Harafin T", images[15], des[15]),
          customcard("Harafin U", images[16], des[16]),
          customcard("Harafin W", images[17], des[17]),
          customcard("Harafin Y", images[18], des[18]),
          customcard("Harafin Z", images[19], des[19]),
        ],
      ),
    );
  }
}