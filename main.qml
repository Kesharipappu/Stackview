import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 400
    height: 400
    title: "StackView Example"

    StackView {
        id: stackView
        anchors.fill: parent

        // Page1
        Component {
            id: page1Component
            Rectangle {
                width: parent.width
                height: parent.height
                color: "lightblue"

                Button {
                    text: "Back"
                    anchors.top: parent.top
                    anchors.right: parent.right
                    onClicked: {
                        stackView.pop();
                        homeButton.visible = true;
                        messagingButton.visible = true;
                        contactsButton.visible = true;
                    }
                }

                Text {
                    text: "Page 1 (Home)"
                    font.pointSize: 24
                    anchors.centerIn: parent
                }
            }
        }

        // Page2
        Component {
            id: page2Component
            Rectangle {
                width: parent.width
                height: parent.height
                color: "lightgreen"

                Button {
                    text: "Back"
                    anchors.top: parent.top
                    anchors.right: parent.right
                    onClicked: {
                        stackView.pop();
                        homeButton.visible = true;
                        messagingButton.visible = true;
                        contactsButton.visible = true;
                    }
                }

                Text {
                    text: "Page 2 (Contacts)"
                    font.pointSize: 24
                    anchors.centerIn: parent
                }
            }
        }

        // Page3
        Component {
            id: page3Component
            Rectangle {
                width: parent.width
                height: parent.height
                color: "lightcoral"

                Button {
                    text: "Back"
                    anchors.top: parent.top
                    anchors.right: parent.right
                    onClicked: {
                        stackView.pop();
                        homeButton.visible = true;
                        messagingButton.visible = true;
                        contactsButton.visible = true;
                    }
                }

                Text {
                    text: "Page 3 (Messaging)"
                    font.pointSize: 24
                    anchors.centerIn: parent
                }
            }
        }
    }

    ColumnLayout {
        anchors.top: parent.top
        spacing: 10


        Button {
            id: homeButton
            text: "Home"
            Layout.alignment: Qt.AlignTop | Qt.AlignLeft
            onClicked: {
                stackView.push(page1Component);
                contactsButton.visible = false;
                messagingButton.visible = false;

            }
        }

        Button {
            id: contactsButton
            text: "Contacts"
            Layout.alignment: Qt.AlignTop | Qt.AlignLeft
            onClicked: {
                stackView.push(page2Component);
                homeButton.visible = false;
                messagingButton.visible = false;
            }
        }

        Button {
            id: messagingButton
            text: "Messaging"
            Layout.alignment: Qt.AlignTop | Qt.AlignLeft
            onClicked: {
                stackView.push(page3Component);
                homeButton.visible = false;
                contactsButton.visible = false;
            }
        }
    }
}
