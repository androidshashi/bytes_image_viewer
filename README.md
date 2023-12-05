<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This is a very simple widget.
You can use it when: Your GET IMAGE API returns Uint8List.

## Features

No need to write api calling and then pass the result to any other image viewer.

## Usage

please find the example here `/example`.

```dart
BytesImageViewer(
  height:100, //optional
  width:100,//optional
  fit: BoxFit.cover,//optional
  apiUrl:'image url',
  headers: {
    "Authorization":
    "Bearer yTiIsInN1YiI6IjEiLC"
  }, //optional
  loadingWidget: CircularProgressIndicator(
          color: Colors.red,
      ),//optional
  errorWidget: CircularProgressIndicator(
          color: Colors.red,
      ),//optional
);
```

###Additional information

  Attributes  | Desscription
------------- | -------------
| BytesImageViewer  | A widget that shows your image from the network image url(That returns Uint8List).| 
| height  | Height of the image view | 
| width  | width of the image view | 
| headers  | You can provide any kind of header information for eg authorization token, content-type etc. (You can use this if you image requires any kind of authorization). | 
| loadingWidget  | This widget is shown during the image is being downloaded from the network. You can consider it as a placeholder. | 
| errorWidget  | This widget shows when any error occurred. And BytesImageViewer is unable to show the image from the network url.| 


