import 'package:exactapp/pages/categories/components/category_card.dart';
import 'package:flutter/material.dart';

class JobCategoriesPage extends StatefulWidget {
  const JobCategoriesPage({super.key});

  @override
  State<JobCategoriesPage> createState() => _JobCategoriesPageState();
}

class _JobCategoriesPageState extends State<JobCategoriesPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarTextStyle: const TextStyle(
          color: Color.fromARGB(255, 9, 25, 66),
        ),
        backgroundColor: Colors.blueGrey.withOpacity(0.08),
        title: const Text(
          'Job Categories',
          style: TextStyle(
              color: Color.fromARGB(255, 9, 25, 66),
              fontWeight: FontWeight.w400),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: const Color.fromARGB(255, 9, 25, 66),
          unselectedLabelColor: Colors.grey,
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(color: Color.fromARGB(255, 9, 25, 66)),
            insets: EdgeInsets.symmetric(horizontal: 16.0),
          ),
          tabs: const [
            Tab(text: 'By Jobs'),
            Tab(text: 'By Industry'),
            Tab(text: 'By Location'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ByJobsTab(),
          ByIndustryTab(),
          ByLocationTab(),
        ],
      ),
    );
  }
}

class ByJobsTab extends StatefulWidget {
  const ByJobsTab({super.key});

  @override
  State<ByJobsTab> createState() => _ByJobsTabState();
}

class _ByJobsTabState extends State<ByJobsTab> {
  final List<Map<String, dynamic>> jobs = [
    {'name': 'Agriculture', 'count': 0},
    {'name': 'Automotive', 'count': 0},
    {'name': 'Banking And Financial Services', 'count': 12},
    {'name': 'Construction', 'count': 0},
    {'name': 'Consultancy', 'count': 1},
    {'name': 'Education', 'count': 1},
    {'name': 'Electrical And Electronics', 'count': 0},
    {'name': 'Fast-Moving Consumer Goods', 'count': 0},
    {'name': 'Food And Beverages', 'count': 0},
    {'name': 'Hospital/Health Care', 'count': 3},
    {'name': 'Hospitality', 'count': 0},
    {'name': 'International Affairs/Diplomacy', 'count': 0},
    {'name': 'It/Technology', 'count': 1},
    {'name': 'Logistics/Transportation', 'count': 3},
    {'name': 'Manufacturing', 'count': 5},
    {'name': 'Mechanical Engineering', 'count': 1},
    {'name': 'Mining', 'count': 6},
    {'name': 'NGO/CBO/IOG/Project', 'count': 21},
    {'name': 'Oil And Gas', 'count': 1},
    {'name': 'Solar And Green Energy', 'count': 1},
    {'name': 'Trade/Retail/Wholesales/Commerce', 'count': 4},
    {'name': 'Travel And Tourism', 'count': 1},
  ];

  String searchQuery = '';
  List<Map<String, dynamic>> filteredJobs = [];

  @override
  void initState() {
    super.initState();
    filteredJobs = jobs;
  }

  void filterJobs(String query) {
    setState(() {
      searchQuery = query;
      filteredJobs = jobs
          .where(
              (job) => job['name'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchBar(onSearch: filterJobs),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(8.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 3.0,
              mainAxisSpacing: 1.0,
              childAspectRatio: 2.5,
            ),
            itemCount: filteredJobs.length,
            itemBuilder: (context, index) {
              final job = filteredJobs[index];
              return CategoryCard(
                name: job['name'],
                count: '${job['count']} Jobs',
              );
            },
          ),
        ),
      ],
    );
  }
}

class ByIndustryTab extends StatefulWidget {
  const ByIndustryTab({super.key});

  @override
  State<ByIndustryTab> createState() => _ByIndustryTabState();
}

