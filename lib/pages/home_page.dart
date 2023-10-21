
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/pages/login_page.dart';
import 'package:trilhaapp/service/gerador_numero_aleatorio.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var numeroGerado = 0;
  var quantidadeClicks = 0;

  
  @override
  Widget build(BuildContext context) {
    debugPrint("Chamando build");
    Text(
      "lalala"
    );
    return Scaffold(
      appBar:AppBar(
        title: Text("Meu App"),
        actions: [Container(
          margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
          child: IconButton(
            icon: Icon(Icons.arrow_circle_right, size:50),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()))
        ,
          ),
        )]
        
        ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
              
            children: [
              Expanded(
                
                child: Container(
                  width: double.infinity,
                  color: Colors.blueAccent,
                  child: Text(numeroGerado.toString(),
                              style: GoogleFonts.acme(fontSize: 20)),
                ),
              ),
              Expanded(
                child: Container (
                  width: double.infinity,
                  color: Colors.orange,
                  child: Text( "Foi clicado $quantidadeClicks vezes"))
              ),
              Expanded(
                child: Row(
                   
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.red,
                        child: Text(
                          "10"
                        ),
                      ),
                    ),                
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.green,
                        child: Text(
                          "20"),
                      ),
                    ),               
                    Container(
                      
                      color: Colors.lightBlue,
                      child: Text(
                        "30"
                      ),
                    ),                
                    Container(
                      color: Colors.yellow,
                      child: Text(
                        "40"
                      ),
                    )
                ],),
              )],
              
          ),
        ),
    
      ),
      floatingActionButton: FloatingActionButton(
        
        child: const Icon(Icons.add_box),
        onPressed: () {

          setState(() {
            numeroGerado = GeradorNumeroAleatorioService.gerarNumeroAleatorio(10);
            quantidadeClicks += 1;
            print(numeroGerado);
          });
        }
      ),
    );
    // const Placeholder(); Container
  }
}