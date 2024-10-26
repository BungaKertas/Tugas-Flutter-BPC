import 'package:flutter/material.dart';
import 'package:tugasririn/registrasi_screen.dart';

void main() {
  runApp(const MainActivity());
}

class MainActivity extends StatefulWidget {
  const MainActivity({super.key});

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        title: const Text("Registrasi Screen"),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Registrasi",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black26,
          ),
          ),
          const SizedBox(
                    height: 12,
                  ),
          Padding(
            padding: const EdgeInsets.all(20,),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: 'Nama',
                      hintText: 'masukkan nama',
                      prefixIcon: Icon(Icons.abc),
                      border: OutlineInputBorder(),
                    ),
            
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20,),
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                              keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'NPM',
                        hintText: 'masukkan NPM',
                        prefixIcon: Icon(Icons.abc),
                        border: OutlineInputBorder(),
                          ),
                      ),
                      const SizedBox(
                      height: 12,
                    ),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                              keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'Jurusan',
                        hintText: 'Jurusan',
                        prefixIcon: Icon(Icons.abc),
                        border: OutlineInputBorder(),
                          ),
                      ),
                       const SizedBox(
                      height: 20,
                    ),
                        ElevatedButton(onPressed:(){
                          Navigator.push(context,
                           MaterialPageRoute(builder: (context) => RegistrasiScreen(
                          
                           ))
                           );
                        }, 
                        child: const Text("Registrasi",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.teal,
                        ),)
                        ),
                    ]
                    ),
                    ),
                   ]
                   )  
                   ),
                )
            ]),
            ),
          )
        ]
        )
      )
    );
  }
}
