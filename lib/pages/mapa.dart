import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:simulado2/styles/cores.dart';
import 'package:simulado2/styles/fonts.dart';

class Mapa extends StatelessWidget {
  const Mapa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
            child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  color: Cores.verdeEscuro,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'GoGo Trip',
                        style: TextStyle(
                          fontSize: Fonte.fonteSubtitulo,
                          fontFamily: Fonte.fonte,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Salvador',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: Fonte.fonte,
                          color: Colors.white,
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GoogleMap(
                      zoomControlsEnabled: false,
                      zoomGesturesEnabled: false,
                      initialCameraPosition: CameraPosition(
                        target: LatLng(-12.976390858297673, -38.48058858492815),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Salvador, a capital do estado da Bahia no nordeste do Brasil, é conhecida pela arquitetura colonial portuguesa, pela cultura afrobrasileira e pelo litoral tropical. O bairro do Pelourinho é seu coração histórico, com vielas de paralelepípedo terminando em praças grandes, prédios coloridos e igrejas barrocas, como São Francisco, com trabalhos em madeira revestidos com ouro',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: Fonte.fontePadrao,
                      fontFamily: Fonte.fonte,
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
