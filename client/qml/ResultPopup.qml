import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Popup {
  width: 480
  height: 640

  background: Rectangle {
    opacity: 0.5
    color: "gray"
    anchors.fill: parent
  }

  contentItem : Item {
      anchors.horizontalCenter: parent.horizontalCenter
      Image{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 100
        source: applicationDirPath + "/assets/Sprite/popup_91.png"
        width: 400
        height: 400

        Image{
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.verticalCenter: parent.verticalCenter
          source: applicationDirPath + "/assets/Sprite/banggiaithuong_thua.png"
          width: 320
          height: 50

          Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 10
            text: backEnd.reward
            font.pixelSize: 23
            font.family: "roboto"
          }
        }
        SelectButton{
          width: 350
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.bottom: parent.bottom
          anchors.bottomMargin: 70
          text: "Trang chủ"
          onClick: {
            mainTheme.stop()
            close()
            menuMain.showMenuMain = true
            menuMain.sTatus = 1
            prizePopup.runningHighLightPrize = false
            prizePopup.prize = 0
            gameScreen.resetHelperIcon()
            menuMain.startBtnAnimUpInMenuMain()
            menuSelectButton.funcBtn1Click = menuMain.btn1Click
            menuSelectButton.funcBtn3Click = menuMain.btn3Click
            menuSelectButton.funcBtn4Click = menuMain.btn4Click
            backEnd.reward = 0
            backEnd.rewardChanged()
            backEnd.prize = 0
            backEnd.prizeChanged()
          }
        }
      }
  }
}