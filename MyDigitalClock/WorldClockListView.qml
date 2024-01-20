import QtQuick 2.12
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.12


ListView{

    width: parent.width
    height: parent.height
    spacing: 0
    clip: true
    model:City
    delegate: Rectangle{

        width: parent.width
        height: parent.height/7
        Text{

            width: parent.width
            height: parent.height
            text:modelData
        }
    }
}
