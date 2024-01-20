import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
RowLayout {

    property string addIconSrc          : "qrc:/icons/add.svg"

                    id              :firstRectRowLayout

                    width           : parent.width
                    height          : parent.height
                    anchors.fill    : parent
                    spacing         : 0
                    layoutDirection : Qt.RightToLeft

                    Rectangle{

                        Layout.fillHeight       : true
                        Layout.preferredWidth   : parent.width * 0.333

                        Rectangle{

                            width           : parent.width * 0.9
                            height          : parent.height * 0.7
                            radius          : parent.width * 0.1
                            color           : "white"
                            anchors.centerIn: parent

                            RoundButton{

                                id              :addButton

                                anchors.centerIn: parent
                                scale           : 1.4
                                icon.source     : addIconSrc
                                antialiasing    : true
                                background: {color:"white"}

                                MouseArea{

                                    id                  :addButtonMouseArea

                                    anchors.fill        : parent
                                    hoverEnabled        : true
                                    onEntered           : {addButton.scale = 1.6}
                                    onExited            : {addButton.scale = 1.4}
                                }

                            }


                        }
                    }
                    Rectangle{

                        Layout.fillHeight: true
                        Layout.fillWidth: true
                    }
                    Rectangle{


                        Layout.fillHeight: true
                        Layout.preferredWidth: parent.width * 0.333


                        Rectangle{

                            id                  :editTextId

                            width               : parent.width * 0.9
                            height              : parent.height * 0.7
                            radius              : parent.width * 0.1
                            color               : "white"
                            anchors.centerIn: parent

                            Text{

                                id                  :editButtonText

                                //width               : parent.width
                                //height              : parent.height
                                anchors.centerIn    : parent
                                font.pointSize      : 16
                                text                :qsTr("Edit")

                                MouseArea{

                                    id                  :editButtonMousArea

                                    width               : parent.width * 1.2
                                    height              : parent.height * 1.2
                                    anchors.fill        : parent
                                    hoverEnabled        : true
                                    onEntered           : {editButtonText.font.pointSize = 18}
                                    onExited            : {editButtonText.font.pointSize = 16}


                                }

                            }
                        }

                    }


                }



