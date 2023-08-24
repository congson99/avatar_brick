# Avatar Brick

Avatar Brick is a custom avatar can **automatically display your abbreviation name** when no avatar
is available.

<a href="https://github.com/congson99/avatar_brick"><img src="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_pub.png?raw=true" alt="Icon"></a>

# Let's get started

[//]: # (Import the package in your project:)

[//]: # ()

[//]: # (```dart)

[//]: # (import 'package:_avatar/_avatar.dart';)

[//]: # (```)

#### 1. Avatar with an image

<a href="https://github.com/congson99/avatar_brick"><img src="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_image.png?raw=true" alt="Icon" height="120"></a>

Try the following simple example:

```dart
Widget simpleAvatarBrick() =>
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

**Note:** The image you pass in the image variable can be any type of Image (`Image.network`
, `Image.asset`, `Image.file`, `Image.memory`). The passed Image should be have a `fit` variable
of `BoxFit.cover`, a `height` variable of `double.maxFinite` and a `weight` variable
of `double.maxFinite`.

#### 2. Avatar with a "name"

<a href="https://github.com/congson99/avatar_brick"><img src="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_name.png?raw=true" alt="Icon" height="120"></a>

If you want to create an avatar can **automatically display your abbreviation name**. DON'T pass
`image` variable or pass `null` value. Then pass your name in the `name` variable like following
example:

```dart
Widget nameAvatarBrick() =>
    AvatarBrick
      (
      image: null,
      name: "Jennie Garth",
    );
```

#### 3. Loading Avatar

<a href="https://github.com/congson99/avatar_brick"><img src="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_loading.png?raw=true" alt="Icon" height="120"></a>

If you want to create a loading avatar.DON'T pass any variable or pass the `true` value to
the `isLoading` variable like the following example:

```dart
Widget simpleAvatarBrick() => AvatarBrick(isLoading: true);

Widget nullAvatarBrick() => AvatarBrick();
```

# How to customize?

#### Customize Avatar Size

# Contact me

[congson99vn@gmail.com](mailto:congson99vn@gmail.com)
| [linkedin](https://www.linkedin.com/in/congson/) | [github](https://github.com/congson99)