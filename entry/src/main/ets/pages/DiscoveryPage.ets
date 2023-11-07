import { MyDivider, WeChatTitle } from '../components/CommonStyle'
import { DiscoveryItemComponent } from '../components/DiscoveryItemComponent'
@Entry
@Component
export struct DiscoveryPage {

  build() {
    Column() {
      //
      WeChatTitle({text: '发现'})

      //列表
      DiscoveryItemComponent({ imageSrc: "moments.png", text: "朋友圈" })
      MyDivider()

      DiscoveryItemComponent({ imageSrc: "shipinghao.png", text: "视频号" })
      MyDivider({ style: '1' })
      DiscoveryItemComponent({ imageSrc: "zb.png", text: "直播" })
      MyDivider()

      DiscoveryItemComponent({ imageSrc: "sys.png", text: "扫一扫" })
      MyDivider({ style: '1' })
      DiscoveryItemComponent({ imageSrc: "yyy.png", text: "摇一摇" })
      MyDivider()

      DiscoveryItemComponent({ imageSrc: "kyk.png", text: "看一看" })
      MyDivider({ style: '1' })
      DiscoveryItemComponent({ imageSrc: "souyisou.png", text: "搜一搜" })
      MyDivider()

      DiscoveryItemComponent({ imageSrc: "fujin.png", text: "附近" })
      MyDivider()

      DiscoveryItemComponent({ imageSrc: "gw.png", text: "购物" })
      MyDivider({ style: '1' })
      DiscoveryItemComponent({ imageSrc: "game.png", text: "游戏" })
      MyDivider()

      DiscoveryItemComponent({ imageSrc: "xcx.png", text: "小程序" })
      MyDivider()
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Start)
  }
}