import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                      width: 48,
                      height: 48,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "http://ambiel.adv.br/wp-content/uploads/2021/07/avatar-user-1.jpg"),
                      )),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Jack Martines",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.0,
                                  color: Colors.blueGrey.shade900)),
                          const SizedBox(height: 3),
                          Text("Morning, Jack",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.blueGrey.shade400))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(92, 104, 128, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 8,
                              spreadRadius: 0)
                        ]),
                    child: const Icon(
                      Icons.notifications_none_rounded,
                      size: 22.0,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: TextField(
                controller: _searchController,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide: const BorderSide(color: Colors.black26),
                    ),
                    filled: true,
                    prefixIcon:
                        const Icon(Icons.search_rounded, color: Colors.black26),
                    hintText: 'Pesquise suas Tarefas, Projetos...'),
                onChanged: null,
                onSubmitted: (v) {},
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
