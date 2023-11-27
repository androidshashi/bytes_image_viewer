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

## Additional information

Will be updated soon.


