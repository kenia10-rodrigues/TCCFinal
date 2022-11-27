// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_cropper/image_cropper.dart';
// // ignore: import_of_legacy_library_into_null_safe
// import 'package:image_picker/image_picker.dart';

  
// // class MyAppCall extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Foto App',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //         visualDensity: VisualDensity.adaptivePlatformDensity,
// //       ),
// //       home: MyAppCall(),
// //     );
// //   }
// // }

// class MyAppCall extends StatefulWidget {
//   const MyAppCall({Key? key}) : super(key: key);

//   @override
//   _MyAppCallState createState() => _MyAppCallState();
// }//ok

// class _MyAppCallState extends State<MyAppCall> {
//   // final picker = ImagePicker();
//   // late File _selectedImage;
//    File? _selectedFile;
//   bool _inProcess = false;
  
//   //get _selectedImage => null;
  
//   //get source => null;

// Widget getImageWidget(){
//   if(_selectedFile != null){
//     return Image.file(
//       _selectedFile!,
//       width: 250,
//       height: 250,
//       fit: BoxFit.cover,
//     );
//   }else{
//     return Image.asset("asset/placeholder.jpg",
//       width: 250,
//       height: 250,
//       fit: BoxFit.cover,
//     );
//   }
// }

//   getImage(ImageSource source) async {
//         File image = await ImagePicker.pickImage(source: source);
//       File? cropped = await ImageCropper().cropImage(
        
//       sourcePath: image.path,
//       aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
//       compressQuality: 100,
//       maxHeight: 700,
//       maxWidth: 700,
//       compressFormat: ImageCompressFormat.jpg,
//       androidUiSettings: AndroidUiSettings(
//         toolbarColor: Colors.deepOrange,
//         toolbarTitle: "RPS cropper",
//         statusBarColor: Colors.deepOrange.shade900,
//         backgroundColor: Colors.white,
//       )
//     );
      
//     this.setState(() {
//       _selectedFile = cropped;
//     });
//   }
    
          
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Camera'),
//       ),
//       body: (_inProcess)
//           ? Container(
//               color: Colors.white,
//               height: double.infinity,
//               width: double.infinity,
//               alignment: Alignment.center,
//               child: SizedBox(
//                 width: 70,
//                 height: 70,
//                 child: CircularProgressIndicator(
//                   strokeWidth: 5.0,
//                   backgroundColor: Theme.of(context).primaryColor,
//                 ),
//               ),
//             )
//           : Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 _selectedImage != null
//                     ? Image.file(
//                         _selectedImage,
//                         width: 250,
//                         height: 250,
//                         fit: BoxFit.cover,
//                       )
//                     : Container(
//                         width: 250,
//                         height: 250,
//                         child: Icon(
//                           Icons.camera_alt,
//                           size: 200,
//                           color: Colors.grey,
//                         ),
//                       ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     MaterialButton(
//                       onPressed: () {
//                         getImage(ImageSource.camera);
//                       },
//                       child: Text('Camera'),
//                     ),
//                     MaterialButton(
//                       onPressed: () {
//                         getImage(ImageSource.gallery);
//                       },
//                       child: Text('Galeria'),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//     );
//   }
  
//   //RaisedButton({required Null Function() onPressed, required Text child}) {}
// }