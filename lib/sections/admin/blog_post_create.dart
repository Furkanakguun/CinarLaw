import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinarlaw/sections/mainSection.dart';
import 'package:cinarlaw/sections/museum/museum_listDesktop.dart';
import 'package:cinarlaw/sections/navBar/navBarLogo.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listDesktop.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as Path;
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../animations/entranceFader.dart';
import '../../constants.dart';

class BlogPostCreate extends StatefulWidget {
  const BlogPostCreate({
    Key key,
  }) : super(key: key);

  @override
  _BlogPostCreateState createState() => _BlogPostCreateState();
}

class _BlogPostCreateState extends State<BlogPostCreate> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController authorController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  bool isValidate = false;
  File file;
  String uploadedPhotoUrl;
  String downloadPath;
  String imageName = "Choose Image";
  CachedNetworkImageProvider pickedimage;
  final List<String> _sectionsName = [
    "ABOUT",
    "PRACTICE AREAS",
    "OUR TEAM",
    "CONTACT",
  ];

  final List<IconData> _sectionsIcons = [
    Icons.home,
    Icons.person,
    Icons.settings,
    Icons.article,
    Icons.phone,
  ];
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: width < 1200
            ? EdgeInsets.only(top: 0.0, bottom: 0)
            : EdgeInsets.only(top: 0.0, bottom: 0),
        child: Center(
          child: ListView(
            children: [
              //appBarSection(width),
              //introBannerSection(height, width),
              SizedBox(
                height: height * 0.15,
              ),
              titleSection(height),
              SizedBox(
                height: height * 0.03,
              ),
              backgroundPhoto(context, queryData),
              SizedBox(
                height: height * 0.03,
              ),
              titleField(height, width),
               SizedBox(
                height: height * 0.01,
              ),
              authorField(height, width),
              SizedBox(
                height: height * 0.03,
              ),
              descriptionField(queryData),
             SizedBox(
                height: height * 0.04,
              ),
              createBlogPost(width, height),
              SizedBox(
                height: height * 0.04,
              ),
              //Footer()
            ],
          ),
        ),
      ),
    );
  }

  Widget descriptionField(MediaQueryData queryData) {
    return Center(
      child: Container(
          width: queryData.size.width < 1200
                  ? queryData.size.width * 0.60
                  : queryData.size.width * 0.40,
                  height: queryData.size.height -500,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: TextFormField(
            onChanged: checkIsValidate(),
            validator: (val) {
              if (val.isEmpty) {
                return "Required";
              } else {
                return "";
              }
            },
            controller: contentController,
            maxLines: 60,
            cursorColor: Colors.black,
            style: GoogleFonts.montserrat(
              fontSize: queryData.size.height * 0.016,
              color: Colors.grey[500],
              height: 1.8,
            ),
            decoration: InputDecoration(
              hintText: "Enter your content",
              hintStyle: TextStyle(color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(color: Colors.black, width: 0.8),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget backgroundPhoto(BuildContext context, MediaQueryData queryData) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: queryData.size.width < 1200
                ? queryData.size.width * 0.60
                : queryData.size.width * 0.27,
            decoration: new BoxDecoration(
              //color: Colors.grey[900],
              border: Border(
                bottom: BorderSide(
                  //                   <--- left side
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              // borderRadius: new BorderRadius.all(
              //   Radius.circular(10),
              // ),
            ),
            //height: height * 0.30,
            child: Text(
              imageName,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.download,
              color: Colors.black,
            ),
            onPressed: () => chooseImage(),
          )
        ],
      ),
    );
  }

  chooseImage() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      this.imageName = pickedFile.path;
    });
  }

  uploadImageToStorage(PickedFile pickedFile) async {
    if (true) {
      Reference _reference = FirebaseStorage.instance
          .ref('gs://cinar-law.appspot.com')
          .child('images/${Path.basename(pickedFile.path)}');
      await _reference
          .putData(
        await pickedFile.readAsBytes(),
        SettableMetadata(contentType: 'image/jpeg'),
      )
          .whenComplete(() async {
        await _reference.getDownloadURL().then((value) {
          uploadedPhotoUrl = value;
          setState(() {
            // pickedimage = CachedNetworkImageProvider(uploadedPhotoUrl);
            downloadPath = uploadedPhotoUrl;
          });
        });
      });
    } else {
//write a code for android or ios
    }
  }

  Center createBlogPost(double width, double height) {
    return Center(
      child: Container(
        height: 50,
        width: width < 1200 ? width * 0.60 : width * 0.20,
        child: TextButton(
            style: ButtonStyle(
                backgroundColor: isValidate
                    ? MaterialStateProperty.all<Color>(mainColor)
                    : MaterialStateProperty.all<Color>(
                        mainColor.withOpacity(0.4)),
                foregroundColor: MaterialStateProperty.all<Color>(
                    mainColor.withOpacity(0.4)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        side: BorderSide(color: Colors.transparent)))
                // overlayColor: MaterialStateProperty.resolveWith<Color>(
                //   (Set<MaterialState> states) {
                //     if (states.contains(MaterialState.hovered))
                //       return Colors.blue.withOpacity(0.04);
                //     if (states.contains(MaterialState.focused) ||
                //         states.contains(MaterialState.pressed))
                //       return Colors.blue.withOpacity(0.12);
                //     return null; // Defer to the widget's default.
                //   },
                // ),
                ),
            onPressed: () {
              //goToThirdPage();
            },
            child: Text(
              'Upload',
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: height * 0.018,
                  fontWeight: FontWeight.w300),
            )),
      ),
    );
  }

  Widget titleField(double height, double width) {
    return Center(
      child: Container(
          width: width < 1200 ? width * 0.60 : width * 0.30,
          //height: height * 0.30,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: TextFormField(
              controller: usernameController,
              onChanged: checkIsValidate(),
              validator: (val) {
                if (val.isEmpty) {
                  return "Required";
                } else {
                  return "";
                }
              },
              maxLines: 1,
              cursorColor: Colors.black,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: "Title",
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(color: Colors.black, width: 0.8),
                ),
              ),
            ),
          )),
    );
  }

  Widget authorField(double height, double width) {
    return Center(
      child: Container(
          width: width < 1200 ? width * 0.60 : width * 0.30,
          //height: height * 0.30,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: TextFormField(
              controller: authorController,
              onChanged: checkIsValidate(),
              validator: (val) {
                if (val.isEmpty) {
                  return "Required";
                } else {
                  return "";
                }
              },
              //obscureText: true,
              maxLines: 1,
              cursorColor: Colors.black,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: "Author",
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(color: Colors.black, width: 0.8),
                ),
              ),
            ),
          )),
    );
  }

  void _login() {
    if (this.usernameController.text != "" &&
        this.authorController.text != "") {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) =>
      //         PublicationsListArticle(title: title, description: description),
      //   ),
      // );
    } else {
      //formGlobalKey.currentState.validate();
    }
  }

  checkIsValidate() {
    if (this.usernameController.text != "" &&
        this.authorController.text != "") {
      setState(() {
        isValidate = true;
      });
    } else {
      setState(() {
        isValidate = false;
      });
    }
  }

  Align titleSection(double height) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        "CREATE BLOG POST",
        style: GoogleFonts.montserrat(
            color: mainColorWhite,
            fontSize: height * 0.028,
            fontWeight: FontWeight.w300),
      ),
    );
  }

  Center introBannerSection(double height, double width) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/museum_stack.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        height: height * 0.20,
        width: width,
        //color: Colors.yellow),
      ),
    );
  }

  Row appBarSection(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 55,
          width: width,
          color: Colors.white,
          child: _appBarTabDesktop(),
        ),
      ],
    );
  }

  Widget _appBarTabDesktop() {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      elevation: 0.0,
      backgroundColor: Colors.white,
      // flexibleSpace: Image(
      //   image: AssetImage('assets/navbar.png'),
      //   fit: BoxFit.cover,
      // ),
      title: MediaQuery.of(context).size.width < 780
          ? NavBarLogo(
              height: 20.0,
            )
          : Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10, bottom: 18),
              child: Image.asset(
                'assets/cinar_Logo.png',
                fit: BoxFit.fitWidth,
                height: 120,
                width: 200,
              ),
            ),
      actions: [
        MediaQuery.of(context).size.width > 760
            ? Container(
                padding: const EdgeInsets.all(8.0),
                height: 60.0,
                child: MaterialButton(
                  hoverColor: kPrimaryColor,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PublicationsListDesktop(),
                    ),
                  ),
                  child: Text(
                    "ÇINAR ACADEMIA",
                    style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.0070,
                        // fontWeight: FontWeight.w300,
                        color: mainColorWhite),
                    // style: TextStyle(
                    //   color:
                    //       themeProvider.lightTheme ? Colors.black : Colors.white,
                    // ),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: kPrimaryColor.withAlpha(70),
                  onPressed: () {
                    //_scroll(index);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PublicationsListDesktop(),
                      ),
                    );
                    //Navigator.pop(context);
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.book,
                      color: kPrimaryColor,
                    ),
                    title: Text(
                      "Çınar Academia",
                      style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.0070,
                        // fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
        MediaQuery.of(context).size.width > 760
            ? Container(
                padding: const EdgeInsets.all(8.0),
                height: 60.0,
                child: MaterialButton(
                  hoverColor: kPrimaryColor,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MuseumListDesktop(),
                    ),
                  ),
                  child: Text(
                    "ÇINAR MUSEUM",
                    style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.0070,
                        // fontWeight: FontWeight.w300,
                        color: mainColorWhite),
                    // style: TextStyle(
                    //   color:
                    //       themeProvider.lightTheme ? Colors.black : Colors.white,
                    // ),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: kPrimaryColor.withAlpha(70),
                  onPressed: () {
                    //_scroll(index);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MuseumListDesktop(),
                      ),
                    );
                    //Navigator.pop(context);
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.book,
                      color: kPrimaryColor,
                    ),
                    title: Text(
                      "Çınar Museum",
                      style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.0070,
                        // fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
        for (int i = 0; i < _sectionsName.length; i++)
          _appBarActions(_sectionsName[i], i, _sectionsIcons[i]),
        Container(
            color: mainColorWhite,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 12,
                ),
                EntranceFader(
                  offset: Offset(0, -10),
                  delay: Duration(milliseconds: 100),
                  duration: Duration(milliseconds: 250),
                  child: IconButton(
                    icon: Icon(
                      AntDesign.linkedin_square,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.width * 0.0095,
                    ),
                    //iconSize: height,
                    onPressed: () => launchURL(
                        'https://www.linkedin.com/company/cinarlaw/?originalSubdomain=tr'),
                    //hoverColor: kPrimaryColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ))
      ],
    );
  }

  Widget _appBarActions(
    String childText,
    int index,
    IconData icon,
  ) {
    return MediaQuery.of(context).size.width > 760
        ? Container(
            color: mainColorWhite,
            padding: const EdgeInsets.all(8.0),
            height: 60.0,
            child: MaterialButton(
              hoverColor: kPrimaryColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(),
                  ),
                );
              },
              child: Text(
                childText,
                style: GoogleFonts.montserrat(
                  fontSize: MediaQuery.of(context).size.width * 0.0070,
                  //fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
                // style: TextStyle(
                //   color:
                //       themeProvider.lightTheme ? Colors.black : Colors.white,
                // ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  hoverColor: mainColor.withAlpha(70),
                  onPressed: () {
                    //_scroll(index + 1);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainPage(),
                      ),
                    );
                  },
                  child: Text(
                    childText,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    //textAlign: TextAlign.start,
                  ),
                ),
                Divider(color: Colors.brown[200])
              ],
            ),
          );
  }
}
