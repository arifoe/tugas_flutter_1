import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text('About me'),
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  <Widget> [

            const CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage('assets/images/male_avatar.png'),
            ),
            
            const SizedBox(height: 50,),
            
            Row(
              children: [
                Expanded(
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset('assets/images/male_avatar.png'),)
                ),
                Expanded(flex: 2, child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                  child: const Text('Name', style: TextStyle(fontSize: 18),),
                )),
                Expanded(flex: 4, child: Container(
                  padding: EdgeInsets.zero,
                  child: const Text(': Arifurahman', style: TextStyle(fontSize: 18),),
                ))
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset('assets/images/address.png'),
                  ),
                ),
                Expanded(flex: 2, child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                  child: const Text('Address', style: TextStyle(fontSize: 18),),
                )),
                Expanded(flex: 4, child: Container(
                  padding: EdgeInsets.zero,
                  child: const Text(': Jombang - East Java', style: TextStyle(fontSize: 18),),
                ))
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset('assets/images/edu.png'),
                  ),
                ),
                Expanded(flex: 2, child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                  child: const Text('Education', style: TextStyle(fontSize: 18),),
                )),
                Expanded(flex: 4, child: Container(
                  padding: EdgeInsets.zero,
                  child: const Text(': Electrical Engineering', style: TextStyle(fontSize: 18),),
                ))
              ],
            ),
            const SizedBox(height: 50,),
            SizedBox(
              width: 100,
              height: 100,
              child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Image.asset('assets/images/back.png'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
