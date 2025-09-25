import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos um tema para dar um visual moderno ao app
    return MaterialApp(
      title: 'Goal Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Novo esquema de cores
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Alteramos a variável de controle:
  int count = 0;
  final int dailyGoal = 10; // Definimos uma nova meta diária (era 20)

  void decrement() {
    setState(() {
      count = count > 0 ? count - 1 : 0; // Garantimos que o contador não seja negativo
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  // Novas variáveis de estado:
  bool get isGoalReached => count >= dailyGoal;
  bool get isZero => count == 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Removendo a imagem de fundo para usar o tema Material 3
      appBar: AppBar(
        title: const Text('Rastreador de Metas Diárias', style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),
      body: Center( // Usamos Center para centralizar o conteúdo facilmente
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                // Mensagem baseada na meta alcançada
                isGoalReached ? 'META ALCANÇADA!' : 'Faltam ${dailyGoal - count} para a meta!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: isGoalReached ? 32 : 24,
                  color: isGoalReached ? Colors.green.shade700 : Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              // Indicador Visual do Contador
              Text(
                count.toString(),
                style: TextStyle(
                  fontSize: 120,
                  fontWeight: FontWeight.w200,
                  color: isGoalReached ? Colors.green.shade700 : Colors.black87,
                ),
              ),
              Text(
                'Meta: $dailyGoal', // Exibe a meta
                style: const TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const SizedBox(height: 60),
              // Botões de Ação
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Botão de Decremento (-1)
                  ElevatedButton(
                    onPressed: isZero ? null : decrement,
                    style: ElevatedButton.styleFrom(
                      // Usamos cores do tema (Material 3)
                      backgroundColor: isZero ? Colors.grey.shade300 : Colors.red,
                      foregroundColor: isZero ? Colors.grey : Colors.white,
                      minimumSize: const Size(120, 120),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 5,
                    ),
                    child: const Text(
                      '-1',
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 40),
                  // Botão de Incremento (+1)
                  ElevatedButton(
                    onPressed: increment,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(120, 120),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 5,
                    ),
                    child: const Text(
                      '+1',
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              // Botão de Reset (Novo!)
              TextButton(
                onPressed: () {
                  setState(() {
                    count = 0;
                  });
                },
                child: const Text('Zerar Contador', style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}