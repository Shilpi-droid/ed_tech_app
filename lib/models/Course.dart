// ignore_for_file: no_leading_underscores_for_local_identifiers

class Course {
  final int courseId;
  final String name;
  final String author;
  final int rating;
  final int price;
  final String imageURL;
  final String userReview;
  bool isFavorated;
  final String description;
  bool isSelected;

  Course({
    required this.courseId,
    required this.name,
    required this.author,
    required this.rating,
    required this.price,
    required this.imageURL,
    required this.userReview,
    required this.isFavorated,
    required this.description,
    required this.isSelected
  });

  //List of Course data
  static List<Course> courseList = [
    Course(
        courseId: 0,
        name: "Python",
        author: "Krish Naik",
        rating: 5,
        price: 54000,
        imageURL: 'assets/subjects/python.png',
        isFavorated: false,
        description:
        'Python is an interpreted, interactive,object-oriented programming language. It '
            'incorporates modules, exceptions, dynamic typing, very high level dynamic data'
            'types, and classes. It supports multiple programming paradigms beyond object-'
            'oriented programming,such as procedural and functional programming.',
        isSelected: false,
        userReview: 'Be the first person to write a review on this course.'

    ),

    Course(
        courseId: 1,
        name: "C",
        author: "Krish Naik",
        rating: 3,
        price: 54000,
        imageURL: 'assets/subjects/C.png',
        isFavorated: false,
        description:
        'The C language is a high-level, general-purpose programming language. It'
            'provides a straightforward, consistent, powerful interface \nfor programming'
            'systems. That\'s why the C language is widely used for \ndeveloping system software,'
            'application software, \nand embedded systems.',
        isSelected: false,
        userReview: 'Be the first person to write a review on this course.'

    ),
    Course(
        courseId: 2,
        name: "C++",
        author: "Krish Naik",
        rating: 3,
        price: 54000,
        imageURL: 'assets/subjects/C++.png',
        isFavorated: false,
        description:
        'C++ is a powerful general-purpose programming language. It can be used to'
            'develop operating systems, browsers, games, and so on. C++ supports different'
            'ways of programming like procedural, object-oriented, functional, and so on. This'
            'makes C++ powerful as well as flexible.',
        isSelected: false,
        userReview: 'Be the first person to write a review on this course.'

    ),
    Course(
        courseId: 3,
        name: "Java",
        author: "Krish Naik",
        rating: 3,
        price: 54000,
        imageURL: 'assets/subjects/Java.png',
        isFavorated: false,
        description:
        'Java is a widely used object-oriented programming language and software'
            ' platform that runs on billions of devices, including notebook computers, mobile'
            'devices, gaming consoles, medical devices and many others. The rules and syntax'
            'of Java are based on the C and C++ languages.',
        isSelected: false,
        userReview: 'Be the first person to write a review on this course.'

    ),
    Course(
        courseId: 4,
        name: "Javascript",
        author: "Krish Naik",
        rating: 3,
        price: 54000,
        imageURL: 'assets/subjects/JS.png',
        isFavorated: false,
        description:
        'JavaScript allows users to interact with web pages. There are almost no limits to'
            'the things you can do with JavaScript on a web page – these are just a few'
            ' examples: Show or hide more information with the click of a button. Change the'
            ' color of a button when the mouse hovers over it.',
        isSelected: false,
        userReview: 'Be the first person to write a review on this course.'

    ),
    Course(
        courseId: 5,
        name: "CSS",
        author: "Krish Naik",
        rating: 3,
        price: 54000,
        imageURL: 'assets/subjects/CSS.png',
        isFavorated: false,
        description:
        'Python is an interpreted, interactive, object-oriented programming language. It'
            'incorporates modules, exceptions, dynamic typing, very high level dynamic data'
            'types, and classes. It supports multiple programming paradigms beyond object-'
            'oriented programming, such as procedural and functional programming.',
        isSelected: false,
        userReview: 'Be the first person to write a review on this course.'

    ),

    Course(
        courseId: 6,
        name: "HTML",
        author: "Krish Naik",
        rating: 3,
        price: 54000,
        imageURL: 'assets/subjects/HTML.png',
        isFavorated: false,
        description:
        'HTML (HyperText Markup Language) is the code that is used to structure a web'
            'page and its content. For example, content could be structured within a set of'
            'paragraphs, a list of bulleted points, or using subjects and data tables.',
        isSelected: false,
        userReview: 'Be the first person to write a review on this course.'

    ),
    Course(
        courseId: 7,
        name: "R",
        author: "Krish Naik",
        rating: 3,
        price: 54000,
        imageURL: 'assets/subjects/R.png',
        isFavorated: false,
        description:
        'R is a programming language. R is often used for statistical computing and'
            ' graphical presentation to analyze and visualize data.',
        isSelected: false,
        userReview: 'Be the first person to write a review on this course.'

    ),
    Course(
        courseId: 8,
        name: "PHP",
        author: "Krish Naik",
        rating: 3,
        price: 54000,
        imageURL: 'assets/subjects/PHP.png',
        isFavorated: false,
        description:
        'PHP(short for Hypertext PreProcessor) is the most widely used open source and'
            'general purpose server side scripting language used mainly in web development'
            'to create dynamic websites and applications. It was developed in 1994 by Rasmus'
            'Lerdorf.',
        isSelected: false,
        userReview: 'Be the first person to write a review on this course.'

    ),
    Course(
        courseId: 9,
        name: "SQL",
        author: "Krish Naik",
        rating: 3,
        price: 54000,
        imageURL: 'assets/subjects/SQL.png',
        isFavorated: false,
        description:
        'SQL is used to communicate with a database. According to ANSI (American'
            ' National Standards Institute), it is the standard language for relational database'
            ' management systems. SQL statements are used to perform tasks such as update'
            ' data on a database, or retrieve data from a database.',
        isSelected: false,
        userReview: 'Be the first person to write a review on this course.'

    ),
  ];

  //Get the favourited items
  static List<Course> getFavoritedFoods() {
    List<Course> _favoritedCourseList = Course.courseList;
    return _favoritedCourseList.where((element) => element.isFavorated == true)
        .toList();
  }

  //Get the cart items
  static List<Course> addedToCartFoods() {
    List<Course> _addedToCartCourses = Course.courseList;
    return _addedToCartCourses
        .where((element) => element.isSelected == true)
        .toList();
  }

}
