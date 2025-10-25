import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String batch;
  final String duration;
  final String avaible;
  final String image;

  const CourseCard({
    required this.title,
    required this.batch,
    required this.duration,
    required this.avaible,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(5),

        border: BoxBorder.all(color: Color(
            0x62C1B7B7), width: 2),
      ),

      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(3)),
            child: Image.network(
              image,

              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

           Container(
              decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(width: 2, color: Color(
                    0x62C1B7B7)))
              ),

              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color(0xFFEAECF0),
                    ),

                    child: Row(
                      children: [
                        //Icon(Icons.punch_clock, size: 11,),
                        Text(batch, style: TextStyle(fontSize: 8)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color(0xFFEAECF0),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.person_2_outlined, size: 8),

                        Text(avaible, style: TextStyle(fontSize: 8)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color(0xFFEAECF0),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.punch_clock, size: 8),

                        Text(duration, style: TextStyle(fontSize: 8)),
                      ],
                    ),
                  ),
                ],
              ),
            ),


          Padding(
            padding: const EdgeInsets.all(3.5),
            child: Container(
              child: Column(




                children: [
                  Text(title,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,

                  ),

                  ),



                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFEAECF0),
                      alignment: Alignment.bottomCenter,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),

                      ),

                      minimumSize: Size(double.infinity, 25),
                    ),
                    onPressed: () {},
                    child: Text("বিস্তারিত দেখি→"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
