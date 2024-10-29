import 'package:flutter/material.dart';

class HorarioScreen extends StatelessWidget {
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

            // Subtítulo "Escolha seu horário"
            Text(
              'Escolha seu horário',
              style: TextStyle(
                fontSize: 28,
                color: Color(0xfff4f6ff), // Cor do texto #f4f6ff
              ),
            ),
            SizedBox(height: 40),

            // Grade de horários (6 botões em 2 colunas)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Número de colunas (2 por linha)
                    crossAxisSpacing: 20, // Espaçamento horizontal
                    mainAxisSpacing: 20,  // Espaçamento vertical
                    childAspectRatio: 2.5, // Proporção largura/altura dos botões
                  ),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return ElevatedButton(
                      onPressed: () {
                        // Navega para a tela de dados do agendamento ao selecionar o horário
                        Navigator.pushNamed(context, '/dados_agendamento');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xfff4f6ff), // Cor do botão #f4f6ff
                        foregroundColor: Color(0xff5271ff), // Cor do texto no botão
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15), // Borda arredondada
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16), // Padding para ajustar altura dos botões
                        elevation: 5, // Sombra para destacar o botão
                      ),
                      child: Text(
                        '08:00', // Exemplo de horário
                        style: TextStyle(
                          fontSize: 16,  // Tamanho da fonte ajustado
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            // Pegadas decorativas na parte inferior direita
            Padding(
              padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.pets, color: Color(0xfff4f6ff), size: 30),
                    SizedBox(width: 10),  // Espaço entre as pegadas
                    Icon(Icons.pets, color: Color(0xfff4f6ff), size: 24),
                    SizedBox(width: 10),  // Espaço entre as pegadas
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
