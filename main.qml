import QtQuick 2.2
import QtQuick.Window 2.1

Window {
    visible: true
    width: 800
    height: 480
    id: main
    MouseArea {
        anchors.fill: parent
        onClicked: {
           // Qt.quit();
        }
    }

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }


    RollingImage
    {
        x: ((main.width - width)  * 4) /5
        y: (main.height - height) /2
        imagefile:"qrc:///img/samourai.png"

    }


    RollingImage
    {
        x: (main.width - width)  / 5
        y: (main.height - height) /2
        imagefile:"qrc:///img/tartaruga.png"

    }


    SimpleButton
    {
        id:button1
        x:0
        y:0
        color: "green"
        buttontext:"Press ME"

        onButtonPressed:
        {
            main.color=color;
        }
    }


    SimpleButton
    {
        id:button2
        x:main.width - height
        y:0
        color: "red"
        buttontext:"Press ME"

        onButtonPressed:
        {
            main.color=color;
        }
    }

    SimpleButton
    {
        id:button3
        x:0
        y:main.height - height
        color: "yellow"
        buttontext:"Press ME"

        onButtonPressed:
        {
            main.color=color;
        }
    }


    SimpleButton
    {
        id:button4
        x:main.width - width
        y:main.height - height
        color: "blue"
        buttontext:"Press ME"

        onButtonPressed:
        {
            main.color=color;
        }
    }
}
