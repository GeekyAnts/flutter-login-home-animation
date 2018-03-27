import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class StaggerAnimation extends StatelessWidget {
  StaggerAnimation({Key key, this.buttonController})
      : buttonZoomOutAnimation = new Tween(
          begin: 60.0,
          end: 1000.0,
        )
            .animate(
          new CurvedAnimation(parent: buttonController, curve: Curves.easeOut),
        ),
        buttonBottomtoCenterAnimation = new AlignmentTween(
          begin: Alignment.bottomRight,
          end: Alignment.center,
        )
            .animate(
          new CurvedAnimation(
            parent: buttonController,
            curve: new Interval(
              0.0,
              0.200,
              curve: Curves.easeOut,
            ),
          ),
        ),
        super(key: key);

  final Animation<double> buttonController;
  final Animation buttonZoomOutAnimation;
  final Animation<Alignment> buttonBottomtoCenterAnimation;

  Widget _buildAnimation(BuildContext context, Widget child) {
    timeDilation = 0.4;

    return (new Padding(
        padding: buttonZoomOutAnimation.value < 400
            ? new EdgeInsets.all(20.0)
            : new EdgeInsets.all(0.0),
        child: new Container(
            alignment: buttonBottomtoCenterAnimation.value,
            child: new InkWell(
              child: new Container(
                width: buttonZoomOutAnimation.value,
                height: buttonZoomOutAnimation.value,
                alignment: buttonBottomtoCenterAnimation.value,
                decoration: new BoxDecoration(
                    color: const Color.fromRGBO(247, 64, 106, 1.0),
                    shape: buttonZoomOutAnimation.value < 400
                        ? BoxShape.circle
                        : BoxShape.rectangle),
                child: new Icon(
                  Icons.add,
                  size: buttonZoomOutAnimation.value < 50
                      ? buttonZoomOutAnimation.value
                      : 0.0,
                  color: Colors.white,
                ),
              ),
            ))));
  }

  @override
  Widget build(BuildContext context) {
    buttonController.addListener(() {
      // if (controller.isCompleted) Navigator.pushNamed(context, "/login");    //options
      // if (controller.isCompleted) Navigator.of(context).pop();       //options
      if (buttonController.isCompleted) {
        Navigator.pushReplacementNamed(context, "/login");
      }
    });
    return new AnimatedBuilder(
      builder: _buildAnimation,
      animation: buttonController,
    );
  }
}
