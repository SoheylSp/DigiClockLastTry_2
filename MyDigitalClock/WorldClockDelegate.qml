import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12





    Rectangle{

        width: parent.width
        height: parent.height / 7

        Text{


            font.pointSize      : 18
            text                :modelData
            anchors.centerIn: parent
        }

    }







