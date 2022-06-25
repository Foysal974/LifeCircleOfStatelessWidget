import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() {
    print('CreateState Method Called');
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {


  var title='';
  var scroll=ScrollController();

  var myList=[''];

  @override
  void initState() {
    title='Home Page';
    print('IntState called');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Build Method called');

    return Scaffold(

      appBar: AppBar(
        title:Text(title),
        actions: [
          IconButton(onPressed:(){
            setState((){

              myList.add('Foysal');


            });},
            icon:const Icon(Icons.add))],
      ),
    drawer: ListView.builder(
          itemCount: myList.length,
          itemBuilder:(contex,index){
          return ListTile(title: Text(myList[index]),);
        },
      ),
    );
  }

@override
  void dispose(){
  print('Dispose Method Called');
    scroll.removeListener(() { });
    super.dispose();
  }
}
