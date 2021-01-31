import 'package:flutter/material.dart';

class ExpandSample extends StatefulWidget {
  @override
  _ExpandSampleState createState() => _ExpandSampleState();
}

class _ExpandSampleState extends State<ExpandSample> {

  ///If the box is expanded
  bool _isExpanded = false;

    ///Toogle the box to expand or collapse
  void _toogleExpand() {
    // TODO-4: A vous d'implémenter le changement de valeur _isExpanded
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Formation Dart & Flutter - Row | Column | Animation'),
              Material(
                color: Colors.blue,
                child: InkWell(
                  // TODO-3: Renseigner le paramètre nommé 'onTap'
                  // Faites appel à la méthode _toogleExpand pour faire l'expand ou le collapse
                  // onTap: ...
                  child: Container(
                    padding: EdgeInsets.all(25.0),
                    width: double.infinity,
                    child: Text(
                        'Click me to ' + (_isExpanded ? 'collapse' : 'expand')),
                  ),
                ),
              ),
              Visibility(
                child: Text("Tu me vois et après tu ne me vois plus 😆 😆 "),
                visible: _isExpanded,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
