// Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Column(
//             children: <Widget>[
//               SizedBox(
//                 height: 30,
//               ),
//               TextField(
//                 controller: _tec,
//                 autofocus: true,
//                 cursorColor: Colors.black,
//                 textCapitalization: TextCapitalization.sentences,
//                 decoration: InputDecoration(
//                   labelText: 'Label Text',
//                   helperText: 'Helper Text',
//                   focusColor: Colors.green,
//                   prefixIcon: Icon(Icons.code),
//                   suffixIcon: Icon(Icons.hd),
//                   hintText: 'Enter your username',
//                   // hintStyle: TextStyle(fontSt),
//                   // contentPadding: EdgeInsets.all(11),
//                   // floatingLabelBehavior: FloatingLabelBehavior.always,
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.green),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Material(
//                 elevation: 20,
//                 shadowColor: Colors.black26,
//                 child: TextField(
//                   controller: _tec1,
//                   autofocus: true,
//                   textCapitalization: TextCapitalization.words,
//                   decoration: InputDecoration(
//                     // enabledBorder: OutlineInputBorder(
//                     //   borderSide: BorderSide(color: Colors.white),
//                     // ),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               TextField(
//                 autofocus: true,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(5),
//                     ),
//                   ),
//                   errorBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.red,
//                       width: 0.7,
//                       style: BorderStyle.solid,
//                     ),
//                   ),
//                   errorText: 'Please enter the correct Text',
//                   hintText: 'Enter the correct gmail account',
//                   hintStyle: TextStyle(fontStyle: FontStyle.italic),
//                 ),
//               ),
//               // FloatingActionButton(
//               //   onPressed: () {
//               //     return showDialog(
//               //       context: context,
//               //       builder: (context) {
//               //         return AlertDialog(
//               //           content: Text(_tec.text),
//               //         );
//               //       },
//               //     );
//               //   },
//               //   child: Icon(Icons.edit),
//               // ),
//               SizedBox(
//                 height: 35,
//               ),
//               Container(
//                 padding: EdgeInsets.all(10),
//                 color: Colors.grey,
//                 child: Column(
//                   children: [
//                     // Container(
//                     //   decoration: BoxDecoration(
//                     //     borderRadius: BorderRadius.circular(25),
//                     //     image: DecorationImage(
//                     //       image: AssetImage(
//                     //         'assets/images/logo.png',
//                     //       ),
//                     //       fit: BoxFit.cover,
//                     //     ),
//                     //   ),
//                     // ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis hendrerit dolor magna eget est lorem ipsum.
//                        Laoreet sit amet cursus sit amet dictum. Tristique et egestas quis ipsum suspendisse ultrices gravida. Turpis in eu mi bibendum neque egestas congue.''',
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                       style: TextStyle(
//                         fontSize: 23,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Container(
//                       height: 100,
//                       width: 100,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage('images/bug1.png'),
//                           fit: BoxFit.cover,
//                           alignment: Alignment.center,
//                         ),
//                         gradient: LinearGradient(
//                           colors: [
//                             Color(0xFF1B1C1E),
//                             Color(0xFF515354),
//                           ],
//                         ),
//                         backgroundBlendMode: BlendMode.darken,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),