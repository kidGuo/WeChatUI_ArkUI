import { MyDivider } from '../components/CommonStyle'
import { DiscoveryItemComponent } from '../components/DiscoveryItemComponent'
@Entry
@Component
export struct MyPage {
  private imageTitle: string = "title.png"

  build() {
    Column() {
      // 用户信息部分
      Image($rawfile(this.imageTitle)).height(144).width('100%')

      // 列表
      DiscoveryItemComponent({ imageSrc: "pay.png", text: "服务" })
      MyDivider()

      DiscoveryItemComponent({ imageSrc: "favorites.png", text: "收藏" })
      MyDivider({ style: '1' })
      DiscoveryItemComponent({ imageSrc: "moments2.png", text: "朋友圈" })
      MyDivider({ style: '1' })
      DiscoveryItemComponent({ imageSrc: "video.png", text: "视频号" })
      MyDivider({ style: '1' })
      DiscoveryItemComponent({ imageSrc: "card.png", text: "卡包" })
      MyDivider({ style: '1' })
      DiscoveryItemComponent({ imageSrc: "emoticon.png", text: "表情" })
      MyDivider()

      DiscoveryItemComponent({ imageSrc: "setting.png", text: "设置" })
      MyDivider()
    }
    .alignItems(HorizontalAlign.Start)
    .width('100%')
    .height('100%')
  }
}