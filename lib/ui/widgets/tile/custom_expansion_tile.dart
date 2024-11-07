import 'package:flutter/material.dart';
import 'package:learning_programming_languages/ui/screens/detail/category_detail_screen.dart';

class CustomExpansionTile extends StatefulWidget {
  final Widget title;
  String text;

  final List<Widget> children;

  CustomExpansionTile({
    required this.title,
    required this.text,
    required this.children,
  });

  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 3),
              tileColor: Colors.white,
              title: widget.title,
              leading: widget.children.isEmpty
                  ? null
                  : RotationTransition(
                      turns: _animation,
                      child: IconButton(
                        onPressed: _toggleExpansion,
                        icon: Icon(Icons.arrow_drop_down),
                      )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            CategoryDetailScreen(text: widget.text)));
              },
            ),
            ClipRect(
              child: Align(
                heightFactor: _animation.value,
                child: Column(
                  children: widget.children,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
