import 'package:app/resources/resources.dart';
import 'package:flutter/material.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Фильмы',
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ]),
      body: const MovieListWidget(),
    );
  }
}

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({Key? key}) : super(key: key);

  void _onMovieTab(int index) {
    Navigator.of(context).pushName('/movie_screen/movie_details')
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemExtent: 163,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.2)),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 0,
                        offset: const Offset(0, 2))
                  ],
                ),
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [
                    const Image(image: AssetImage(AppImages.mortalCombat)),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Mortal Combat',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.8)),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'April 7, 2021',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Washed-up MMA fighter Cole Young, unaware of his heritage, and hunted by Empero',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.8)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () => _onMovieTab(index),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
