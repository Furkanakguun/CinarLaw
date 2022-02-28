import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:cinarlaw/sections/services/servicesDesktop.dart';
import 'package:cinarlaw/widget/serviceCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ServiceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Our Practice Areas",
              style: GoogleFonts.montserrat(
                  color: kPrimaryColor,
                  fontSize: height * 0.045,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // CustomSectionSubHeading(
          //     text: "I may not be perfect, but I'm surely of some help :)\n\n"),
          CarouselSlider.builder(
            itemCount: kServicesIcons.length,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ServiceCard(
                cardWidth: width < 650 ? width * 0.5 : width * 0.5,
                cardHeight: width < 650 ? width * 0.25 : width * 0.25,
                serviceIcon: kServicesIcons[i],
                serviceTitle: kServicesTitles[i],
                serviceDescription: kServicesDescriptions[i],
                serviceLink: kServicesLinks[i],
                cardBack: ServiceCardBackWidget(
                  serviceTitle: kServicesTitles[i],
                  serviceDesc: kServicesDescriptions[i],
                  themeProvider: _themeProvider,
                  height: height,
                  width: width,
                  constantIndex: i,
                ),
              ),
            ),
            options: CarouselOptions(
                height: width < 450 ? height * 0.25 : height * 0.25,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          ),
          SizedBox(
            height: 40,
          ),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
            indent: 40,
            endIndent: 40,
          )
        ],
      ),
    );
  }
}
