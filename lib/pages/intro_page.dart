import 'package:flutter/material.dart';
import 'package:ideathon/pages/home.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          backgroundColor: Colors.grey[300],
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //logo -
                    Center(child: Image.asset('lib/images/nikelogo.PNG',height: 210,width: 280,)),
                
                    const SizedBox(height: 60,),
                
                    //title -

                    const Text(
                      'Just Do It',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                    ),
                
                    const SizedBox(height: 20,),
                    //subtitle
                
                    const Text(
                      'Brank new sneakers and custom kicks made with premium quality',
                      style: TextStyle(fontSize: 16,color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                
                    const SizedBox(height: 48,),
                
                    //start now button
                
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(19),
                        width: 330,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Text(
                            'Shop Now',
                            style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                            )
                          ,)
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
      
        );
 
  }
}
