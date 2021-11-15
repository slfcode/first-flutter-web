// ignore for_file: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({ Key? key }) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {

    Widget navItem({String judul = '', int index = 0})  {
      
      return InkWell(

        onTap:(){
          setState(()   {
            selectedIndex = index;
          });
        },

        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                judul,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Color(0xff1D1E3C),
                    fontWeight: index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
                ),
              ),
      
              Container(
                width: 66,
                height: 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),                
                  color: index == selectedIndex ? 
                  Color(0xffFE998D) : 
                  Colors.transparent,
                ),
              ),
            ],
          ),
      );
    }


    return Scaffold(

      body: Stack(

        children: [

          Image.asset(
            'background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),

          Padding(
            
            padding: EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 30,
            ),

            child: Column(
              children: [
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [

                    Image.asset(
                      'logo.png', 
                      width: 72,
                      height: 40,
                    ),

                    // Navigasi

                    Row(
                      children: [

                        navItem(
                          judul: 'Guides',
                          index: 0,
                        ),

                        SizedBox(width: 50),

                        navItem(
                          judul: 'Pricing',
                          index: 1,
                        ),

                        SizedBox(width: 50),

                        navItem(
                          judul: 'Team',
                          index: 2,
                        ),

                        SizedBox(width: 50),

                        navItem(
                          judul: 'Stories',
                          index: 3,
                        ),

                      ],
                    ),
                    
                    // Navigasi

                    Image.asset(
                      'btn.png',
                      width: 163,
                      height: 53,
                    ),
                  ],
                ),

                SizedBox(
                  height: 76,
                ),

                Image.asset(
                  'ilustration.png',
                  width: 550,
                ),

                SizedBox(height: 84,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'Icon_down_solid.png',
                      width: 24,
                    ),

                    SizedBox(
                      width: 13,
                    ),

                    Text(
                      
                      'Scroll to Learn More',
                      
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                      ),

                    ),

                  ],

                ),

              ],

            ),

            

          ),
        ],
      ),
    );
  }
}