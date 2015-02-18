import QtQuick 2.0

Rectangle {
    width: 200
    height: 200
    property string imagefile : ""
    property int rot:0
    color:"#00000000"


    Timer
    {
         interval: 100; running: true; repeat: true
         onTriggered:
         {
             rot= rot +20;
             if(rot > 359) rot =0
         }
    }

    transform:
        Rotation
        {
            origin.x: width / 2;
            origin.y: height / 2;
            angle: rot
        }

    Image
    {
        source: imagefile
    }

}
