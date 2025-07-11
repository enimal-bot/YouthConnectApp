import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart' hide CarouselController;

void main() {
  runApp(YouthConnectApp());
}

class YouthConnectApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouthConnect',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Roboto',
      ),
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // Liste des écrans pour chaque onglet
  final List<Widget> _screens = [
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/home.png', width: 24, height: 24, color: Colors.grey),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/news.png', width: 24, height: 24, color: Colors.grey),
            label: 'Actualites',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/google-docs.png', width: 24, height: 24, color: Colors.grey),
            label: 'Ressources',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/chat.png', width: 24, height: 24, color: Colors.grey),
            label: 'Forum',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/user.png', width: 24, height: 24, color: Colors.grey),
            label: 'Compte',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 28, top: 40),
          child: SizedBox(
          width: 150, 
          height: 60, 
          child:Image.asset('assets/images/Logo_YouthConnekt_Burkina.png', fit: BoxFit.contain, filterQuality: FilterQuality.high,),
          ),
        ),
          title: null,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 28, top: 40),
          child: IconButton(
            icon: Image.asset('assets/icons/active.png', width: 32, height: 32),
            onPressed: () {},
          ),
        ),
      ],
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Section des onglets du haut
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCustomTab('Projets', true),
                  _buildCustomTab('Annonces', false),
                  _buildCustomTab('E-Services', false),
                  _buildCustomTab('Tutoriels', false),
                ],
              ),
            ),
            SizedBox(height: 10),
            
            // Section image principale avec actualités
            Container(
  margin: EdgeInsets.symmetric(horizontal: 16),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: CarouselSlider(
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1.0,
      ),
      items: [
        // Slide 1
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/slide1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: _buildSlideContent(
            title: "Bienvenue à YouthConnekt Burkina Faso",
            description: "YouthConnekt Burkina Faso (YCB) est une initiative locale qui vise à autonomiser les jeunes...",
          ),
        ),
        // Slide 2
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/slide2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: _buildSlideContent(
            title: "Découvrez nos programmes",
            description: "Formations, emplois et opportunités pour les jeunes burkinabés",
          ),
        ),
        // Ajoute d'autres slides au besoin
      ],
    ),
  ),
),
            
            SizedBox(height: 20),
            
            // Section Offres
            _buildSectionTitle('Offres'),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildServiceCard(
                    icon: Icons.business_center,
                    title: 'Stages',
                    color: Colors.orange,
                  ),
                  _buildServiceCard(
                    icon: Icons.work,
                    title: 'Emplois',
                    color: Colors.orange,
                  ),
                  _buildServiceCard(
                    icon: Icons.description,
                    title: 'Appels d\'offres',
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 20),
            
            // Section Émissions et communiqués
            _buildSectionTitle('Émissions et communiqués'),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildServiceCard(
                    icon: Icons.radio,
                    title: 'Émissions radios',
                    color: Colors.teal,
                  ),
                  _buildServiceCard(
                    icon: Icons.tv,
                    title: 'Émissions tele',
                    color: Colors.teal,
                  ),
                  _buildServiceCard(
                    icon: Icons.chat,
                    title: 'Chat',
                    color: Colors.teal,
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 20),
            
            // Section Opportunités
            _buildSectionTitle('Opportunités'),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildServiceCard(
                    icon: Icons.school,
                    title: 'Bourses',
                    color: Colors.blue,
                  ),
                  _buildServiceCard(
                    icon: Icons.people,
                    title: 'Formations',
                    color: Colors.blue,
                  ),
                  _buildServiceCard(
                    icon: Icons.shopping_cart,
                    title: 'Marketplace',
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomTab(String title, bool isActive) {
    return Container(
    //margin: EdgeInsets.only(left: 25, right: 25), 
    width: 80, 
    height: 36, 
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8), 
      color: isActive ? Color(0xFFF1592A).withOpacity(0.15) : Colors.transparent, 
    ),
    child: Center(
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          color: isActive ? Color.fromARGB(255, 15, 15, 15) : Colors.grey[600],
        ),
      ),
    ),
  );
}

  Widget _buildSectionTitle(String title) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_up,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard({
    required IconData icon,
    required String title,
    required Color color,
  }) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    icon,
                    color: color,
                    size: 30,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
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

Widget _buildSlideContent({required String title, required String description}) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.transparent,
          Colors.black.withOpacity(0.7),
        ],
      ),
    ),
    padding: EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                blurRadius: 10,
                color: Colors.black,
                offset: Offset(2, 2),
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
        Text(
          description,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            height: 1.4,
          ),
        ),
      ],
    ),
  );
}

// Écrans pour les autres onglets
class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Actualites'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          'Écran des actualites',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ressources'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          'Écran des ressources',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forum'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          'Écran du forum',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compte'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          'Écran du compte',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}