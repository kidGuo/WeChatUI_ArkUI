import router from '@ohos.router'
@Component
export struct DiscoveryItemComponent {
  private imageSrc: string
  private text: string
  private arrow: string = "arrow.png"

  build() {
    Column() {
      Flex({justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center}){
        Image($rawfile(this.imageSrc))
          .width('75px')
          .height('75px')
          .margin({left: '75px'})
        Text(this.text)
          .fontSize('15vp')
          .margin({left: '15px'})
          .flexGrow(1)
        Image($rawfile(this.arrow))
          .width('75px')
          .height('75px')
          .margin({right: '40px'})
      }
      .height('150px')
      .width('100%')
    }
    .onClick(()=> {
      if (this.text == '视频号')
        router.pushUrl({url: 'pages/WCVideoBroadListPage'})
    })
  }
}