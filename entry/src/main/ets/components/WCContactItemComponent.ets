import { WeChatColor } from '../model/WeChatData'
@Component
export struct ContactItemStyle {

  private imageSrc: string
  private text: string

  build() {
    Column() {
      Flex({ alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center }) {
        Image($rawfile(this.imageSrc)).width('100px').height('100px').margin({ left: '50px' })
        Text(this.text).fontSize('15vp').margin({ left: '40px' }).flexGrow(1)
      }
      .height('150px')
      .width('100%')

      Row() {
        Text().width('190px').height('3px')
        Divider()
          .vertical(false)
          .color(WeChatColor)
          .strokeWidth('3px')
      }
      .height('3px')
      .width('100%')
    }
  }
}