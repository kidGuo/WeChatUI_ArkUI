import { WeChatTitle } from '../components/CommonStyle'
import { ContactItemStyle } from '../components/WCContactItemComponent'
import { getContactInfo, WeChatColor } from '../model/WeChatData'
@Entry
@Component
export struct ContactsPage {
  private  contactsInfo = getContactInfo()

  build() {
    Column() {
      //
      WeChatTitle({text: '通讯录'})

      //
      Scroll() {
        Column() {
          // 固定列表
          ContactItemStyle({ imageSrc: "new_friend.png", text: "新的朋友" })
          ContactItemStyle({ imageSrc: "group.png", text: "群聊" })
          ContactItemStyle({ imageSrc: "biaoqian.png", text: "标签" })
          ContactItemStyle({ imageSrc: "gonzh.png", text: "公众号" })

          // 企业联系人
          Text("      我的企业及企业联系人")
            .fontSize('12fp')
            .backgroundColor(WeChatColor)
            .height('80px')
            .width('100%')
          ContactItemStyle({ imageSrc: "qiye.png", text: "企业微信联系人" })

          // 微信好友
          Text("      我的微信好友")
            .fontSize('12fp')
            .backgroundColor(WeChatColor)
            .height('80px')
            .width('100%')


          List() {
            ForEach(this.contactsInfo, (item) => {
              ListItem() {
                ContactItemStyle({ imageSrc: item.portrait, text: item.nickName })
              }
            }, item => item.userId.toString())
          }
        }
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}