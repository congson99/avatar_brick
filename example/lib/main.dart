import 'package:avatar_brick/avatar_brick.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Avatar Brick Example App")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
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
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 24,
                runSpacing: 24,
                children: [
                  AvatarBrick(
                    image: Image.network(
                      "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person.jpg",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    size: const Size(80, 80),
                    image: Image.network(
                      "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person.jpg",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    size: const Size(32, 32),
                    image: Image.network(
                      "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person.jpg",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    size: const Size(16, 16),
                    image: Image.network(
                      "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person.jpg",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    size: const Size(88, 88),
                    radius: 0,
                    image: Image.network(
                      "https://media.istockphoto.com/id/1166423321/photo/portrait-business-woman-asian-on-blue-background.webp?b=1&s=170667a&w=0&k=20&c=k4ByeqnhyGUnT4wJm4baVX2mlT46iRSr65i2FwcldAk=",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    size: const Size(88, 88),
                    radius: 8,
                    image: Image.network(
                      "https://media.istockphoto.com/id/1166423321/photo/portrait-business-woman-asian-on-blue-background.webp?b=1&s=170667a&w=0&k=20&c=k4ByeqnhyGUnT4wJm4baVX2mlT46iRSr65i2FwcldAk=",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    size: const Size(88, 88),
                    radius: 32,
                    image: Image.network(
                      "https://media.istockphoto.com/id/1166423321/photo/portrait-business-woman-asian-on-blue-background.webp?b=1&s=170667a&w=0&k=20&c=k4ByeqnhyGUnT4wJm4baVX2mlT46iRSr65i2FwcldAk=",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    size: const Size(80, 80),
                    border: Border.all(width: 2, color: Colors.indigo),
                    image: Image.network(
                      "https://www.waldenu.edu/media/5504/seo-2332-bs-glad-dark-skinned-woman-with-a-393146831-1200x675",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    size: const Size(80, 80),
                    radius: 20,
                    border: Border.all(width: 6, color: Colors.orange),
                    image: Image.network(
                      "https://www.waldenu.edu/media/5504/seo-2332-bs-glad-dark-skinned-woman-with-a-393146831-1200x675",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  AvatarBrick(
                    size: const Size(80, 80),
                    border: Border.all(width: 4, color: Colors.red),
                    image: Image.network(
                      "https://www.waldenu.edu/media/5504/seo-2332-bs-glad-dark-skinned-woman-with-a-393146831-1200x675",
                      fit: BoxFit.cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                    ),
                  ),
                  const AvatarBrick(size: Size(80, 80)),
                  const AvatarBrick(
                    size: Size(80, 80),
                    isLoading: true,
                    backgroundColor: Colors.blue,
                  ),
                  AvatarBrick(
                    size: const Size(80, 80),
                    border: Border.all(width: 1, color: Colors.grey),
                    isLoading: true,
                    backgroundColor: Colors.white,
                  ),
                  const AvatarBrick(
                    size: Size(80, 80),
                    name: "Jennie Garth",
                  ),
                  AvatarBrick(
                    size: const Size(80, 80),
                    name: "Jennie Garth",
                    backgroundColor: Colors.blue,
                    nameTextColor: Colors.white,
                  ),
                  AvatarBrick(
                    size: const Size(80, 80),
                    name: "Jennie Garth",
                    backgroundColor: Colors.amber,
                    nameTextColor: Colors.orange.shade900,
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).padding.bottom + 32)
          ],
        ),
      ),
    );
  }
}
