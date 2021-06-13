import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
class CameraScreen extends StatefulWidget {




  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {

  List<CameraDescription> camera;

  CameraController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    getCameras();


  }

  Future<Null> getCameras() async{
    camera =await availableCameras();
    controller=new CameraController(camera[0],ResolutionPreset.ultraHigh);
    controller.initialize().then((_)
    {

      if(!mounted){
        return;
      }
      setState(() {

      });

    }

    );

  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller?.dispose();
    super.dispose();


  }

  @override
  Widget build(BuildContext context) {
    if(!controller.value.isInitialized){

      return new Container();
    }
    return new AspectRatio(aspectRatio:controller.value.aspectRatio,
    child: new CameraPreview(controller),);
  }
}
