
import QtQuick 2.15

Rectangle {
    id: analytics
    width:1585
    height:1025
    color: "#E9E966"
    anchors.fill:parent

    Text {
        anchors.centerIn: analytics
        text: "Analytics"
        color:"#747474"

        font {
            family: "Arial"
            pixelSize: 40
            bold: true
            italic: true // Setting italic style
            underline: false
        }
    }

    Rectangle {
        id:floating_window
        width:20
        height:20
        anchors.left: parent.left
        anchors.leftMargin: 1560
        anchors.top: parent.top
        anchors.topMargin: 5

        Image {
            anchors.fill: floating_window
            width:20
            height:20
            //fillMode: Image.PreserveAspectCrop
            source: "qrc:/ui/assets/images/Floating_switch.png"
        }
        MouseArea {
            id: buttonMouseArea
            anchors.fill: parent
            onClicked: {
                console.log("Analytics_floting button clicked!")
                var component = Qt.createComponent("qrc:/ui/FloatingWindow/Analytics_Window.qml");
                var window = component.createObject(mainwindow);
                window.show();

            }
        }
    }
}
