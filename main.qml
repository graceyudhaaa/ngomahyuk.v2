import QtQuick 2.5
import QtQuick.Controls 2.5

ApplicationWindow {
    id: applicationWindow
    width: 640
    height: 480
    color: "#fc4343"
    title: qsTr("Tabs")
    visible: true

    // HALAMAN UTAMA
    Page {
        anchors.centerIn: parent
        anchors.fill: parent
        id: page
        enabled: true

        BorderImage {
            id: borderImage
            height: 198
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            source: "header.png"
        }

        ToolSeparator {
            id: toolSeparator
            x: 314
            width: 13
            anchors.top: borderImage.bottom
            anchors.topMargin: 30
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 33
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            id: button
            x: 198
            width: 87
            height: 30
            text: qsTr("Search")
            font.bold: true
            anchors.top: borderImage.bottom
            anchors.topMargin: 198
            anchors.right: toolSeparator.left
            anchors.rightMargin: 28
            onClicked:{
                dialogkos.open();
            }

            background: Rectangle {
                id: background
                color: "#ef3644"
            }

            contentItem: Text {
                id: textItem
                font: control.font
                opacity: enabled ? 1.0 : 0.3
                color: "white"
                text: "Search"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
        }

        TextField {
            id: textFieldHarga
            x: 81
            width: 200
            height: 25
            text: qsTr("")
            anchors.top: borderImage.bottom
            anchors.topMargin: 103
            anchors.right: toolSeparator.left
            anchors.rightMargin: 32
            placeholderText: ""
        }

        Text {
            id: textHarga
            x: 23
            text: qsTr("Harga:")
            anchors.top: borderImage.bottom
            anchors.topMargin: 109
            anchors.right: textFieldHarga.left
            anchors.rightMargin: 23
            font.pixelSize: 12
        }

        ComboBox {
            id: comboBoxGender
            x: 83
            width: 197
            height: 22
            anchors.top: borderImage.bottom
            anchors.topMargin: 140
            anchors.right: toolSeparator.left
            anchors.rightMargin: 33
            textRole: "key"
            model: ListModel {
                ListElement {
                    key: "Laki-laki"
                    value: 1
                }
                ListElement {
                    key: "Perempuan"
                    value: 2
                }
            }
        }

        Text {
            id: element
            x: 16
            text: qsTr("Gender:")
            anchors.top: borderImage.bottom
            anchors.topMargin: 142
            anchors.right: comboBoxGender.left
            anchors.rightMargin: 23
            font.pixelSize: 12
        }

        Text {
            id: element1
            x: 33
            width: 50
            height: 28
            color: "#ef3644"
            text: qsTr("KOS")
            anchors.right: toolSeparator.left
            anchors.rightMargin: 230
            anchors.top: borderImage.bottom
            anchors.topMargin: 63
            font.bold: true
            font.pixelSize: 22
        }

        Text {
            id: element2
            x: 363
            y: 268
            width: 50
            height: 28
            text: qsTr("KONTRAKAN")
            font.pixelSize: 22
            anchors.left: toolSeparator.right
            anchors.leftMargin: 40
            anchors.top: borderImage.bottom
            anchors.topMargin: 63
            font.bold: true
            color: "#ef3644"
        }

        Text {
            id: element3
            x: 23
            text: qsTr("Harga:")
            anchors.top: borderImage.bottom
            anchors.topMargin: 109
            anchors.left: textFieldHarga.right
            anchors.leftMargin: 95
            font.pixelSize: 12
        }

        TextField {
            id: textFieldkontrakan
            x: 394
            y: 301
            text: qsTr("")
            width: 200
            height: 25
            anchors.top: borderImage.bottom
            anchors.topMargin: 103
            anchors.left: toolSeparator.right
            anchors.leftMargin: 100
            placeholderText: ""
        }

        Text {
            id: element4
            x: 350
            y: 342
            width: 37
            height: 12
            text: qsTr("Jumlah Kamar:")
            font.pixelSize: 12
            anchors.top: borderImage.bottom
            anchors.topMargin: 142
            anchors.left: comboBoxGender.right
            anchors.leftMargin: 53
        }

        TextField {
            id: textField
            x: 426
            y: 338
            width: 200
            height: 25
            anchors.top: borderImage.bottom
            anchors.topMargin: 138
            anchors.left: toolSeparator.right
            anchors.leftMargin: 100
            placeholderText: ""
        }

        Button {
            id: button1
            x: 526
            y: 391
            width: 87
            height: 30
            text: qsTr("Search")
            font.bold: true
            anchors.top: borderImage.bottom
            anchors.topMargin: 198
            anchors.left: toolSeparator.right
            anchors.leftMargin: 213
            onClicked: {
                dialogkontrakan.open()
            }
            background: Rectangle {
                id: background1
                color: "#ef3644"
            }

            contentItem: Text {
                id: textItem1

                font: control.font
                opacity: enabled ? 1.0 : 0.3
                color: "white"
                text: "Search"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
        }



        /////////////////////////      DIALOG KOS (HALAMAN UNTUK KOS)       /////////////////////////


           Dialog {
            id : dialogkos
            width: parent.width
            height: parent.height
            x : -width

            Rectangle {
                id: rectangle
                x: 0
                y: 0
                width: parent.width
                height: 85
                color: "#ef3644"

                BorderImage {
                    id: borderImage1
                    x: 220
                    y: 0
                    width: 255
                    height: 69
                    source: "header.png"
                }

                Text {
                    id: element15
                    x: 33
                    y: 14
                    width: 56
                    height: 31
                    color: "#f3f2f2"
                    text: qsTr("<")
                    font.bold: true
                    styleColor: "#f8f6f6"
                    font.pixelSize: 35
                }

                MouseArea {
                    id: mouseArea
                    x: 20
                    y: 10
                    width: 58
                    height: 50
                    onClicked:{
                        this.close();
                    }
                }
            }

            Text {
                id: element5
                x: 249
                y: 105
                width: 112
                height: 25
                text: qsTr("KOS LOREM")
                font.bold: true
                font.pixelSize: 18
            }

            Text {
                id: element6
                x: 249
                y: 136
                width: 301
                height: 17
                text: qsTr("Alamat            : Jalan Lorem, No. 01 RT6/RW1")
                font.family: "Verdana"
                font.pixelSize: 12
            }

            BorderImage {
                id: borderImage2
                x: 8
                y: 105
                width: 225
                height: 154
                source: "Bisnis-kos-kosan.png"
            }

            Text {
                id: element7
                x: 249
                y: 159
                width: 240
                height: 14
                text: qsTr("Jumlah Kamar : 20")
                font.family: "Verdana"
                font.pixelSize: 12
            }

            Text {
                id: element8
                x: 249
                y: 179
                width: 265
                height: 14
                text: qsTr("Gender            : Laki-laki")
                font.family: "Verdana"
                font.pixelSize: 12
            }

            Text {
                id: element9
                x: 249
                y: 199
                width: 373
                height: 14
                text: qsTr("Harga              : Rp. 3.000.000,00 - Rp. 4.500.000 / tahun")
                font.family: "Verdana"
                elide: Text.ElideNone
                font.pixelSize: 12

                Rectangle {
                    id: rectangle1
                    x: 142
                    y: 28
                    width: 102
                    height: 38
                    color: "#ef3644"
                }
            }

            BorderImage {
                id: borderImage3
                x: 8
                y: 293
                width: 225
                height: 154
                source: "kos2.jpg"
            }

            Text {
                id: element10
                x: 249
                y: 293
                width: 112
                height: 26
                text: qsTr("KOS DOLOR")
                font.bold: true
                font.pixelSize: 18
            }

            Text {
                id: element11
                x: 249
                y: 325
                width: 301
                height: 14
                text: qsTr("Alamat             : Jalan Dolor, No. 132 RT1/RW12")
                font.family: "Verdana"
                font.pixelSize: 12
            }

            Text {
                id: element12
                x: 249
                y: 345
                width: 282
                height: 14
                text: qsTr("Jumlah Kamar  : 15")
                font.family: "Verdana"
                font.pixelSize: 12
            }

            Text {
                id: element13
                x: 249
                y: 365
                width: 225
                height: 14
                text: qsTr("Gender             : Laki-laki")
                font.family: "Verdana"
                font.pixelSize: 12
            }

            Text {
                id: element14
                x: 249
                y: 385
                text: qsTr("Harga               : Rp. 3.000.000,00 - Rp. 4.000.000 / tahun")
                font.family: "Verdana"
                font.pixelSize: 12
            }

            Rectangle {
                id: rectangle2
                x: 519
                y: 227
                width: 103
                height: 37
                color: "#ef3644"
            }

            ToolSeparator{
                id: toolSeparator1
                x: 0
                y: 276
                width: parent.width
                height: 5
            }

            Button {
                id: button2
                x: 395
                y: 231
                width: 94
                height: 29
                background: Rectangle{
                    id: background2
                    color: "#ffffff"
                }
                contentItem: Text {
                    id: name1
                    text: qsTr("HUBUNGI")
                    font.bold: true
                    font.pointSize: 10
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: "red"
                }
            }

            Button {
                id: button3
                x: 523
                y: 231
                width: 95
                height: 29
                onClicked:{
                    dialogkos1.open()
                }
                background: Rectangle{
                    id: background4
                    color: "#ef3644"
                }
                contentItem: Text {
                    id: name
                    text: "CEK"
                    font.bold: true
                    font.pointSize: 10
                    horizontalAlignment: Text.AlignHCenter
                    color: "#ffffff"
                }
            }

                Button {
                    id: button5
                    x: 521
                    y: 416
                    width: 100
                    height: 37
                    text: qsTr("CEK")
                    font.bold: true
                    font.pointSize: 10
                    font.family: "Verdana"

                    background: Rectangle{
                        color: "#ef3644"
                    }
                    contentItem: Text {
                        id: text1
                        text: qsTr("CEK")
                        font.bold: true
                        font.pointSize: 10
                        font.family: "Verdana"
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        color: "#ffffff"
                    }
                }

                Rectangle {
                    id: rectangle3
                    x: 393
                    y: 417
                    width: 101
                    height: 37
                    color: "#ef3644"
                }

                Button {
                    id: button4
                    x: 398
                    y: 421
                    width: 91
                    height: 28
                    text: qsTr("HUBUNGI")
                    font.bold: true
                    font.pointSize: 10
                    font.family: "Verdana"
                    background: Rectangle{
                        color: "#ffffff"
                    }
                    contentItem: Text {
                        id: text2
                        text: qsTr("HUBUNGI")
                        font.bold: true
                        font.pointSize: 10
                        font.family: "Verdana"
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        color: "#ef3644"
                    }
                }
           }
            ///////////////////////               HALAMAN UNTUK SPESIFIKASI KOS                     ////////////////////////

               Dialog {
                id : dialogkos1
                width: parent.width
                height: parent.height
                x : -width

                Rectangle {
                    id: rectangle9
                    x: 0
                    y: 0
                    width: parent.width
                    height: 85
                    color: "#ef3644"

                    BorderImage {
                        id: borderImage4
                        x: 220
                        y: 0
                        width: 255
                        height: 69
                        source: "header.png"
                    }
                }

                BorderImage {
                    id: borderImage5
                    x: 8
                    y: 115
                    width: 279
                    height: 208
                    source: "Bisnis-kos-kosan.png"
                }

                Text {
                    id: element16
                    x: 293
                    y: 115
                    width: 196
                    height: 19
                    text: qsTr("KOS LOREM")
                    font.bold: true
                    font.pixelSize: 18
                }

                Text {
                    id: element17
                    x: 310
                    y: 140
                    font.pixelSize: 12
                }

                Text {
                    id: element18
                    x: 293
                    y: 147
                    text: qsTr("Alamat            : Jalan Lorem, No. 01 RT6/RW1")
                    font.pixelSize: 12
                }

                Text {
                    id: element19
                    x: 293
                    y: 167
                    width: 216
                    height: 14
                    text: qsTr("Jumlah Kamar  : 20")
                    font.pixelSize: 12
                }

                Text {
                    id: element20
                    x: 293
                    y: 187
                    text: qsTr("Gender           : Laki-laki")
                    font.pixelSize: 12
                }

                Text {
                    id: element21
                    x: 293
                    y: 207
                    text: qsTr("Harga             : Rp. 3.000.000,00 - Rp. 4.500.000 / tahun")
                    font.pixelSize: 12
                }

                Text {
                    id: element22
                    x: 293
                    y: 233
                    text: qsTr("DESKRIPSI")
                    font.bold: true
                    font.pixelSize: 12
                }

                Label {
                    id: label
                    x: 293
                    y: 253
                    width: 323
                    height: 70
                    text: qsTr("Kos dengan hunian sangat nyaman dan fasilitas seperti hotel. ")
                }
            }
                }


           ////////////////////////////         DIALOG KONTRAKAN           //////////////////////

           Dialog{
            id : dialogkontrakan
            width: parent.width
            height: parent.height
            x : -width

            Rectangle {
                id: rectangle5
                x: 0
                y: 0
                width: parent.width
                height: 85
                color: "#ef3644"

                BorderImage {
                    id: borderImage6
                    x: 220
                    y: 0
                    width: 255
                    height: 69
                    source: "header.png"
                }

                Text {
                    id: element23
                    x: 33
                    y: 14
                    width: 56
                    height: 31
                    color: "#f3f2f2"
                    text: qsTr("<")
                    font.bold: true
                    styleColor: "#f8f6f6"
                    font.pixelSize: 35
                }

                MouseArea {
                    id: mouseArea1
                    x: 20
                    y: 10
                    width: 58
                    height: 50
                    onClicked:{
                        this.close();
                      }
                  }
               }
            }
       }

