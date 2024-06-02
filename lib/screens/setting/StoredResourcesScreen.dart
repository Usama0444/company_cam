import 'package:company_cam/core/Text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StoredResourcesScreen(),
    );
  }
}

class StoredResourcesScreen extends StatefulWidget {
  @override
  _StoredResourcesScreenState createState() => _StoredResourcesScreenState();
}

class _StoredResourcesScreenState extends State<StoredResourcesScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<ResourceItem> stickers = [
    ResourceItem(icon: Icons.check, label: 'Check mark', size: '4 KB'),
    ResourceItem(icon: Icons.close, label: 'X Mark', size: '5.2 KB'),
    ResourceItem(icon: Icons.thumb_up, label: 'Thumbs Up', size: '7.5 KB'),
    ResourceItem(icon: Icons.thumb_down, label: 'Thumbs Down', size: '7.6 KB'),
    ResourceItem(icon: Icons.warning, label: 'Warning', size: '6.2 KB'),
    ResourceItem(icon: Icons.approval, label: 'Approved', size: '10 KB'),
    ResourceItem(icon: Icons.done_all, label: 'Finished', size: '8.8 KB'),
  ];

  final List<ResourceItem> templates = [
    ResourceItem(icon: Icons.check, label: 'Check mark', size: '4 KB'),
    ResourceItem(icon: Icons.close, label: 'X Mark', size: '5.2 KB'),
    ResourceItem(icon: Icons.thumb_up, label: 'Thumbs Up', size: '7.5 KB'),
    ResourceItem(icon: Icons.thumb_down, label: 'Thumbs Down', size: '7.6 KB'),
    ResourceItem(icon: Icons.warning, label: 'Warning', size: '6.2 KB'),
    ResourceItem(icon: Icons.approval, label: 'Approved', size: '10 KB'),
    ResourceItem(icon: Icons.done_all, label: 'Finished', size: '8.8 KB'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
        title: Text(
          'Stored Resources',
          style: TextStyles.h1
              ?.copyWith(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          tabs: [
            Tab(text: 'B/A Templates'),
            Tab(text: 'Stickers'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          TempalateList(resources: templates),
          ResourceList(resources: stickers),
        ],
      ),
    );
  }
}

class ResourceList extends StatelessWidget {
  final List<ResourceItem> resources;

  ResourceList({required this.resources});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: resources.length,
      itemBuilder: (context, index) {
        final resource = resources[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(border: Border.all()),
                child: Center(child: Icon(resource.icon, size: 30.sp))),
            title: Text(resource.label),
            subtitle: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Size: ${resource.size}'),
                    Text(
                      'Downloaded',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.black,
                    ),
                    Text(
                      'Delete',
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class TempalateList extends StatelessWidget {
  final List<ResourceItem> resources;

  TempalateList({required this.resources});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: resources.length,
      itemBuilder: (context, index) {
        final resource = resources[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(border: Border.all()),
                child: FittedBox(
                    child: Icon(
                  Icons.image,
                  size: 50,
                ))),
            title: Text(resource.label),
            subtitle: Row(
              children: [
                Text('Size: ${resource.size}'),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.download_sharp,
                      color: Colors.black,
                    ),
                    Text(
                      'Download',
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ResourceItem {
  final IconData icon;
  final String label;
  final String size;

  ResourceItem({required this.icon, required this.label, required this.size});
}
