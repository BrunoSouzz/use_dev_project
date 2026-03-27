import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Parte Superior: Newsletter (Verde)
        Container(
          width: double.infinity,
          color: const Color(0xFF8FFF24),
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            children: [
              const Text(
                "Inscreva-se para ganhar\ndescontos!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Orbitron',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D0221),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Cadastre seu email, receba novidades\ne descontos imperdíveis antes de todo mundo!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: Color(0xFF0D0221),
                ),
              ),
              const SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                  hintText: "Digite seu melhor endereço de email",
                  hintStyle: const TextStyle(fontSize: 13, color: Colors.black54),
                  filled: true,
                  fillColor: Colors.transparent,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Color(0xFF0D0221), width: 1.5),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF780BF7),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                child: const Text("Inscrever", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 18)),
              ),
            ],
          ),
        ),

        // Parte Inferior: Informações e Redes (Escuro)
        Container(
          width: double.infinity,
          color: const Color(0xFF0D0221),
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/UseDev.png', height: 40, color: const Color(0xFF8FFF24)),
              const SizedBox(height: 10),
              const Text(
                  "Hora de abraçar seu lado geek!",
                  style: TextStyle(color: Color(0xFF8FFF24), fontFamily: 'Poppins', fontSize: 14)
              ),
              const SizedBox(height: 20),
              const Divider(color: Color(0xFF8FFF24), thickness: 2, indent: 60, endIndent: 60,),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _footerLinkSection("Funcionamento", "Segunda a Sexta - 8h às 18h\nsac@usedev.com.br\n0800 541 320"),
                  _footerLinkSection("Institucional", "Sobre nós\nContato\nPolítica de Privacidade\nLGPD - Lei de proteção de dados"),
                  _footerLinkSection("Informações", "Entregas\nGarantia\nTrocas e devoluções"),
                  const SizedBox(height: 20),
                  const Text(
                    "Formas de Pagamento",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Wrap(
                    spacing: 12,
                    runSpacing: 10,
                    alignment: WrapAlignment.start,
                    children: [
                      _buildPaymentIcon('assets/images/ico-cartao-visa.png'),
                      _buildPaymentIcon('assets/images/ico-cartao-master.png'),
                      _buildPaymentIcon('assets/images/ico-cartao-elo.png'),
                      _buildPaymentIcon('assets/images/ico-cartao-diners.png'),
                      _buildPaymentIcon('assets/images/ico-pix.png'),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    "Siga nossas redes:",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildSocialIcon('assets/images/Whatsapp.png'),
                      const SizedBox(width: 25),
                      _buildSocialIcon('assets/images/instagram.png'),
                      const SizedBox(width: 25),
                      _buildSocialIcon('assets/images/Tiktok.png'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  // MÉTODOS AUXILIARES (PRIVADOS)
  Widget _buildPaymentIcon(String path) {
    return Image.asset(
      path,
      height: 25,
      fit: BoxFit.contain,
    );
  }

  Widget _buildSocialIcon(String path) {
    return Image.asset(
      path,
      height: 35,
      color: const Color(0xFFFF55DF),
      fit: BoxFit.contain,
    );
  }

  Widget _footerLinkSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'Poppins'
            ),
          ),
          const SizedBox(height: 10),
          Text(
            content,
            textAlign: TextAlign.left,
            style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
                height: 1.6
            ),
          ),
        ],
      ),
    );
  }
}