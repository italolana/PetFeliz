import 'package:flutter/material.dart';

class DadosAgendamentoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5271ff), // Cor de fundo azul #5271ff
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            // Título "Pet Feliz"
            Text(
              'Pet Feliz',
              style: TextStyle(
                fontSize: 36,
                color: Color(0xfff4f6ff), // Cor do texto #f4f6ff
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            // Subtítulo "Dados de agendamento"
            Text(
              'Dados de agendamento',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xfff4f6ff),
              ),
            ),
            SizedBox(height: 20),

            // Formulário
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xfff4f6ff),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Campo Nome do Pet
                    Text(
                      'Nome do Pet',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff5271ff),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Campo Idade
                    Text(
                      'Idade',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff5271ff),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: false,
                                  onChanged: (bool? newValue) {},
                                ),
                                Text(
                                  'Macho',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff5271ff),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: false,
                                  onChanged: (bool? newValue) {},
                                ),
                                Text(
                                  'Fêmea',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff5271ff),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    // Campo Obs
                    Text(
                      'Obs:',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff5271ff),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Botões Confirmar e Cancelar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Ação de confirmar
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    ),
                    child: Text(
                      'Confirmar',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Volta para a tela anterior ao cancelar
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    ),
                    child: Text(
                      'Cancelar',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Pegadas decorativas na parte inferior direita
            Padding(
              padding: const EdgeInsets.only(right: 16.0, bottom: 16.0, top: 20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.pets, color: Color(0xfff4f6ff), size: 30),
                    SizedBox(width: 10),
                    Icon(Icons.pets, color: Color(0xfff4f6ff), size: 24),
                    SizedBox(width: 10),
                    Icon(Icons.pets, color: Color(0xfff4f6ff), size: 18),
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
