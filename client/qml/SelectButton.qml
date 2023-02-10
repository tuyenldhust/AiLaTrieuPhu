import QtQuick 2.12
import QtQuick.Controls 2.5

Button {
  id : button
  width: 480
  height: 50
  
  property bool isEnabled : false
  

  enabled: isEnabled

  signal click()

  contentItem: Text {
    font.bold: true
    font.pointSize: 15
    font.family: "roboto"
    verticalAlignment: Text.AlignVCenter
    horizontalAlignment: Text.AlignHCenter
    color: "white"
    text : button.text
  }

  background: Image {
    source: applicationDirPath + "/assets/Sprite/btn.png"
    opacity: 0.5
  }

  onHoveredChanged: {
    if (button.hovered)
    {
        background.source = applicationDirPath + "/assets/Sprite/btn_choose.png"
    }
    else {
        background.source = applicationDirPath + "/assets/Sprite/btn.png"
    }
  }

  onClicked: {
    clickSound.play()
    button.click()
  }
}