import 'package:flutter/material.dart';

class PorteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5271ff), // Cor de fundo azul
      body: SafeArea(
        child: Column(
          children: [
            // Adiciona um espaço no topo para centralizar melhor os elementos
            Spacer(),

            // Logo e título "Pet Feliz"
            Text(
              'Pet Feliz',
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            // Título "Agendamento"
            Text(
              'Agendamento',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40),

            // Container com as opções de porte
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    // Opção Porte Pequeno
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (bool? value) {},
                          activeColor: Color(0xff5271ff),
                        ),
                        Text(
                          'Porte pequeno',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff5271ff),
                          ),
                        ),
                      ],
                    ),

                    // Opção Porte Médio
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (bool? value) {},
                          activeColor: Color(0xff5271ff),
                        ),
                        Text(
                          'Porte Medio',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff5271ff),
                          ),
                        ),
                      ],
                    ),

                    // Opção Porte Grande
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (bool? value) {},
                          activeColor: Color(0xff5271ff),
                        ),
                        Text(
                          'Porte grande',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff5271ff),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Adiciona um espaço no final para centralizar melhor os elementos
            Spacer(),

            // Pegadas decorativas na parte inferior
            Padding(
              padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.pets, color: Colors.white, size: 30),
                    SizedBox(height: 10),
                    Icon(Icons.pets, color: Colors.white, size: 24),
                    SizedBox(height: 10),
                    Icon(Icons.pets, color: Colors.white, size: 18),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
