import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AddMenu extends StatefulWidget {
  @override
  _AddMenuState createState() => _AddMenuState();
}

class _AddMenuState extends State<AddMenu> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final _menuFocusNode = FocusNode();
  double menurating = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key:_form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center
          ,children: <Widget>[
            Padding(padding: const EdgeInsets.all(10),
              child:Column(children: <Widget>[
                TextFormField(decoration: InputDecoration(labelText:'Menu Name'),
                ),
                SizedBox(height: 20,),
                Text('Rate this Menu'),
                SizedBox(height:20),
                RatingBar.builder(
                        minRating: 1,
                        itemSize: 40,
                        itemBuilder: (context,_)=> Icon(
                          Icons.star,
                          color:Colors.amber)
                        , onRatingUpdate: (rating)=>setState(() {
                          this.menurating = rating;
                        }),
                        ),
                TextFormField(
                          decoration:InputDecoration(labelText: 'Note'),
                          maxLines:3,
                          keyboardType: TextInputType.multiline,
                          

                        ),
                SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(child: const Text('Cancel'),
                  onPressed: (){},),
                  
                  ElevatedButton(onPressed: (){}, child: const Text('Done'))
                ],)
                


              ]),)
            
          ],
          )
        )

      
    );
  }
}