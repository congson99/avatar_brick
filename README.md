# Avatar Brick

Avatar Brick is a custom avatar can **automatically display your abbreviation name** when no avatar
is available.

<a href="https://github.com/congson99/avatar_brick"><img src="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_pub.png?raw=true" alt="Icon"></a>

## Let's get started

Import the package in your project:

```dart
import 'package:_avatar/_avatar.dart';
```

Try it with the following simple example. The image you pass in the image parameter can be any type
of Image (`Image.network`, `Image.asset`, `Image.file`, `Image.memory`). The passed Image should be
have a `
fit` param of `BoxFit.cover`, a `height` param of `
double.maxFinite` and a `weight` param of `double.maxFinite` as in the following example:

```dart
Widget avatarBrick() =>
    AvatarBrick
      (
        image: Image.network(
          "https: //images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person.jpg",
          fit: BoxFit.cover,
          height: double.maxFinite,
          width: double.maxFinite,
        )
    );
```