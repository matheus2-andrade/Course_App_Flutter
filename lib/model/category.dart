class Category {
  final String name = '';
  final int numOfCourses = 1;
  final String image = '';

  Category({name, numOfCourses, image});
}

List<Category> categories = [
  Category(
      name: "Marketing",
      numOfCourses: 17,
      image: "assets/images/marketing.png"),
  Category(
      name: "UX Design",
      numOfCourses: 25,
      image: "assets/images/ux_design.png"),
  Category(
      name: "Photography",
      numOfCourses: 13,
      image: "assets/images/photography.png"),
  Category(
      name: "Business", numOfCourses: 17, image: "assets/images/business.png")
  /*Project(
    title: "Chat/Messaging App Light and Dark Theme - Flutter UI",
    description:
        "Today we gonna build messing/chat app #ui using #flutter that runs both Android and iOS devices also has a dark and light theme. We create in total 4 screens all of that support both Dark Theme and Light Theme. At first, we design a welcome screen that contains an image with a tag line also has a skip button.",
  ),
  Project(
    title: "Welcome page, Login Page and Sign up page - Flutter UI",
    description:
        "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator.",
  ),
  Project(
    title: "Covid-19 App - Flutter UI",
    description:
        "We redesign the outlook app also make it responsive so that you can run it everywhere on your phone, tab, or web. In this flutter responsive video, we will show you the real power of flutter. Make mobile, web, and desktop app from a single codebase.",
  ),*/
];


/*List<Category> categories = categoriesData
    .map((item) => Category(item["name"], item['courses'], item['image']))
    .toList();

var categoriesData = [
  {"name": "Marketing", 'courses': 17, 'image': "assets/images/marketing.png"},
  {"name": "UX Design", 'courses': 25, 'image': "assets/images/ux_design.png"},
  {
    "name": "Photography",
    'courses': 13,
    'image': "assets/images/photography.png"
  },
  {"name": "Business", 'courses': 17, 'image': "assets/images/business.png"},
];*/
