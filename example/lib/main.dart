import 'package:avatar_brick/avatar_brick.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avatar Brick Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('Avatar Brick Example')),
        body: const SafeArea(child: DemoPage()),
      ),
    );
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _Section('Image avatar', [
                _Case(
                  'Network image',
                  AvatarBrick.network(
                    src: 'https://avatars.githubusercontent.com/u/1',
                  ),
                ),
                _Case(
                  'Asset image',
                  AvatarBrick.asset(src: 'assets/images/logo.png'),
                ),
                _Case(
                  'Raw Image widget',
                  AvatarBrick(
                    image: Image.network(
                      'https://avatars.githubusercontent.com/u/2',
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                ),
                _Case(
                  'Network error fallback',
                  AvatarBrick.network(
                    src: 'https://this-domain-does-not-exist.invalid/x.png',
                  ),
                ),
              ]),
              const _Section('Initials avatar', [
                _Case(
                  'Two initials (default)',
                  AvatarBrick(name: 'Jennie Garth'),
                ),
                _Case(
                  'One initial',
                  AvatarBrick(name: 'Jennie Garth', maxAbbreviationLength: 1),
                ),
                _Case(
                  'Three initials',
                  AvatarBrick(
                    name: 'Jennie Garth Rose',
                    maxAbbreviationLength: 3,
                  ),
                ),
                _Case(
                  'Single-word name',
                  AvatarBrick(name: 'Jennie'),
                ),
              ]),
              const _Section('Icon fallback & loading', [
                _Case('Empty (no icon)', AvatarBrick()),
                _Case(
                  'Icon fallback',
                  AvatarBrick(
                    backgroundColor: Colors.black26,
                    icon: Icon(Icons.person_rounded, size: 48, color: Colors.white),
                  ),
                ),
                _Case(
                  'Loading (light background)',
                  AvatarBrick(isLoading: true, backgroundColor: Colors.white),
                ),
                _Case(
                  'Loading (dark background)',
                  AvatarBrick(isLoading: true, backgroundColor: Colors.black87),
                ),
              ]),
              _Section('Size', [
                _Case(
                  'Small (48x48)',
                  AvatarBrick.network(
                    src: 'https://avatars.githubusercontent.com/u/3',
                    size: const Size(48, 48),
                  ),
                ),
                _Case(
                  'Default (80x80)',
                  AvatarBrick.network(
                    src: 'https://avatars.githubusercontent.com/u/3',
                  ),
                ),
                _Case(
                  'Large (120x120)',
                  AvatarBrick.network(
                    src: 'https://avatars.githubusercontent.com/u/3',
                    size: const Size(120, 120),
                  ),
                ),
              ]),
              const _Section('Colors', [
                _Case(
                  'backgroundColor only',
                  AvatarBrick(name: 'Jennie Garth', backgroundColor: Colors.blue),
                ),
                _Case(
                  'nameTextColor only',
                  AvatarBrick(name: 'Jennie Garth', nameTextColor: Colors.teal),
                ),
                _Case(
                  'Both colors set',
                  AvatarBrick(
                    name: 'Jennie Garth',
                    backgroundColor: Colors.white,
                    nameTextColor: Colors.teal,
                  ),
                ),
              ]),
              _Section('Shape (radius)', [
                _Case(
                  'Circle (default)',
                  AvatarBrick.network(
                    src: 'https://avatars.githubusercontent.com/u/4',
                  ),
                ),
                _Case(
                  'Rounded square',
                  AvatarBrick.network(
                    src: 'https://avatars.githubusercontent.com/u/4',
                    radius: 16,
                  ),
                ),
                _Case(
                  'Near-square',
                  AvatarBrick.network(
                    src: 'https://avatars.githubusercontent.com/u/4',
                    radius: 4,
                  ),
                ),
              ]),
              _Section('Border', [
                _Case(
                  'Thin border',
                  AvatarBrick(
                    name: 'Jennie Garth',
                    backgroundColor: Colors.white,
                    nameTextColor: Colors.teal,
                    border: Border.all(width: 2, color: Colors.orange),
                  ),
                ),
                _Case(
                  'Thick border',
                  AvatarBrick(
                    name: 'Jennie Garth',
                    backgroundColor: Colors.white,
                    nameTextColor: Colors.teal,
                    border: Border.all(width: 6, color: Colors.purple),
                  ),
                ),
              ]),
              _Section('Box shadow', [
                const _Case(
                  'Soft shadow',
                  AvatarBrick(
                    name: 'Jennie Garth',
                    boxShadows: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 8,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                ),
                _Case(
                  'Border + shadow + radius',
                  AvatarBrick.network(
                    src: 'https://avatars.githubusercontent.com/u/5',
                    radius: 24,
                    border: Border.all(width: 2, color: Colors.orange),
                    boxShadows: const [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 8,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                ),
              ]),
              const _Section('Custom text style', [
                _Case(
                  'Italic, bold, bigger',
                  AvatarBrick(
                    name: 'Jennie Garth',
                    size: Size(100, 100),
                    backgroundColor: Colors.indigo,
                    nameTextColor: Colors.white,
                    nameTextStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
              ], isLast: true),
            ],
          ),
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section(this.title, this.cases, {this.isLast = false});

  final String title;
  final List<_Case> cases;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 24,
          runSpacing: 24,
          children: cases,
        ),
        SizedBox(height: isLast ? 8 : 40),
        if (!isLast) const Divider(height: 1),
        if (!isLast) const SizedBox(height: 40),
      ],
    );
  }
}

class _Case extends StatelessWidget {
  const _Case(this.label, this.avatar);

  final String label;
  final Widget avatar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: Column(
        children: [
          avatar,
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
