String displayName = "";
String displayDesc = "";

class Items {
  /* final List <String> products; */

  String name;
  double price;
  String imagePath;
  String des;

  Items(
      {required this.name,
      required this.price,
      required this.imagePath,
      required this.des});
}

List itemsList = [
  Items(
      name: "Gryffindor Robe",
      price: 97.93,
      imagePath: "images/grf_cloak.png",
      des:
          "Gryffindor was one of the four Houses of Hogwarts School of Witchcraft and Wizardry and was founded by Godric Gryffindor. Gryffindor instructed the Sorting Hat to choose students possessing characteristics he most valued, such as courage, chivalry, nerve and determination,to be sorted into his house."),
  Items(
      name: "Slytherin Robe",
      price: 97.93,
      imagePath: "images/sly_cloak.png",
      des:
          "Slytherin was one of the four Houses at Hogwarts School of Witchcraft and Wizardry, founded by Salazar Slytherin. In establishing the house, Salazar instructed the Sorting Hat to pick students who had those characteristics as cunning, resourcefulness, leadership, and ambition."),
  Items(
      name: "Invisibility Cloak",
      price: 165.55,
      imagePath: "images/inv_cloak.png",
      des:
          "An Invisibility Cloak was a magical garment which rendered whomever or whatever it covered invisible. Invisibility Cloaks were exceptionally rare and valuable within the wizarding world. 'Your father left this in my possession before he died. It is time it was returned to you. Use it well.' -to HP "),
  Items(
      name: "Rawenclaw Robe",
      price: 97.93,
      imagePath: "images/raw_cloak.png",
      des:
          "Ravenclaw was one of the four Houses of Hogwarts School of Witchcraft and Wizardry. Its founder was the medieval witch Rowena Ravenclaw.Members of this house were characterised by their wit, learning, and wisdom. The animal symbol was an eagle, and blue and bronze were its colours."),
  Items(
      name: "Hufflepuff Robe",
      price: 97.93,
      imagePath: "images/huf_cloak.png",
      des:
          "Hufflepuff was one of the four Houses of Hogwarts School of Witchcraft and Wizardry. Its founder was the medieval witch Helga Hufflepuff. Hufflepuff was the most inclusive among the four houses, valuing hard work, dedication, patience, loyalty, and fair play rather than a particular aptitude in its members"),
  Items(
      name: "Sorting Hat",
      price: 65.99,
      imagePath: "images/hat.png",
      des:
          "The Sorting Hat was a sentient magical hat at Hogwarts that was used to determine which of the four school Houses was the best fit for each new student. These four Houses were Gryffindor, the house of bravery, Hufflepuff, the house of hard work, Ravenclaw, the house of intelligence, and Slytherin, the house of ambition."),
];
