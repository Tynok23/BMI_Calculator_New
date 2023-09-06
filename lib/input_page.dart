import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight =80.0;
const activeCardColour = Color(0xFF282B4E);
const inactiveCardColour = Color(0xFF14143A);
const bottomContainerColour = Color(0xFFFF0067);

enum Gender {
  male,
  female,
}


class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {




  Gender? selectedGender;






  @override

  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child:
              ReusableCard(
                onPress: (){
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                colour:selectedGender ==Gender.male ? activeCardColour : inactiveCardColour,
                cardChild:IconContent(icon: FontAwesomeIcons.mars, label: 'MALE',) ,
              ),
              ),
              Expanded(child: ReusableCard(
                onPress: (){
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                colour:selectedGender ==Gender.female ? activeCardColour : inactiveCardColour,
                cardChild:IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE',) ,
              ),
              ),
            ],
          ),),
          Expanded(child: ReusableCard(
            onPress: (){},
            colour:activeCardColour,
            cardChild:IconContent(icon: FontAwesomeIcons.mars, label: 'MALE',) ,
          ),
          ),
          Expanded(child: Row(
    children: [
    Expanded(child: ReusableCard(
      onPress: (){},
      colour:activeCardColour ,
      cardChild:IconContent(icon: FontAwesomeIcons.mars, label: 'MALE',) ,
    ),
    ),
    Expanded(child: ReusableCard(
      onPress: (){},
      colour:activeCardColour ,
      cardChild:IconContent(icon: FontAwesomeIcons.mars, label: 'MALE',) ,
    ),
    ),
        ],
        ),),
        Container(
          color: bottomContainerColour,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height:  bottomContainerHeight,
        )
        ],),);

  }
}



