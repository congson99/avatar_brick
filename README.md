# Avatar Brick

[![pub package](https://img.shields.io/badge/pub.dev-v1.0.2-blue)](https://pub.dev/packages/avatar_brick)

**Avatar Brick** is a Flutter avatar widget for building user avatars and profile pictures that
automatically fall back to initials when no photo is available. It wraps `Image.network`,
`Image.asset`, `Image.file`, and `Image.memory` behind one consistent API, so a single widget
handles your network image, asset image, file image, and memory image avatars with the same
size, shape, border, and shadow customization.

When there is no image to show, Avatar Brick renders an initials avatar generated from a name —
a common pattern for user avatars, contact lists, and chat apps where not every user has uploaded
a profile picture. Combined with an optional icon fallback and a manual loading placeholder, it
replaces hand-rolled avatar-fallback logic with one drop-in widget.

<a href="https://github.com/congson99/avatar_brick/blob/master/assets/screenshots/example_pub.png?raw=true"><img src="https://github.com/congson99/avatar_brick/blob/master/assets/screenshots/example_pub.png?raw=true" alt="Avatar Brick examples"></a>

<br />

## Features

- [x] Network, asset, file, and in-memory image avatars (`.network()`, `.asset()`, `.file()`, `.memory()`)
- [x] Automatic initials avatar when no image is provided
- [x] Optional icon fallback
- [x] Manual loading placeholder state
- [x] Built-in load-error fallback for network images
- [x] Custom size, shape (circle or rounded-square), border, and box shadow
- [x] Custom background, image-background, and initials text color
- [x] Configurable initials length
- [x] Null-safe, pure Dart/Flutter widget — works on Android, iOS, web, and desktop

## Why Avatar Brick?

- **Less boilerplate.** One widget replaces the usual "check for a photo, else build initials,
  else show a placeholder icon" logic that most apps end up writing by hand.
- **One API for every image source.** Network, asset, file, and memory images share the same
  size, shape, border, and shadow parameters.
- **Predictable fallback order.** Image → initials → icon → loading placeholder → empty. The same
  rule applies everywhere you use the widget, so avatar behavior stays consistent across screens.
- **No extra dependencies.** Only depends on the Flutter SDK.

## When should you use Avatar Brick?

Flutter's built-in `CircleAvatar` is a good fit when you always have a guaranteed image, or you're
happy building the initials/fallback logic yourself. Reach for **Avatar Brick** when you need the
"sometimes there's a photo, sometimes there's just a name" pattern — the common case for user
profiles, contact lists, and chat apps — plus non-circular shapes, border, and shadow styling
without wrapping `CircleAvatar` in extra widgets yourself.

## Installation

```yaml
dependencies:
  avatar_brick: ^1.0.2
```

```
flutter pub get
```

Then import the package:

```dart
import 'package:avatar_brick/avatar_brick.dart';
```

## Quick start

```dart
AvatarBrick.network(
  src: user.avatarUrl, // pass null when the user has no photo
  name: user.fullName, // rendered as initials whenever src is null
);
```

## API overview

| Constructor | Image source | Notes |
| --- | --- | --- |
| `AvatarBrick(image: ...)` | Any `Image` widget | Full control; set `fit: BoxFit.cover` and `height`/`width: double.maxFinite` yourself |
| `AvatarBrick.network(src: ...)` | `Image.network` | Only variant with a built-in load-error fallback; supports `alwaysRefreshSrc` cache-busting |
| `AvatarBrick.asset(src: ...)` | `Image.asset` | |
| `AvatarBrick.file(src: ...)` | `Image.file` | |
| `AvatarBrick.memory(src: ...)` | `Image.memory` | |

All constructors accept the same styling parameters: `size`, `radius`, `backgroundColor`,
`imageBackgroundColor`, `border`, `boxShadows`, `name`, `nameTextColor`, `nameTextStyle`,
`maxAbbreviationLength`, `icon`, and `isLoading`. The image-based constructors additionally accept
`scale`, `fit`, and `alignment`.

## Usage & customization

### Image avatar

<a href="https://github.com/congson99/avatar_brick/blob/master/assets/screenshots/example_image.png?raw=true"><img src="https://github.com/congson99/avatar_brick/blob/master/assets/screenshots/example_image.png?raw=true" alt="Image avatar" height="120"></a>

Use `.network()`, `.asset()`, `.file()`, or `.memory()` for the matching image source:

```dart
AvatarBrick.network(src: 'https://i.pravatar.cc/300?img=12');
AvatarBrick.asset(src: 'assets/images/avatar.png');
AvatarBrick.file(src: File(user.localAvatarPath));
AvatarBrick.memory(src: user.avatarBytes);
```

You can also pass a pre-built `Image` directly through the base constructor. In that case, set
`fit: BoxFit.cover` and `height`/`width: double.maxFinite` yourself so it fills the avatar:

```dart
AvatarBrick(
  image: Image.network(
    'https://i.pravatar.cc/300?img=12',
    fit: BoxFit.cover,
    height: double.maxFinite,
    width: double.maxFinite,
  ),
);
```

### Initials avatar

<a href="https://github.com/congson99/avatar_brick/blob/master/assets/screenshots/example_name.png?raw=true"><img src="https://github.com/congson99/avatar_brick/blob/master/assets/screenshots/example_name.png?raw=true" alt="Initials avatar" height="120"></a>

Omit `image`/`src` (or leave it `null`) and pass `name` to render an initials avatar:

```dart
const AvatarBrick(name: 'Jennie Garth'); // "JG"
```

Initials are taken from the first letter of the name and the first letter after each space,
uppercased, and truncated to `maxAbbreviationLength` (default `2`).

### Icon fallback & loading placeholder

<a href="https://github.com/congson99/avatar_brick/blob/master/assets/screenshots/example_loading.png?raw=true"><img src="https://github.com/congson99/avatar_brick/blob/master/assets/screenshots/example_loading.png?raw=true" alt="Icon fallback and loading placeholder" height="120"></a>

With no `image`, `name`, or `icon`, `AvatarBrick()` renders an empty avatar with just the
background color. Pass an `icon` if you want a visible fallback:

```dart
const AvatarBrick(); // empty background, no icon by default

const AvatarBrick(
  backgroundColor: Colors.black26,
  icon: Icon(Icons.person_rounded, size: 48, color: Colors.white),
);
```

Set `isLoading: true` for a loading placeholder. It only has an effect when `image`, `name`, and
`icon` are all absent — it is an independent state you control, not something the widget sets
automatically while a network image is loading:

```dart
const AvatarBrick(isLoading: true);
```

### Size

<a href="https://github.com/congson99/avatar_brick/blob/master/assets/screenshots/example_size.png?raw=true"><img src="https://github.com/congson99/avatar_brick/blob/master/assets/screenshots/example_size.png?raw=true" alt="Avatar size"></a>

```dart
AvatarBrick.network(
  size: const Size(48, 48),
  src: 'https://i.pravatar.cc/300?img=32',
);
```

### Colors

<a href="https://github.com/congson99/avatar_brick/blob/master/assets/screenshots/example_color.png?raw=true"><img src="https://github.com/congson99/avatar_brick/blob/master/assets/screenshots/example_color.png?raw=true" alt="Custom colors" height="120"></a>

`backgroundColor` (initials/empty background), `nameTextColor` (initials text), and
`imageBackgroundColor` (behind an image) can be customized independently:

```dart
const AvatarBrick(
  name: 'Jennie Garth',
  backgroundColor: Colors.white,
  nameTextColor: Colors.teal,
);
```

### Shape, border & shadow

<a href="https://github.com/congson99/avatar_brick/blob/master/assets/screenshots/example_others.png?raw=true"><img src="https://github.com/congson99/avatar_brick/blob/master/assets/screenshots/example_others.png?raw=true" alt="Shape, border and shadow"></a>

Omit `radius` for a full circle, or pass a value for a rounded-square avatar. `border` and
`boxShadows` work the same way across every constructor:

```dart
AvatarBrick.network(
  src: 'https://i.pravatar.cc/300?img=45',
  radius: 24,
  border: Border.all(width: 2, color: Colors.orange),
  boxShadows: const [
    BoxShadow(color: Colors.black54, blurRadius: 8, offset: Offset(2, 4)),
  ],
);
```

## Common use cases

- User profile screens
- Contact lists
- Chat conversation headers and message bubbles
- Team member grids
- Comment sections
- Employee directories
- Admin and CRM dashboards

## Best practices

- Pass `name` alongside your image source so the widget can fall back to initials automatically
  when a user has no photo — you don't need your own null check for this.
- Keep a shared `size`/`radius` (e.g. as constants) so avatars line up consistently across lists
  and screens.
- A network load failure (bad URL, no connection) renders as empty space in release builds, not
  initials — `.network()`'s error handling and the initials fallback are separate mechanisms. Only
  pass `src` when you actually have a URL, and leave it `null` otherwise, to get the initials
  fallback reliably.
- `isLoading` does not track an in-flight image request; treat it as a placeholder state for when
  you don't have any avatar data yet, and clear it once you have an image or a name.
- There is no `semanticLabel` parameter. Wrap the widget in `Semantics(label: 'Avatar of ...')` if
  you need screen-reader support.

## FAQ

**Can I use SVG avatars?**
Not directly. `image` is typed as `Image?`, and SVG packages (e.g. `flutter_svg`) return a
different widget type, so they can't be passed in directly.

**Can I use `cached_network_image`?**
Not directly, for the same reason — `CachedNetworkImage` isn't a subclass of `Image`.
`AvatarBrick.network()` uses Flutter's built-in `Image.network`, which relies on Flutter's default
image cache.

**How are initials generated?**
The first letter of the name plus the first letter after each space, uppercased, and truncated to
`maxAbbreviationLength` (default `2`). `"Jennie Garth"` → `"JG"`; a single-word name like
`"Jennie"` → `"J"`.

**When does the initials fallback actually show?**
Only when no image source is provided. If `src` is set but fails to load at runtime, `.network()`
shows its built-in error fallback instead of switching to initials.

**Can I customize the fallback colors?**
Yes — `backgroundColor`, `nameTextColor`, and `imageBackgroundColor` are all independently
customizable.

**Does Avatar Brick support non-circular shapes?**
Yes — omit `radius` for a full circle (default), or pass a value for a rounded-square avatar.

## License

MIT — see [LICENSE](LICENSE).
