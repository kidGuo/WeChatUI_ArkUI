import { WeChatTitle } from '../components/CommonStyle'
import { RecentChatComponent } from '../components/RecentChatComponents'
import { getContactInfo } from '../model/WeChatData'
@Entry
@Component
export struct RecentChatPage {

  private contactsInfo = getContactInfo()

  build() {
    Column() {
      //
      WeChatTitle({text: '微信'})

      //最近会话
      List() {
        ForEach(this.contactsInfo, (item) => {
          ListItem() {
            RecentChatComponent({nickName: item.nickName, portrait: item.portrait, chatInfo: item.chatInfo, time: item.time})
          }
        },item => item.userId.toString())
      }
      .width('100%')
      .height('100%')
    }
  }
}