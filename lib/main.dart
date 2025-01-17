import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vidaapp/app_module.dart';
import 'package:vidaapp/modules/00_core_modules/theme/theme.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  String apiKey = dotenv.env['API_KEY'] ?? '';
  String apiUrl = dotenv.env['API_URL'] ?? '';

  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: apiUrl,
    anonKey: apiKey,
  );
  runApp(ModularApp(module: AppModule(), child: const MyApp()));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       themeMode: ThemeMode.light,
//       title: '+Vida APP',
//       theme: AppTheme.lightTheme,
//       debugShowCheckedModeBanner: false,
//       // home: const PostDonationPage(),
//       home: MyHomePage(
//         title: 'ddkjuk',
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.light,
      title: '+Vida APP',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      // home: const PostDonationPage(),
      routerConfig: Modular.routerConfig,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   late Future<List<dynamic>> _future;

//   @override
//   void initState() {
//     super.initState();
//     _future = fetchUsers();
//   }

//   Future<List<dynamic>> fetchUsers() async {
//     final response = await Supabase.instance.client.from('type_blood').select();
//     return response as List<dynamic>;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text(widget.title),
//         ),
//         body: FutureBuilder<List<dynamic>>(
//           future: _future,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else if (snapshot.hasError) {
//               return Center(
//                 child: Text('Error: ${snapshot.error}'),
//               );
//             } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//               return const Center(
//                 child: Text('No data found'),
//               );
//             } else {
//               final users = snapshot.data!;
//               return ListView.builder(
//                 itemCount: users.length,
//                 itemBuilder: (context, index) {
//                   final user = users[index];
//                   return ListTile(
//                     title: Text(user['name']),
//                     leading: Text(user['id'].toString()),
//                   );
//                 },
//               );
//             }
//           },
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: fetchUsers,
//           child: const Icon(Icons.replay_outlined),
//         ));
//   }
// }
