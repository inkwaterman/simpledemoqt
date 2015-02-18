import QtQuick 2.0

Rectangle {
    width: 100
    height: 100
    color: "green"
    property string  buttontext:"text"
    signal buttonPressed;

    border.color:"black"
    radius:5
    border.width:5

    MouseArea {
        anchors.fill: parent
        onClicked: {
            buttonPressed();
        }
    }

    Text {
        text: parent.buttontext
        anchors.centerIn: parent
    }
}
