import 'package:bookStoreapp/bookModel.dart';
import 'package:bookStoreapp/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetails extends StatelessWidget {
  final Book bookData;

  BookDetails({this.bookData});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
          height: _width * 0.45,
          width: _width,
          margin: EdgeInsets.only(
            left: _width * 0.05,
            right: _width * 0.05,
            top: _width * 0.02,
            bottom: _width * 0.06,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(_width * 0.03),
          ),
          child: Row(children: [
            Expanded(
              flex: 3,
              child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 30,
                  ),
                  decoration: BoxDecoration(
                    color: paneColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(_width * 0.03),
                      bottomLeft: Radius.circular(
                        _width * 0.03,
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Hero(
                        tag: bookData.name,
                        child: Stack(children: [
                          Container(
                            height: 375,
                            width: 300,
                            margin: EdgeInsets.only(right: 30),
                            decoration: BoxDecoration(
                              color: bookData.bgColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 40,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  bookData.imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 50,
                            bottom: 50,
                            child: Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: bookData.bgColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: titleColor,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      bookData.rating,
                                      style: GoogleFonts.poppins(
                                        color: titleColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ]),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              bookData.name,
                              style: GoogleFonts.poppins(
                                color: titleColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              "By ${bookData.author}",
                              style: GoogleFonts.poppins(
                                color: subtitleColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: titleColor,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          bookData.rating,
                                          style: GoogleFonts.poppins(
                                            color: titleColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )
                                      ],
                                    )),
                                SizedBox(width: 30),
                                Text(
                                  "${bookData.reviewCount} Reviews",
                                  style: GoogleFonts.poppins(
                                    color: subtitleColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: 350,
                              height: 80,
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: ListView.builder(
                                itemCount: bookData.genres.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (ctx, i) {
                                  return Container(
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(
                                        right: 20,
                                        bottom: 10,
                                        top: 10,
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              offset: Offset(5, 5),
                                              blurRadius: 5,
                                              spreadRadius: 5,
                                            ),
                                          ]),
                                      child: Text(
                                        bookData.genres[i],
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          color: subtitleColor,
                                        ),
                                      ));
                                },
                              ),
                            ),
                            SizedBox(),
                            SizedBox(),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Expanded(
              flex: 7,
              child: Container(
                padding: EdgeInsets.only(
                  top: 100,
                  left: 100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 80,
                        width: _width * 0.8,
                        child: Row(
                          children: [
                            Text(
                              "Synopsis",
                              style: GoogleFonts.poppins(
                                color: titleColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 50,
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 80,
                              alignment: Alignment.center,
                              width: 400,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      offset: Offset(20, 20),
                                      blurRadius: 10,
                                      spreadRadius: 5,
                                    ),
                                  ]),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(width: 20),
                                  Icon(
                                    Icons.search,
                                    size: 20,
                                    color: subtitleColor,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Find other Books",
                                    style: GoogleFonts.poppins(
                                      color: subtitleColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      width: _width * 0.5,
                      height: _width * 0.22,
                      child: SingleChildScrollView(
                        child: Text(
                          bookData.story,
                          style: GoogleFonts.poppins(
                            color: subtitleColor,
                            fontSize: 22,
                            height: 1.8,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    FlatButton(
                      onPressed: () async {
                        if (await canLaunch(bookData.link)) {
                          await launch(bookData.link);
                        }
                      },
                      child: Container(
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: new LinearGradient(
                            colors: [
                              Colors.amber,
                              Colors.yellow,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "BUY NOW",
                          style: GoogleFonts.poppins(
                            color: Colors.black54,
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ])),
    );
  }
}
