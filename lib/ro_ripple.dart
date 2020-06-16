import 'package:flutter/material.dart';

///封装InkWell，更方便的实现带圆角的水波纹按钮
class RoRipple extends StatefulWidget {
  ///圆角半径
  final double radius;
  ///水波纹宽度
  final double width;
  ///水波纹高度
  final double height;
  ///按钮区域颜色
  final Color backgroundColor;
  ///点击回调
  final GestureTapCallback onTap;
  ///水波纹颜色
  final Color splashColor;
  ///点击|触摸时候显示的颜色
  final Color highlightColor;
  ///子view
  final Widget child;

  ///构造方法
  const RoRipple({
    Key key,
    this.radius = 0.0,
    this.width = double.infinity,
    this.height = double.infinity,
    this.backgroundColor = Colors.grey,
    this.onTap,
    this.splashColor = Colors.white,
    this.highlightColor = Colors.white,
    this.child,
  }) : super(key: key);

  @override
  _RoRippleState createState() => _RoRippleState();
}

class _RoRippleState extends State<RoRipple> {
  @override
  Widget build(BuildContext context) {
    return Material(
      //控件背景区域圆角以及水波纹扩散填充的圆角
      borderRadius: BorderRadius.circular(widget.radius),
      child: Ink(
        decoration: BoxDecoration(
          color: widget.backgroundColor,
        ),
        child: InkWell(
          //点击|触摸的时候,高亮显示的颜色
          highlightColor: widget.highlightColor??Theme.of(context).highlightColor,
          //波纹扩散颜色
          splashColor: widget.splashColor??Theme.of(context).splashColor,
          onTap: widget.onTap,
          child: Container(
            width: widget.width,
            height: widget.height,
            alignment: Alignment.center,
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
