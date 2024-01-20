import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12


Rectangle {

    id          :worldClockBaseRect

    width       : rootWindow.width
    height      : rootWindow.height





    //Devide this Rectangle to 4 Columns whith ColumnLayout

    ColumnLayout{

        id              : worldClockColumnLayout

        width           : parent.width
        height          : parent.height
        anchors.fill    : parent
        spacing         : 0


        //First Rectangle on the top

        Rectangle{

            id                      : columnFirstRect

            Layout.fillWidth        : true
            Layout.preferredHeight  : parent.height * 0.15

            //Define a RowLayout in firstRect
            WorldClockHeader{

                id          :worldClockHeader

            }

        }

        //Second Rectangle in Colmun for Big World Clock

        Rectangle{

            id                      :columnSecondRect

            Layout.fillWidth        : true
            Layout.preferredHeight  : parent.height * 0.2

            // big World Clock Text In Application

            Text{

                anchors.centerIn        : parent
                font.pointSize          : 40
                font.family             : "Winter Signature"
                text                    : "WorldClock"
            }
        }

        //Third Rectangle in Colmun

        Rectangle{

            id                      :columnThirdRect

            Layout.fillWidth        : true
            Layout.preferredHeight  : parent.height * 0.5

            //WorldClockListView which Defined in another qml file


            WorldClockListView{

                anchors.fill:parent
            }

            }

        //Forth Rectangle in Colmun

        Rectangle{

            id                    : columnForthRect

            Layout.fillWidth       : true
            Layout.preferredHeight : parent.height * 0.15


            //IconBar which defind in a separate qml file


            IconBar{

                anchors.fill: parent

            }




        }


        }



    }


