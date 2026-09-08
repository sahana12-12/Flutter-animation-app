import 'package:flutter/material.dart';

void main() {
  runApp(const AnimationApp());
}

class AnimationApp extends StatelessWidget {
  const AnimationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8F6A58),
        ),
        useMaterial3: true,
      ),
      home: const AnimationPage(),
    );
  }
}

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  bool isLarge = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Animations',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF8F6A58),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF5EBDD),
              Color(0xFFEBDCCB),
              Color(0xFFDCC7D0),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'ANIMATION',
                  style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 4,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF8A6A58),
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Smooth Transitions',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4B3428),
                  ),
                ),

                const SizedBox(height: 30),

                Card(
                  elevation: 10,
                  shadowColor: Colors.black26,
                  color: const Color(0xFFFFFBF5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(28),
                    child: Column(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOut,
                          width: isLarge ? 300 : 150,
                          height: isLarge ? 300 : 150,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFFB98B73),
                                Color(0xFF9B6F5A),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(
                              isLarge ? 50 : 20,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 18,
                                spreadRadius: 3,
                                offset: Offset(0, 8),
                              ),
                            ],
                          ),
                          child: Center(
                            child: AnimatedSwitcher(
                              duration: const Duration(milliseconds: 400),
                              child: Text(
                                isLarge ? 'FLUTTER' : 'Flutter',
                                key: ValueKey(isLarge),
                                style: TextStyle(
                                  fontSize: isLarge ? 32 : 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 35),

                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              setState(() {
                                isLarge = !isLarge;
                              });
                            },
                            icon: const Icon(Icons.animation_rounded),
                            label: Text(
                              isLarge ? 'Shrink Widget' : 'Animate Widget',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF9B6F5A),
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                vertical: 17,
                              ),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          child: Text(
                            isLarge
                                ? 'Widget is Large'
                                : 'Widget is Small',
                            key: ValueKey(isLarge),
                            style: const TextStyle(
                              color: Color(0xFF8F6A58),
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 22),

                const Text(
                  'Experiment 06 • Flutter Animations',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xFF8A6A58),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}