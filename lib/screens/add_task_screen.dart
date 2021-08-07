import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text('Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent,
                    fontSize: 30),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(

              ),),
              SizedBox(height: 20),
              FlatButton(

                color: Colors.lightBlueAccent,
                onPressed: (){},
                child: Text('Add',
                  style: TextStyle(color: Colors.white,
                      fontSize: 20),),)
            ],
          ),
        ),
      ),
    );
  }
}
