import 'package:flutter/material.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final String projectIcon;
  final IconData projectIconData;
  final String projectTitle;
  final String projectDescription;
  final String projectLink;
  final double cardWidth;
  final double cardHeight;
  final String backImage;
  final Widget bottomWidget;

  const ProjectCard(
      {Key key,
      this.backImage,
      this.bottomWidget,
      this.projectIcon,
      this.projectTitle,
      this.projectDescription,
      this.projectLink,
      this.projectIconData,
      this.cardWidth,
      this.cardHeight})
      : super(key: key);
  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        setState(() {
          isHover = !isHover;
        });
      },
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        width: widget.cardWidth,
        height: widget.cardHeight,
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
           //color:  isHover ? Colors.grey : Colors.transparent,
          // boxShadow: isHover
          //     ? [
          //         BoxShadow(
          //           color: kPrimaryColor.withAlpha(100),
          //           blurRadius: 0.0,
          //           offset: Offset(0.0, 0.0),
          //         )
          //       ]
          //     : [
          //         BoxShadow(
          //           color: Colors.black.withAlpha(100),
          //           blurRadius: 0.0,
          //           offset: Offset(0.0, 0.0),
          //         )
          //       ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AdaptiveText(
                  widget.projectDescription,
                  textAlign: TextAlign.center,
                  //overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.018,
                      letterSpacing: 2.0,
                      color: _themeProvider.lightTheme
                          ? Colors.black
                          : Colors.white,
                      fontWeight: FontWeight.w500,
                      height: width >= 600 ? 2.0 : 1.2),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
               AdaptiveText(
                 "Avukat",
                  textAlign: TextAlign.center,
                  //overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.015,
                      letterSpacing: 2.0,
                      color: _themeProvider.lightTheme
                          ? Colors.black
                          : Colors.white,
                      fontWeight: FontWeight.w400,
                      height: width >= 600 ? 2.0 : 1.2),
                ),
              ],
            ),
            AnimatedOpacity(
              duration: Duration(milliseconds: 400),
              opacity: isHover ? 0.2 : 1.0,
              child: FittedBox(
                fit: BoxFit.fill,
                child: widget.backImage != null
                    ? Image.asset(widget.backImage)
                    : Container(), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
