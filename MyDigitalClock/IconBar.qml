import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12


RowLayout {

    id                  : iconBarLayout
    Layout.fillHeight   : true
    Layout.fillWidth    : true
    spacing             : 0


    property string timerIconSrc        : "qrc:/icons/timer.png"
    property string alarmIconSrc        : "qrc:/icons/alarmIcon.png"
    property string worldClockIconSrc   : "qrc:/icons/worldClock.png"
    property string stopWatchIconSrc    : "qrc:/icons/stopWatch.png"


   Rectangle{

       Layout.fillHeight    : true
       Layout.preferredWidth: parent.width * 0.20

       RoundButton{

           id:worldClockButton

           anchors.centerIn : parent
           scale            : 1.4
           background       : {color="white";}
           icon.source      : worldClockIconSrc
           icon.width       : parent.width
           antialiasing     : true
           MouseArea{

               id          :worldClockMousArea

               anchors.fill : parent
               hoverEnabled : true
               onEntered    :{worldClockButton.scale=1.6}
               onExited     : {worldClockButton.scale=1.4}
           }


       }

   }

   Rectangle{

       Layout.fillHeight    : true
       Layout.fillWidth     : true
   }

   Rectangle{


       Layout.fillHeight    : true
       Layout.preferredWidth: parent.width * 0.20



       RoundButton{

           id:alarmButton

           anchors.centerIn : parent
           scale            : 1.4
           background       : {color="white";}
           icon.source      : alarmIconSrc
           icon.width       : parent.width
           antialiasing     : true

           MouseArea{

               id          :alarmMousArea

               anchors.fill : parent
               hoverEnabled : true
               onEntered    :{alarmButton.scale=1.6}
               onExited     : {alarmButton.scale=1.4}
           }


       }


   }

   Rectangle{

       Layout.fillHeight    : true
       Layout.fillWidth     : true
   }

   Rectangle{


       Layout.fillHeight        : true
       Layout.preferredWidth    : parent.width * 0.20

       RoundButton{

           id:stopWatchButton

           anchors.centerIn : parent
           scale            : 1.4
           background       : {color="white";}
           icon.source      : stopWatchIconSrc
           icon.width       : parent.width
           antialiasing     : true

           MouseArea{

               id          :stopWatchMousArea

               anchors.fill : parent
               hoverEnabled : true
               onEntered    :{stopWatchButton.scale=1.6}
               onExited     : {stopWatchButton.scale=1.4}
           }



       }


   }

   Rectangle{

       Layout.fillHeight        : true
       Layout.fillWidth         : true
   }


   Rectangle{


       Layout.fillHeight        : true
       Layout.preferredWidth    : parent.width * 0.20

       RoundButton{

           id:timerButton

           anchors.centerIn : parent
           scale            : 1.4
           background       : {color="white";}
           icon.source      : timerIconSrc
           icon.width       : parent.width
           antialiasing     : true


       }

       MouseArea{

           id          :timerMousArea

           anchors.fill : parent
           hoverEnabled : true
           onEntered    :{timerButton.scale=1.6}
           onExited     : {timerButton.scale=1.4}
       }


   }


}
