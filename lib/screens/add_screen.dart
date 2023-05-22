import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


import '../widgets/addMenu.dart';

class AddRestaurant extends StatefulWidget {
  static const routeName = '/add-restaurant';
  @override
  _AddRestaurantState createState() => _AddRestaurantState();
}

class _AddRestaurantState extends State<AddRestaurant> {
  //final _nameController = TextEditingController();
  final _nameFocusNode = FocusNode();
  final _noteFocusNode = FocusNode();
  final _priceFocusNode = FocusNode();
  double rating = 0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Add Restaurant'),
      ),
      body:Container(
        child: Form(
          key: _formKey,
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SingleChildScrollView(
                  child: Padding(padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget> [
                      TextFormField(

                        decoration: InputDecoration(labelText:'Restaurant Name'),
                        
                        //controller: _nameController,
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:<Widget> [
                      Text('Rate this restaurant'),
                      SizedBox(height:10),
                      
                      ]
                      ),
                      RatingBar.builder(
                        minRating: 1,
                        itemSize: 40,
                        itemBuilder: (context,_)=> Icon(
                          Icons.star,
                          color:Colors.amber)
                        , onRatingUpdate: (rating)=>setState(() {
                          this.rating = rating;
                        }),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration:InputDecoration(labelText:'Price'),
                          textInputAction: TextInputAction.next,
                          focusNode: _priceFocusNode,
                          keyboardType: TextInputType.number,
                          
                        ),
                        TextFormField(
                          decoration:InputDecoration(labelText: 'Note'),
                          maxLines:3,
                          keyboardType: TextInputType.multiline,
                          focusNode: _noteFocusNode,

                        ),
                        SizedBox(height: 10,),
                        Text('Add Menu (optional)'),
                        TextButton(onPressed: (){
                          showDialog(context: context, builder: (BuildContext context){
                            return AlertDialog(
                              title: Text('Add Menu'),
                              content: AddMenu()
                            );

                          });
                        }
                        , child: Text('Click to Add'))



                        
                        



                    ]
                    ,)
                  ))
                

            ]
            ,),
        )
      )
      
    );
  }
}