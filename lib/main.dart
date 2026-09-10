import 'package:flutter/material.dart';

void main() {
  runApp(const VigneshPortfolio());
}

class VigneshPortfolio extends StatelessWidget {
  const VigneshPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vignesh Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

// ================= HOME PAGE =================

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 900,
            ),
            padding: EdgeInsets.all(
              isMobile ? 20 : 50,
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),

                // Profile
                const CircleAvatar(
                  radius: 65,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.person,
                    size: 75,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 25),

                // Name
                Text(
                  'Vignesh',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isMobile ? 30 : 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                // Branch
                const Text(
                  'B.Tech - CSE-AIML',
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Computer Science & Artificial Intelligence '
                  'and Machine Learning',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 25),

                // Introduction
                const Text(
                  'I am a Computer Science and Artificial Intelligence '
                  'and Machine Learning student interested in Python, '
                  'data analysis and machine learning. I enjoy learning '
                  'new technologies and building practical projects.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.7,
                  ),
                ),

                const SizedBox(height: 35),

                // Navigation buttons
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 15,
                  runSpacing: 15,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const AboutPage(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.person),
                      label: const Text('About Me'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ProjectsPage(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.code),
                      label: const Text('My Projects'),
                    ),
                  ],
                ),

                const SizedBox(height: 35),

                const Text(
                  'Python • NumPy • Pandas • Machine Learning',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
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

// ================= ABOUT PAGE =================

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 900,
            ),
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                const Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  'I am Vignesh, a B.Tech student specializing in '
                  'Computer Science and Artificial Intelligence '
                  'and Machine Learning (CSE-AIML). I am interested '
                  'in Python programming, data analysis and machine '
                  'learning. I am currently improving my skills by '
                  'working on practical projects using NumPy, Pandas '
                  'and machine learning techniques.',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.7,
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  'Education',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                Card(
                  child: ListTile(
                    leading: const Icon(
                      Icons.school,
                      color: Colors.blue,
                    ),
                    title: const Text(
                      'B.Tech - CSE-AIML',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      'Computer Science and Artificial '
                      'Intelligence & Machine Learning',
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  'Technical Skills',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: const [
                    SkillChip('Python'),
                    SkillChip('NumPy'),
                    SkillChip('Pandas'),
                    SkillChip('Machine Learning'),
                    SkillChip('HTML'),
                    SkillChip('CSS'),
                  ],
                ),

                const SizedBox(height: 30),

                const Text(
                  'Areas of Interest',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: const [
                    SkillChip('Artificial Intelligence'),
                    SkillChip('Machine Learning'),
                    SkillChip('Data Analysis'),
                    SkillChip('Python Programming'),
                  ],
                ),

                const SizedBox(height: 35),

                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.home),
                    label: const Text('Back to Home'),
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

// ================= SKILL CHIP =================

class SkillChip extends StatelessWidget {
  final String skill;

  const SkillChip(
    this.skill, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: const Icon(
        Icons.check_circle,
        size: 18,
        color: Colors.blue,
      ),
      label: Text(skill),
    );
  }
}

// ================= PROJECTS PAGE =================

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Projects'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 900,
            ),
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                const Text(
                  'My Projects',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 25),

                ProjectCard(
                  title: 'Student Performance Prediction',
                  technologies:
                      'Python • NumPy • Pandas • Machine Learning',
                  description:
                      'A beginner machine learning project that '
                      'analyzes student performance data using '
                      'Pandas and NumPy and predicts student '
                      'performance using a machine learning model.',
                  icon: Icons.school,
                ),

                ProjectCard(
                  title: 'Data Analysis using Pandas',
                  technologies:
                      'Python • Pandas • NumPy',
                  description:
                      'A data analysis project using a sample '
                      'dataset. The project performs data cleaning, '
                      'filtering, sorting and basic statistical '
                      'analysis using Pandas and NumPy.',
                  icon: Icons.analytics,
                ),

                ProjectCard(
                  title: 'House Price Prediction',
                  technologies:
                      'Python • NumPy • Pandas • Machine Learning',
                  description:
                      'A beginner-level machine learning project '
                      'that uses housing data to predict house '
                      'prices based on different features using '
                      'a regression model.',
                  icon: Icons.home_work,
                ),

                const SizedBox(height: 15),

                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.home),
                  label: const Text('Back to Home'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ================= PROJECT CARD =================

class ProjectCard extends StatelessWidget {
  final String title;
  final String technologies;
  final String description;
  final IconData icon;

  const ProjectCard({
    super.key,
    required this.title,
    required this.technologies,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 35,
                  color: Colors.blue,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Text(
              technologies,
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              description,
              style: const TextStyle(
                fontSize: 15,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}