part of 'widgets.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: width,
        // color: Colors.red,
        child: GestureDetector(
          onTap: () async {
            print('Buscando....');
            final SearchResult resultado = await showSearch(
              context: context,
              delegate: SearchDestination(),
            );
            this.retornoBusqueda(resultado);
            print(resultado);
          },
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 50,
            child: Text(
              '¿Dónde quieres ir?',
              style: TextStyle(color: Colors.black87),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(0, 5),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void retornoBusqueda(SearchResult result) {
    if (result.cancelo) return;
  }
}
