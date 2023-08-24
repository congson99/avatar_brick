import 'package:avatar_brick/avatar_brick.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: DemoPage());
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Avatar Brick Example App")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Row(
                children: [
                  Column(
                    children: [
                      /// -------------------------------
                      /// Create the avatar with an image
                      /// -------------------------------
                      AvatarBrick(
                        image: Image.network(
                          "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person.jpg",
                          fit: BoxFit.cover,
                          height: double.maxFinite,
                          width: double.maxFinite,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Jennie Garth",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(width: 24),
                  Column(
                    children: [
                      /// -----------------------------
                      /// Create the avatar with a name
                      /// -----------------------------
                      AvatarBrick(
                        name: "Jennie Garth",
                        backgroundColor: Colors.blue,
                        nameTextColor: Colors.white,
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Jennie Garth",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 56),
              Row(
                children: const [
                  /// ----------------------------------------
                  /// Create the avatar with the loading state
                  /// ----------------------------------------
                  AvatarBrick(backgroundColor: Colors.black26),
                  SizedBox(width: 32),
                  AvatarBrick(isLoading: true),
                ],
              ),
              const SizedBox(height: 56),

              /// --------------------
              /// Customize the avatar
              /// --------------------
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [
                  AvatarBrick(
                    size: const Size(120, 120),
                    image: Image.network(
                      "https://www.waldenu.edu/media/5504/seo-2332-bs-glad-dark-skinned-woman-with-a-393146831-1200x675",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    size: const Size(80, 80),
                    image: Image.network(
                      "https://www.waldenu.edu/media/5504/seo-2332-bs-glad-dark-skinned-woman-with-a-393146831-1200x675",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    size: const Size(32, 32),
                    image: Image.network(
                      "https://www.waldenu.edu/media/5504/seo-2332-bs-glad-dark-skinned-woman-with-a-393146831-1200x675",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    size: const Size(16, 16),
                    image: Image.network(
                      "https://www.waldenu.edu/media/5504/seo-2332-bs-glad-dark-skinned-woman-with-a-393146831-1200x675",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 56),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [
                  AvatarBrick(
                    radius: 0,
                    image: Image.network(
                      "https://media.istockphoto.com/id/1166423321/photo/portrait-business-woman-asian-on-blue-background.webp?b=1&s=170667a&w=0&k=20&c=k4ByeqnhyGUnT4wJm4baVX2mlT46iRSr65i2FwcldAk=",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    radius: 12,
                    image: Image.network(
                      "https://media.istockphoto.com/id/1166423321/photo/portrait-business-woman-asian-on-blue-background.webp?b=1&s=170667a&w=0&k=20&c=k4ByeqnhyGUnT4wJm4baVX2mlT46iRSr65i2FwcldAk=",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    radius: 32,
                    image: Image.network(
                      "https://media.istockphoto.com/id/1166423321/photo/portrait-business-woman-asian-on-blue-background.webp?b=1&s=170667a&w=0&k=20&c=k4ByeqnhyGUnT4wJm4baVX2mlT46iRSr65i2FwcldAk=",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    radius: 0,
                    border: Border.all(width: 2, color: Colors.indigo),
                    image: Image.network(
                      "https://media.istockphoto.com/id/1166423321/photo/portrait-business-woman-asian-on-blue-background.webp?b=1&s=170667a&w=0&k=20&c=k4ByeqnhyGUnT4wJm4baVX2mlT46iRSr65i2FwcldAk=",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    radius: 24,
                    border: Border.all(width: 6, color: Colors.orange),
                    image: Image.network(
                      "https://media.istockphoto.com/id/1166423321/photo/portrait-business-woman-asian-on-blue-background.webp?b=1&s=170667a&w=0&k=20&c=k4ByeqnhyGUnT4wJm4baVX2mlT46iRSr65i2FwcldAk=",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    name: "Avatar Brick",
                    backgroundColor: Colors.white,
                    nameTextColor: Colors.teal,
                    border: Border.all(width: 4, color: Colors.teal),
                  ),
                  AvatarBrick(
                    radius: 12,
                    boxShadows: const [
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 8,
                          offset: Offset(2, 4))
                    ],
                    image: Image.network(
                      "https://media.istockphoto.com/id/1166423321/photo/portrait-business-woman-asian-on-blue-background.webp?b=1&s=170667a&w=0&k=20&c=k4ByeqnhyGUnT4wJm4baVX2mlT46iRSr65i2FwcldAk=",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    boxShadows: const [
                      BoxShadow(
                        color: Colors.lightBlue,
                        blurRadius: 16,
                      )
                    ],
                    image: Image.network(
                      "https://media.istockphoto.com/id/1166423321/photo/portrait-business-woman-asian-on-blue-background.webp?b=1&s=170667a&w=0&k=20&c=k4ByeqnhyGUnT4wJm4baVX2mlT46iRSr65i2FwcldAk=",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    name: "Avatar Brick",
                    backgroundColor: Colors.cyanAccent,
                    nameTextColor: Colors.indigo,
                    boxShadows: [
                      BoxShadow(
                          color: Colors.indigo.shade200,
                          blurRadius: 8,
                          offset: const Offset(0, 2))
                    ],
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).padding.bottom + 32),
            ],
          ),
        ),
      ),
    );
  }
}
