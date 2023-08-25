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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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

              /// --------------------
              /// Customize the avatar
              /// --------------------
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                spacing: 24,
                runSpacing: 24,
                children: [
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
                    image: Image.network(
                      "https://media.istockphoto.com/id/1166423321/photo/portrait-business-woman-asian-on-blue-background.webp?b=1&s=170667a&w=0&k=20&c=k4ByeqnhyGUnT4wJm4baVX2mlT46iRSr65i2FwcldAk=",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    radius: 12,
                    border: Border.all(width: 2, color: Colors.indigo),
                    image: Image.network(
                      "https://media.istockphoto.com/id/1166423321/photo/portrait-business-woman-asian-on-blue-background.webp?b=1&s=170667a&w=0&k=20&c=k4ByeqnhyGUnT4wJm4baVX2mlT46iRSr65i2FwcldAk=",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    border: Border.all(width: 6, color: Colors.orange),
                    image: Image.network(
                      "https://media.istockphoto.com/id/1166423321/photo/portrait-business-woman-asian-on-blue-background.webp?b=1&s=170667a&w=0&k=20&c=k4ByeqnhyGUnT4wJm4baVX2mlT46iRSr65i2FwcldAk=",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
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
                          color: Colors.blueAccent,
                          blurRadius: 4,
                          spreadRadius: 2)
                    ],
                    image: Image.network(
                      "https://media.istockphoto.com/id/1166423321/photo/portrait-business-woman-asian-on-blue-background.webp?b=1&s=170667a&w=0&k=20&c=k4ByeqnhyGUnT4wJm4baVX2mlT46iRSr65i2FwcldAk=",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  const AvatarBrick(
                    name: "Avatar Brick",
                  ),
                  AvatarBrick(
                    name: "Avatar Brick",
                    backgroundColor: Colors.white,
                    nameTextColor: Colors.teal,
                    border: Border.all(width: 4, color: Colors.teal),
                  ),
                  AvatarBrick(
                    name: "Avatar Brick",
                    backgroundColor: Colors.cyanAccent,
                    nameTextColor: Colors.indigo,
                    boxShadows: const [
                      BoxShadow(
                        color: Colors.indigo,
                        blurRadius: 4,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  const AvatarBrick(
                    backgroundColor: Colors.black26,
                  ),
                  const AvatarBrick(
                    isLoading: true,
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