class _ByIndustryTabState extends State<ByIndustryTab> {
  final List<Map<String, dynamic>> industries = [
    {'name': 'Agriculture', 'count': 0},
    {'name': 'Automotive', 'count': 0},
    {'name': 'Banking And Financial Services', 'count': 12},
    {'name': 'Construction', 'count': 0},
    {'name': 'Consultancy', 'count': 1},
    {'name': 'Education', 'count': 1},
    {'name': 'Electrical And Electronics', 'count': 0},
    {'name': 'Fast-Moving Consumer Goods', 'count': 0},
    {'name': 'Food And Beverages', 'count': 0},
    {'name': 'Hospital/Health Care', 'count': 3},
    {'name': 'Hospitality', 'count': 0},
    {'name': 'International Affairs/Diplomacy', 'count': 0},
    {'name': 'It/Technology', 'count': 1},
    {'name': 'Logistics/Transportation', 'count': 3},
    {'name': 'Manufacturing', 'count': 5},
    {'name': 'Mechanical Engineering', 'count': 1},
    {'name': 'Mining', 'count': 6},
    {'name': 'NGO/CBO/IOG/Project', 'count': 21},
    {'name': 'Oil And Gas', 'count': 1},
    {'name': 'Solar And Green Energy', 'count': 1},
    {'name': 'Trade/Retail/Wholesales/Commerce', 'count': 4},
    {'name': 'Travel And Tourism', 'count': 1},
  ];

  String searchQuery = '';
  List<Map<String, dynamic>> filteredIndustries = [];

  @override
  void initState() {
    super.initState();
    filteredIndustries = industries;
  }

  void filterIndustries(String query) {
    setState(() {
      searchQuery = query;
      filteredIndustries = industries
          .where((industry) =>
              industry['name'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchBar(onSearch: filterIndustries),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(8.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 3.0,
              mainAxisSpacing: 1.0,
              childAspectRatio: 2.5,
            ),
            itemCount: filteredIndustries.length,
            itemBuilder: (context, index) {
              final industry = filteredIndustries[index];
              return CategoryCard(
                name: industry['name'],
                count: '${industry['count']} jobs',
              );
            },
          ),
        ),
      ],
    );
  }
}

class ByLocationTab extends StatefulWidget {
  const ByLocationTab({super.key});

  @override
  State<ByLocationTab> createState() => _ByLocationTabState();
}

class _ByLocationTabState extends State<ByLocationTab> {
  final List<Map<String, dynamic>> locations = [
    {'name': 'Zanzibar', 'count': 2},
    {'name': 'Rukwa', 'count': 1},
    {'name': 'Pwani', 'count': 1},
    {'name': 'Mwanza', 'count': 10},
    {'name': 'Mtwara', 'count': 2},
    {'name': 'Morogoro', 'count': 6},
    {'name': 'Mbeya', 'count': 1},
    {'name': 'Mara', 'count': 1},
    {'name': 'Kigoma', 'count': 5},
    {'name': 'Geita', 'count': 1},
    {'name': 'Dodoma', 'count': 3},
    {'name': 'Dar es Salaam', 'count': 50},
    {'name': 'Arusha', 'count': 15},
    {'name': 'Tanga', 'count': 3},
    {'name': 'Tabora', 'count': 4},
    {'name': 'Singida', 'count': 2},
    {'name': 'Shinyanga', 'count': 1},
  ];

  String searchQuery = '';
  List<Map<String, dynamic>> filteredLocations = [];

  @override
  void initState() {
    super.initState();
    filteredLocations = locations;
  }

  void filterLocations(String query) {
    setState(() {
      searchQuery = query;
      filteredLocations = locations
          .where((location) =>
              location['name'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchBar(onSearch: filterLocations),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(8.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 3.0,
              mainAxisSpacing: 1.0,
              childAspectRatio: 2.5,
            ),
            itemCount: filteredLocations.length,
            itemBuilder: (context, index) {
              final location = filteredLocations[index];
              return CategoryCard(
                name: location['name'],
                count: '${location['count']} jobs',
              );
            },
          ),
        ),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  final Function(String) onSearch;

  const SearchBar({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
          fontSize: 15,
          color: Color.fromARGB(255, 9, 25, 66),
          fontWeight: FontWeight.w300),
      onChanged: onSearch,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        hintText: 'Search jobs',
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 15,
          fontWeight: FontWeight.w300,
        ),
        suffix: const Icon(
          Icons.search,
          color: Color.fromARGB(255, 9, 25, 66),
          weight: 0.6,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              width: 0.4, color: Color.fromARGB(255, 9, 25, 66)),
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              width: 0.4, color: Color.fromARGB(255, 9, 25, 66)),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
