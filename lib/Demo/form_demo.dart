import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterForm(),
    );;
  }
}
/********************************* Form 注册界面 ********************************/
class RegisterForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterFormState();
  }
}

class RegisterFormState extends State<RegisterForm> {

//  TextEditingController _textEditingController = TextEditingController();
  final registerFormKey = GlobalKey<FormState>();

  String userName, passWord;

  bool autovalidate = false;

  void onSubmitted() {
    //执行保存onSaved
    registerFormKey.currentState.save();
    registerFormKey.currentState.validate();

    setState(() {
      autovalidate = true;
    });

    print(this.userName);
  }


  String userNameValidator(String value) {
    return value.isEmpty ? 'UserName 不能为空' : null;
  }

  String passWordValidator(String value) {
    return value.isEmpty ? 'PassWord 不能为空' : null;
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.greenAccent,
          child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 200.0
              ),
          ),
        ),
        Form(
            key: registerFormKey,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      //icon: Icon(Icons.person),
                        labelText: 'Username',
                        labelStyle: TextStyle(
                            fontSize: 10.0,
                            color: Colors.grey
                        ),
                        /*border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.greenAccent
                    )
                  )*/
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            )
                        ),

//                        prefixIcon: Icon(Icons.person),
//
//                        suffixIcon: Icon(Icons.print,color: Colors.grey,),
//                        suffixText: 'Suf',
//                        suffixStyle: TextStyle(
//                            color: Colors.red
//                        ),
//                        counterText: 'counter',

//                        fillColor: Colors.black12,
//                        filled: true,

                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blueGrey
                            )
                        ),
//                        semanticCounterText: 'Semantic',
//                        alignLabelWithHint: true,

                      helperText: '',



                    ),
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15.0
                    ),

                    onSaved: (value){
                      this.userName = value;
                    },

                    validator: userNameValidator,
                    autovalidate: autovalidate,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      //icon: Icon(Icons.person),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            fontSize: 10.0,
                            color: Colors.grey
                        ),
                        /*border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.greenAccent
                    )
                  )*/
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            )
                        ),

                        prefixIcon: Icon(Icons.work),

                        suffixIcon: Icon(Icons.print,color: Colors.grey,),
                        suffixText: 'Suf',
                        suffixStyle: TextStyle(
                            color: Colors.red
                        ),
                        counterText: 'counter',

                        fillColor: Colors.black12,
                        filled: true,

                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blueGrey
                            )
                        ),
                        semanticCounterText: 'Semantic',
                        alignLabelWithHint: true


                    ),
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15.0
                    ),
                    obscureText: true,

                    onSaved: (value){
                      this.passWord = value;
                    },

                    validator: passWordValidator,
                    autovalidate: autovalidate,
                  ),
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text('Register'),
                      color: Colors.blue,
                      onPressed: onSubmitted,

                    ),
                  )
                ],
              ),
            )
        )
      ],
    );
  }
}


/********************************* 已下是 Theme 的使用 ********************************/
class TextFieldDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextFieldDemoState();
  }
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: TextField(

          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            hintText: '请输入用户名',
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 11.0
            ),
            icon: Icon(Icons.person,color: Colors.blueGrey,),
            labelText: 'UserName',
            labelStyle: TextStyle(
              color: Colors.blueGrey,
              fontSize: 14.0
            ),
            helperText: '请输入用户名',
            helperStyle: TextStyle(
              color: Colors.red
            ),
            contentPadding: EdgeInsets.only(left: 0.0),
            //enabled: false,
//            border:
          ),
          style: TextStyle(
            color: Colors.red,
            fontSize: 20

          ),


          onTap: (){
            print("TextField--onTap");
          },

          onChanged: (value){
            print(value);
          },
        ),
    );
  }
}


/********************************* 已下是 Theme 的使用 ********************************/
/*
*   使用主体
*   自定义主体色，child中会使用自定义的 主题色
*/
class UseThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*//直接会覆盖 MaterialApp 中设置的主题
      body: Theme(
          data: ThemeData(
            primaryColor: Colors.blueGrey,
          ),
          child: CustomThemeDemo(),
      ),*/

      body: Theme(
          //不会全部覆盖 MaterialApp 中设置的主题，如果不重新设置MaterialApp中已经设置过的属性，就好保留
          data: Theme.of(context).copyWith(
              primaryColor: Colors.greenAccent,
            primaryColorDark: Colors.red
          ),
          child: CustomThemeDemo()
      ),
    );
  }
}

class CustomThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColorDark,
    );
  }
}
