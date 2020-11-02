import 'package:flutter/material.dart';

class Book {
  final String name;
  final String imageUrl;
  final String rating;
  final String author;
  final String reviewCount;
  final List<String> genres;
  final String story;
  final String link;
  final Color bgColor;

  Book({
    this.name,
    this.imageUrl,
    this.rating,
    this.author,
    this.reviewCount,
    this.genres,
    this.story,
    this.link,
    this.bgColor,
  });
}

List<Book> books = [
  Book(
    name: "My Own Words",
    imageUrl:
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1475462006l/29868604._SY475_.jpg",
    rating: "3.4",
    author: "Ruth Bader Ginsburg",
    reviewCount: "3345",
    genres: ["Non-Fiction", "inspirational"],
    story:
        "The New York Times bestselling book from Supreme Court Justice Ruth Bader Ginsburg—“a comprehensive look inside her brilliantly analytical, entertainingly wry mind, revealing the fascinating life of one of our generation's most influential voices in both law and public opinion” (Harper’s Bazaar).My Own Words “showcases Ruth Ginsburg’s astonishing intellectual range” (The New Republic). In this collection Justice Ginsburg discusses gender equality, the workings of the Supreme Court, being Jewish, law and lawyers in opera, and the value of looking beyond US shores when interpreting the US Constitution. Throughout her life Justice Ginsburg has been (and continues to be) a prolific writer and public speaker. This book’s sampling is selected by Justice Ginsburg and her authorized biographers Mary Hartnett and Wendy W. Williams, who introduce each chapter and provide biographical context and quotes gleaned from hundreds of interviews they have conducted.Witty, engaging, serious, and playful, My Own Words is a fascinating glimpse into the life of one of America’s most influential women and “a tonic to the current national discourse” (The Washington Post).",
    link: "https://amzn.to/37kzRX2",
    bgColor: Color(0xffF0EDF4),
  ),
  Book(
    name: "Life is what you make it",
    imageUrl:
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1308754493l/11256293.jpg",
    rating: "4.2",
    author: "Preeti Shenoy",
    reviewCount: "8821",
    genres: ["Love Story", "Determination"],
    story:
        "The heart-warming story of a young girl who struggles against all odds, when life as she knows it is disrupted What would you do if the perfect life you have is torn asunder? Set across two cities in India in the early eighties, Life Is What You Make It is a gripping account of the years that change young Ankita Sharma's life. Pretty and intelligent, Ankita has everything she wants: friends, boys in hot pursuit, and admission into a premier management school for her MBA. But six months later, she finds herself a patient in a mental health hospital. How did she get here and will she ever get back her life again? Somehow, everything that made up her world has been taken away - and now she must fight like she has never had to, to recover her rightful lot.A gripping story of the pains of growing up, the strength afforded by faith and the indestructibility of the spirit, here is an inspiring story for modern readers.",
    link:
        "https://www.amazon.in/gp/product/9380349300/ref=x_gr_w_bb_sout?ie=UTF8&tag=x_gr_w_bb_in-21&linkCode=as2&camp=3626&creative=24790",
    bgColor: Color(0xffF4EDEF),
  ),
  Book(
    name: "Red White and Royal Blue",
    imageUrl:
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1566742512l/41150487._SY475_.jpg",
    rating: "3.9",
    author: "Casey McQuiston",
    reviewCount: "5491",
    genres: ["Contemporary", "Young Adult"],
    story:
        "First Son Alex Claremont-Diaz is the closest thing to a prince this side of the Atlantic. With his intrepid sister and the Veep’s genius granddaughter, they’re the White House Trio, a beautiful millennial marketing strategy for his mother, President Ellen Claremont. International socialite duties do have downsides—namely, when photos of a confrontation with his longtime nemesis Prince Henry at a royal wedding leak to the tabloids and threaten American/British relations. The plan for damage control: staging a fake friendship between the First Son and the Prince. Alex is busy enough handling his mother’s bloodthirsty opponents and his own political ambitions without an uptight royal slowing him down. But beneath Henry’s Prince Charming veneer, there’s a soft-hearted eccentric with a dry sense of humor and more than one ghost haunting him. As President Claremont kicks off her reelection bid, Alex finds himself hurtling into a secret relationship with Henry that could derail the campaign and upend two nations. And Henry throws everything into question for Alex, an impulsive, charming guy who thought he knew everything: What is worth the sacrifice? How do you do all the good you can do? And, most importantly, how will history remember you?",
    link: "https://amzn.to/37i33ho",
    bgColor: Color(0xffFDEDF7),
  ),
  Book(
    name: "The Rudest Book Ever",
    imageUrl:
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1575289232l/49057616._SY475_.jpg",
    rating: "4.2",
    author: "Shwetabh Gangwar",
    reviewCount: "3402",
    genres: [
      "Self Help",
      "Non-Fiction",
      "Psychology",
      "Business",
    ],
    story:
        "Shwetabh Gangwar is a professional problem-solver—and he’s ace at it. For the past five years, people from all over the world have contacted him with their troubles and he’s worked these out for them. In the process, he has picked up on a simple pattern: people need a set of principles and perspectives to protect them from all the unnecessary bullshit they go through. Codes to live by, essentially. But be warned: Gangwar has no desire to spare your feelings. What you will find in this straight-forward, straight-talking, no-craps-given guide, is:\nHow to deal with rejections of all kinds\nHow to change your perceptions of people so you don’t end up screwed\nWhy a society that sees people as ‘good and bad’ is dumb\nHow the search for happiness screws us over\nHow seeking approval and acceptance kills our individuality\nThe truth about social media influencers\nWhy we should be taught ‘how to think’, instead of ‘what to think’\nLaying out clear principles, YouTube megastar Gangwar shows you how to deal with the shit that has happened to you, is happening to you and will happen to you.\nA refreshing, easy-to-read, and relatable guide, The Rudest Book Ever will make you rethink everything you’ve been taught.",
    link: "https://amzn.to/3m1bPV4",
    bgColor: Color(0xffF2F4ED),
  ),
  Book(
    name: "Cracking the Coding Interview",
    imageUrl:
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1596829126l/54845619._SX318_.jpg",
    rating: "4.9",
    author: "Gayle Laakmann McDowell",
    reviewCount: "6892",
    genres: [
      "Computer Science",
      "Programming",
      "Science",
      "Technology",
    ],
    story:
        "Cracking the Coding Interview: 189 Programming Questions and Solutions is a book by Gayle Laakmann McDowell about coding interviews.[1][2] It describes typical problems in computer science that are often asked during coding interviews, typically on a whiteboard during job interviews at big technology companies such as Google, Apple, Microsoft, Amazon.com, Facebook and Palantir Technologies. ",
    link: "https://amzn.to/2TauTE8",
    bgColor: Color(0xffEDF4F3),
  ),
  Book(
    name: "What God Wants",
    imageUrl:
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1349081979l/90855.jpg",
    rating: "3.8",
    author: "Neale Donald Walsch",
    reviewCount: "9931",
    genres: [
      "Spirituality",
      "Non-fiction",
      "Religion",
      "Philisophy",
    ],
    story:
        "The biggest danger in the world today is not the asking of questions, but the assumption that we have all the answers.\nWHAT GOD WANTS\nThis book, from the author of the phenomenal New York Times bestseller Conversations with God, is dangerous. Why? Because it explores with startling freshness the most important question you could ever ask -- and offers with breathtaking courage the most extraordinary answer you could ever imagine.\nThat answer is so theologically revolutionary and spiritually empowering that it could change the course of human history. If embraced, it most certainly will change your life.\nThere are people and institutions in the world, long in place and long in power, that want neither of these outcomes to occur. They would rather that you put this book down right now.\nWhen was the last time you read a dangerous book? ",
    link: "https://amzn.to/3m1bPV4",
    bgColor: Color(0xffF2F2F2),
  ),
];
