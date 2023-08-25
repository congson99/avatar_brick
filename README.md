# Avatar Brick

Avatar Brick is a custom avatar can **automatically display your abbreviation name** when no avatar
is available.

<a href="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_pub.png?raw=true"><img src="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_pub.png?raw=true" alt="Icon"></a>
<br />

# Let's get started

Import the package in your project:

```dart
import 'package:avatar_brick/avatar_brick.dart';
```

### 1. Avatar with an image

<a href="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_image.png?raw=true"><img src="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_image.png?raw=true" alt="Icon" height="120"></a>

Try the following simple example:

```dart
Widget simpleAvatarBrick() =>
    AvatarBrick(
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
<br />

### 2. Avatar with a "name"

<a href="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_name.png?raw=true"><img src="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_name.png?raw=true" alt="Icon" height="120"></a>

If you want to create an avatar can **automatically display your abbreviation name**. DON'T pass
`image` variable or pass `null` value. Then pass your name in the `name` variable like following
example:

```dart
Widget nameAvatarBrick() =>
    AvatarBrick(
      image: null,
      name: "Jennie Garth",
    );
```

<br />

### 3. Loading Avatar

<a href="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_loading.png?raw=true"><img src="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_loading.png?raw=true" alt="Icon" height="120"></a>

If you want to create a loading avatar.DON'T pass any variable or pass the `true` value to
the `isLoading` variable like the following example:

```dart
Widget simpleAvatarBrick() => AvatarBrick(isLoading: true);

Widget nullAvatarBrick() => AvatarBrick();
```

<br />

# How to customize?

### Customize the avatar size

<a href="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_size.png?raw=true"><img src="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_size.png?raw=true" alt="Icon"></a>

You can customize the size of the avatar by passing the variable `size`. Try the following example:

```dart
Widget resizeAvatarBrick() =>
    AvatarBrick(
      size: const Size(56, 56),
      image: Image.network(
        "https://www.waldenu.edu/media/5504/seo-2332-bs-glad-dark-skinned-woman-with-a-393146831-1200x675",
        fit: BoxFit.cover,
        height: double.maxFinite,
        width: double.maxFinite,
      ),
    );
```

<br />

### Customize colors for avatars without images

<a href="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_color.png?raw=true"><img src="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_color.png?raw=true" alt="Icon" height="120"></a>

You can customize the color of the background, border, abbreviation name. Try the following example:

```dart
Widget colorAvatarBrick() =>
    AvatarBrick(
      name: "Avatar Brick",
      backgroundColor: Colors.white,
      nameTextColor: Colors.teal,
      border: Border.all(width: 4, color: Colors.teal),
    );
```

<br />

### Customize others

<a href="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_others.png?raw=true"><img src="https://github.com/congson99/avatar_brick/blob/son/release1.0.0/assets/screenshots/example_others.png?raw=true" alt="Icon"></a>

You can customize the radius, border, shadow,... of the image. Try the following example:

```dart
Widget otherAvatarBrick() =>
    AvatarBrick(
      radius: 24,
      boxShadows: const [
        BoxShadow(
            color: Colors.black54,
            blurRadius: 8,
            offset: Offset(2, 4))
      ],
      border: Border.all(width: 2, color: Colors.orange),
      image: Image.network(
        "https://media.istockphoto.com/id/1166423321/photo/portrait-business-woman-asian-on-blue-background.webp?b=1&s=170667a&w=0&k=20&c=k4ByeqnhyGUnT4wJm4baVX2mlT46iRSr65i2FwcldAk=",
        fit: BoxFit.cover,
        height: double.maxFinite,
        width: double.maxFinite,
      ),
    );
```

<br />

# Thank you for using my package!

See more of my packages [here](https://github.com/congson99/flutter_bricks)

Contact me: [congson99vn@gmail.com](mailto:congson99vn@gmail.com)
| [linkedin](https://www.linkedin.com/in/congson/) | [github](https://github.com/congson99)