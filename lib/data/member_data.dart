class Member {
  String name;
  String email;
  String phone;
  String linkedIn;
  String github;
  String image;
  String techStack;

  Member(
      {required this.name,
      required this.phone,
      required this.linkedIn,
      required this.github,
      required this.image,
      required this.email,
      required this.techStack});
}

List<Member> members = [
  Member(
      name: "Deepak Vishwakarma",
      email: "deepakvishwakarma@duck.com",
      phone: "9967342721",
      linkedIn: "https://www.linkedin.com/in/deepak-vishwakarma-271225255/",
      github: "https://www.github.com/d9870",
      image: "assets/images/deepak.jpg",
      techStack:
          "React, Flutter, Node, Express, MongoDB,Core Java, C++, Python"),
  Member(
      name: "Satyam Maurya",
      email: "mauryasatyam79@gmail.com",
      phone: "7007821999",
      linkedIn: "https://www.linkedin.com/in/satyam-maurya-960747224/",
      github: "https://www.github.com/satyammaurya20",
      image: "assets/images/satyam.jpg",
      techStack: "React, Node, Express, MongoDB, Core Java,AWS, chef"),
  Member(
      name: "Shubham Chavan",
      email: "piyush69@gmail.com",
      phone: "1234567890",
      linkedIn: "https://www.linkedin.com/in/shubham-chavan-1a89a7209/",
      github: "https://www.github.com/subhamchavan69",
      image: "assets/images/shubham.jpg",
      techStack: "React, vue , Express, MongoDB, tailwind css "),
];
