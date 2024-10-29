import 'package:flutter/material.dart';

class PorteScreen extends StatefulWidget {
  @override
  _PorteScreenState createState() => _PorteScreenState();
}

class _PorteScreenState extends State<PorteScreen> {
  String? _selectedPorte; // Variável para armazenar o porte selecionado

  // Função para atualizar o porte e navegar para a tela de horário
  void _onPorteSelected(String porte) {
    setState(() {
      _selectedPorte = porte;
    });
    Navigator.pushNamed(context, '/horario'); // Navega para a tela de horário
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5271ff),
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),

            Text(
              'Pet Feliz',
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            Text(
              'Agendamento',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40),

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
                    RadioListTile(
                      title: Text(
                        'Porte pequeno',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff5271ff),
                        ),
                      ),
                      value: 'Porte pequeno',
                      groupValue: _selectedPorte,
                      onChanged: (String? value) {
                        _onPorteSelected(value!); // Chama a função ao selecionar
                      },
                    ),
                    // Opção Porte Médio
                    RadioListTile(
                      title: Text(
                        'Porte Médio',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff5271ff),
                        ),
                      ),
                      value: 'Porte Médio',
                      groupValue: _selectedPorte,
                      onChanged: (String? value) {
                        _onPorteSelected(value!);
                      },
                    ),
                    // Opção Porte Grande
                    RadioListTile(
                      title: Text(
                        'Porte Grande',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff5271ff),
                        ),
                      ),
                      value: 'Porte Grande',
                      groupValue: _selectedPorte,
                      onChanged: (String? value) {
                        _onPorteSelected(value!);
                      },
                    ),
                  ],
                ),
              ),
            ),

            Spacer(),

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
