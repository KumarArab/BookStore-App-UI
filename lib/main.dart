import 'package:bookStoreapp/bookDetails.dart';
import 'package:bookStoreapp/bookModel.dart';
import 'package:bookStoreapp/style.dart';
import 'package:bookStoreapp/user.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Container(
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
              child: Row(
                children: [
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            UserCard(),
                            Menu(),
                            Current(),
                          ],
                        )),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 50,
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
                                    "Explore",
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
                                            color:
                                                Colors.black.withOpacity(0.1),
                                            offset: Offset(20, 20),
                                            blurRadius: 10,
                                            spreadRadius: 5,
                                          ),
                                        ]),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 20),
                                        Icon(
                                          Icons.search,
                                          size: 30,
                                          color: subtitleColor,
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          "Find a Book",
                                          style: GoogleFonts.poppins(
                                            color: subtitleColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 30,
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
                            height: 50,
                            width: _width * 0.8,
                            child: Row(
                              children: [
                                Text(
                                  "Popular Now",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ),
                                Spacer(),
                                CircleAvatar(
                                  backgroundColor: themeBlue,
                                  child: Icon(
                                    Icons.navigate_before,
                                    color: titleColor,
                                  ),
                                ),
                                SizedBox(width: 20),
                                CircleAvatar(
                                  backgroundColor: themeBlue,
                                  child: Icon(
                                    Icons.navigate_next,
                                    color: titleColor,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 200,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: themeBlue,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: FractionallySizedBox(
                                    widthFactor: 0.7,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: titleColor,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 100),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 420,
                          ),
                          Text(
                            "Exclusives",
                            style: GoogleFonts.poppins(
                              color: Colors.black87,
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
          Positioned(
            top: _height * 0.32,
            right: 0,
            child: Container(
                height: 366,
                width: _width * 0.63,
                child: ListView.builder(
                  itemCount: books.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, i) {
                    return BookCard(
                      bookData: books[i],
                    );
                  },
                )),
          ),
          Positioned(
            bottom: 20,
            left: _width * 0.38,
            child: Container(
                width: 450,
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: exclusiveCardColor,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(20, 20),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ]),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        books[5].imageUrl,
                        height: 150,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          books[5].name,
                          style: GoogleFonts.poppins(
                            color: titleColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "By ${books[5].author}",
                          style: GoogleFonts.poppins(
                            color: subtitleColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: books[5].bgColor,
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
                                      books[5].rating,
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
                              "${books[5].reviewCount} Reviews",
                              style: GoogleFonts.poppins(
                                color: subtitleColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 250,
                          height: 60,
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: ListView.builder(
                            itemCount: books[3].genres.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, i) {
                              return Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(
                                    right: 20,
                                    bottom: 5,
                                    top: 5,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          offset: Offset(5, 5),
                                          blurRadius: 5,
                                          spreadRadius: 5,
                                        ),
                                      ]),
                                  child: Text(
                                    books[5].genres[i],
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: subtitleColor,
                                    ),
                                  ));
                            },
                          ),
                        )
                      ],
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final Book bookData;
  BookCard({this.bookData});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (ctx) => BookDetails(
                        bookData: bookData,
                      )),
            ),
        child: Column(
          children: [
            Hero(
              tag: bookData.name,
              child: Stack(children: [
                Container(
                  height: 250,
                  width: 200,
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
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              alignment: Alignment.center,
              width: 200,
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              margin: EdgeInsets.only(right: 30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(5, 5),
                      blurRadius: 5,
                      spreadRadius: 5,
                    ),
                  ]),
              child: Text(
                bookData.name,
                maxLines: 2,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: subtitleColor,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ));
  }
}

class UserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(imageurl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            children: [
              Text(
                "Arab kumar",
                style: GoogleFonts.poppins(
                  color: titleColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              Text(
                "Premium Plan",
                style: GoogleFonts.poppins(
                  color: subtitleColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final bool isSelected;

  MenuItem({this.isSelected, this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: ListTile(
        leading: Text(
          title,
          style: GoogleFonts.poppins(
            color: isSelected ? titleColor : inactiveMenuItemColor,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        trailing: Icon(
          Icons.navigate_next,
          color: isSelected ? titleColor : inactiveMenuItemColor,
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MenuItem(
            title: 'Explore',
            isSelected: true,
          ),
          MenuItem(
            title: 'Categories',
            isSelected: false,
          ),
          MenuItem(
            title: 'Saved',
            isSelected: false,
          ),
          MenuItem(
            title: 'Book Plans',
            isSelected: false,
          ),
          MenuItem(
            title: 'Preference',
            isSelected: false,
          ),
        ],
      ),
    );
  }
}

class Current extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Current Book Listening",
          style: GoogleFonts.poppins(
            color: inactiveMenuItemColor,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 100,
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(10, 10),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ]),
          child: ListTile(
            leading: Image.network(
              "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1475462006l/29868604._SY475_.jpg",
              height: 100,
              width: 40,
            ),
            title: Text(
              "Monkey Grip",
              style: GoogleFonts.poppins(
                color: titleColor,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              "Helen Warner",
              style: GoogleFonts.poppins(
                color: subtitleColor,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            trailing: Icon(
              Icons.play_arrow,
              color: titleColor,
              size: 50,
            ),
          ),
        ),
      ],
    ));
  }
}
