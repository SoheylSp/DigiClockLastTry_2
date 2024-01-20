import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

//Applications main Window

ApplicationWindow
{
    id          :rootWindow
    visible     : true
    width       : 333
    height      : 666
    title       : qsTr("CLock")

    //StackView for creating svsralPages

    StackView{

        id              : rootStackView
        width           : parent.width
        height          : parent.height
        anchors.fill    : parent
        initialItem     : comp1
    }
    Component{

        id:comp1
        WorldClock{}
    }
}
