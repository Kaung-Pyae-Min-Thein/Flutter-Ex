//You need to initialize the properties String questionText and bool questionAnswer
// or mark them as late. Right now its complaining that you have stated they should not
// be null but you've not initialize them in the constructor.
// So you can either mark them as late
class Question {
  late String questionText;
  late bool questionAnswer;
  // named parameter
  // Question({required String q, required bool a}) {
  //   questionText = q;
  //   questionAnswer = a;
  // }
  Question(String q, bool a) {
    questionText = q;
    questionAnswer = a;
  }
}
// or initialize them.
// class MyStore extends VxStore {
//   CatelogModel catalog;
//   CartModel cart;
//
//   MyStore()
//       : catalog = CatelogModel(),
//         cart = CartModel(){
//     cart.catalog = catalog;
//   }
