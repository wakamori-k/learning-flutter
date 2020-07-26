import 'package:flutter/material.dart';

class Footer extends StatefulWidget{
  const Footer();

  @override
  _Footer createState() => _Footer();
}

class _Footer extends State {
  int _selectedIndex = 0;
  final _bottomNabigationBarItems = <BottomNavigationBarItem>[];

  static const _footerIcons = [
    Icons.home,
    Icons.textsms,
    Icons.access_time,
    Icons.content_paste,
    Icons.work
  ];

  static const _footerItemNames = [
    "ホーム",
    "トーク",
    "タイムライン",
    "ニュース",
    "ウォレット"
  ];

  @override
  void initState() {
    super.initState();

    // 最左だけactiveにする
    _bottomNabigationBarItems.add(_UpdateActiveState(0));

    for (var i=1; i<_footerItemNames.length; i++) {
      _bottomNabigationBarItems.add(_UpdateDeactiveState(i));
    }
  }

  BottomNavigationBarItem _UpdateActiveState(int index) {
    return BottomNavigationBarItem(
      icon: Icon(
        _footerIcons[index],
        color: Colors.black87
      ),
      title: Text(
        _footerItemNames[index],
        style: TextStyle(
          color: Colors.black87
        ),
      ),
    );
  }

  BottomNavigationBarItem _UpdateDeactiveState(int index) {
    return BottomNavigationBarItem(
      icon: Icon(
        _footerIcons[index],
        color: Colors.black26 // activeでないItemは薄い色で表示
      ),
      title: Text(
        _footerItemNames[index],
        style: TextStyle(
          color: Colors.black26
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _bottomNabigationBarItems[_selectedIndex] = _UpdateDeactiveState(_selectedIndex);
      _bottomNabigationBarItems[index] = _UpdateActiveState(index);
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: _bottomNabigationBarItems,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}