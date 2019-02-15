import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  static const platform = MethodChannel('uk.spiralarm.display/metrics');

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  Widget _buildDrawerBack() => Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.teal,
          Colors.cyan[900],
          //Colors.green[400],

        ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
        )
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildDrawerBack(),
          Form(
                key: _formKey,
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints viewportConstraints){
                    return SingleChildScrollView(
                      child: ConstrainedBox(
                          constraints: BoxConstraints(
                        minHeight: viewportConstraints.maxHeight,
                      ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              child: Text("+saude", style:
                              TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold
                              ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                SizedBox(height: 40.0,),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      TextFormField(
                                        controller: _emailController,
                                        decoration: InputDecoration(
                                          hintText: "E-mail",
                                          hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                                        ),
                                        style: TextStyle(color: Theme.of(context).primaryColor),
                                        keyboardType: TextInputType.emailAddress,
                                        validator: (text){
                                          if(text.isEmpty || !text.contains("@")) return "Ë-mail inválido";
                                        },
                                      ),
                                      SizedBox(height: 16.0,),
                                      TextFormField(
                                        controller: _passController,
                                        decoration: InputDecoration(
                                            hintText: "Senha",
                                            hintStyle: TextStyle(color: Theme.of(context).primaryColor)
                                        ),
                                        style: TextStyle(color: Theme.of(context).primaryColor),
                                        obscureText: true,
                                        validator: (text){
                                          if(text.isEmpty || text.length<6) return "Senha Inválida";
                                        },
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: FlatButton(
                                            padding: EdgeInsets.zero,
                                            onPressed: (){
//                      if(_emailController.text.isEmpty)
//                        _scaffoldKey.currentState.showSnackBar(
//                            SnackBar(content: Text("Insira seu email para a recuperação"),
//                              backgroundColor: Colors.redAccent,
//                              duration: Duration(seconds: 2),)
//                        );
//                      else {
//                        model.recoverPass(_emailController.text);
//                        _scaffoldKey.currentState.showSnackBar(
//                            SnackBar(content: Text("Confira seu email!"),
//                              backgroundColor: Theme
//                                  .of(context)
//                                  .primaryColor,
//                              duration: Duration(seconds: 2),)
//                        );
//                      }
                                            },
                                            child: Text("Esqueci minha senha",
                                              textAlign: TextAlign.right,
                                              style: TextStyle(color: Theme.of(context).hintColor),
                                            )),
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(height: 30.0,),
                                SizedBox(
                                  height: 44.0,
                                  child: RaisedButton(
                                    child: Text(
                                      "Entrar",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    textColor: Colors.cyan[900],
                                    color: Theme.of(context).primaryColor,
                                    onPressed: (){
                                      if(_formKey.currentState.validate()){
                                      }
                                    },
                                  ),
                                ),
                                SizedBox(height: 30.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Não é cadastrado? ",
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                    FlatButton(
                                        padding: EdgeInsets.zero,
                                        onPressed: (){
                                        },
                                        child: Text("Cadastre-se",
                                          style: TextStyle(
                                            color: Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    );
                  },
                )
          ),
        ],
      ),
    );
  }
}
