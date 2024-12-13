import 'package:flutter/material.dart';
import 'package:examen_cvm/widgets/widgets.dart';

class ListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Pistas'),
            onTap: () {
              Navigator.pushNamed(context, '/pistasScreen');
            },
          ),
          ListTile(
            title: Text('Monitores'),
            onTap: () {
              Navigator.pushNamed(context, '/monitoresScreen');
            },
          ),
          ListTile(
            title: Text('Reservas'),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Aviso'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                            'El sistema de reservas está deshabilitado en estos momentos.'),
                        SizedBox(height: 10),
                        FlutterLogo(size: 100),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Cancelar'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
