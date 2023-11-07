
import { WeChatColor } from '../model/WeChatData'
@Component
export struct  RecentChatComponent {

  private portrait: string
  private nickName: string
  private chatInfo: string
  private time: string

  build() {
    Column() {
      Flex({justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center}) {
        Image($rawfile(this.portrait))
          .width('120px')
          .height('120px')
          .margin({left: '50px', right: '50px'})
          .border( {
            radius: 4
          })

        Column() {
          Text(this.nickName)
            .fontSize('16fp')
          Text(this.chatInfo)
            .fontSize('12pf')
            .width('620px')
            .maxLines(1)
            .fontColor("#c2bec2")
        }
        .alignItems(HorizontalAlign.Start)
        .flexGrow(1)

        Text(this.time)
          .fontSize('12fp')
          .margin({right: '50px'})
          .fontColor('#c2bec2')
      }
      .width('100%')
      .height('180px')

      Row(){
        Text()
          .width('190px')
          .height('3px')
        Divider()
          .vertical(false)
          .strokeWidth('3px')
          .color(WeChatColor)
      }
      .height('3px')
      .width('100%')
    }
  }
}