import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // mengimplementasikan CustomScrollView
        body: CustomScrollView(
          slivers: [
            // mengimplementasikan SliverAppBar
            SliverAppBar(
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.list),
                color: Colors.white,
              ),
              expandedHeight: 400,
              pinned: true,
              backgroundColor: Colors.blue[600],
              flexibleSpace: const FlexibleSpaceBar(
                title: Text(
                  'EXPLORE BANYUMAS',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                centerTitle: true,
                background: Image(
                  image: NetworkImage(
                      'https://cdn.theatlantic.com/thumbor/i9jH00gdQ3Lov_7DI2xDujaTwQQ=/845x470:2635x1477/1600x900/media/img/mt/2016/03/RTX283V4/original.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Mengimplementasikan SliverList
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 5.0, top: 30.0, left: 15),
                    child: Text(
                      'Rekomendasi Wisata Banyumas',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcRM2kOh8fSjhj1F1fT3USyYS_v_Pk0X3dOGpVobpOWavn3eqm_Cc2qf4RVBzxgzG4qDUb6UwLl0ftoAQW32fCjHBJ7ki1h3Brak_bh3wA',
                            fit: BoxFit.cover,
                            height: 200,
                            width: double.infinity,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Curug Jenggala',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 115,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 24,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.grey,
                                    size: 24,
                                  ),
                                  Text(
                                    ' Baturraden, Kabupaten Banyumas',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // batas
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.network(
                            'https://lh5.googleusercontent.com/p/AF1QipNt--F-PjjVYksIRctBEMDZAWOOdks9gCF2VQVT=w729-h421-n-k-no',
                            fit: BoxFit.cover,
                            height: 200,
                            width: double.infinity,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gua Maria Kaliori',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 105,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 24,
                                  ),
                                  Text(
                                    '4.0',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.grey,
                                    size: 24,
                                  ),
                                  Text(
                                    'Kalibagor, Kabupaten Banyumas',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.network(
                            'https://lh3.googleusercontent.com/p/AF1QipORxrWf4Mzn0Uj62kuMS6mDwtmCDCYoR68rZWhb=s1360-w1360-h1020',
                            fit: BoxFit.cover,
                            height: 200,
                            width: double.infinity,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lokawisata Baturaden',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 55,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 24,
                                  ),
                                  Text(
                                    '4.3',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.grey,
                                    size: 24,
                                  ),
                                  Text(
                                    'Baturraden, Kabupaten Banyumas',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.network(
                            'https://awsimages.detik.net.id/community/media/visual/2024/06/28/curug-bayan-banyumas_169.jpeg?w=1200',
                            fit: BoxFit.cover,
                            height: 200,
                            width: double.infinity,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Curug Bayan',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 145,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 24,
                                  ),
                                  Text(
                                    '4.0',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.grey,
                                    size: 24,
                                  ),
                                  Text(
                                    'Baturaden, kabupaten Banyumas',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.network(
                            'https://bobobox.com/blog/wp-content//uploads/2023/07/Jam-Buka-Telaga-Sunyi.jpg',
                            fit: BoxFit.cover,
                            height: 200,
                            width: double.infinity,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Telaga Sunyi',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 145,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 24,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.grey,
                                    size: 24,
                                  ),
                                  Text(
                                    'Kec. Sumbang, Kabupaten Banyumas',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
