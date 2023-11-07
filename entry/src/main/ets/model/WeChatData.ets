
import { UserInfo } from './WCUserInfo'

const ContactInfo: any[] = [
  {
    "portrait": "yz.png",
    "nickName": "嬴政",
    "chatInfo": "毁灭，永远比建设要简单的多",
    "time": "18:30"
  },
  {
    "portrait": "wz.png",
    "nickName": "卫庄",
    "chatInfo": "弱者没有权利要求公平",
    "time": "17:29"
  },
  {
    "portrait": "zl.png",
    "nickName": "张良",
    "chatInfo": "或许是为了这样的生存，一点点地忘记了最初的本意",
    "time": "17:28"
  },
  {
    "portrait": "bf.png",
    "nickName": "白凤",
    "chatInfo": "有些翅膀却不知道往哪里飞翔，也许只有笨鸟才会这样吧",
    "time": "16:27"
  },
  {
    "portrait": "fn.png",
    "nickName": "伏念",
    "chatInfo": "我没有问你，还轮不到你说话",
    "time": "15:26"
  },
  {
    "portrait": "dhty.png",
    "nickName": "东皇太一",
    "chatInfo": "如此眼神，充满了迷茫和无邪，能否通过长路的漆黑慢慢",
    "time": "14:25"
  },
  {
    "portrait": "ls.png",
    "nickName": "李斯",
    "chatInfo": "我送你离开千里之外你无声黑白",
    "time": "13:24"
  },
  {
    "portrait": "sq.png",
    "nickName": "胜七",
    "chatInfo": "天灰灰会不会，让我忘了你是谁",
    "time": "11:23"
  },
  {
    "portrait": "xh.png",
    "nickName": "星魂",
    "chatInfo": "来世，我定退了沙场",
    "time": "10:22"
  },
  {
    "portrait": "xsy.png",
    "nickName": "项少羽",
    "chatInfo": "我是项氏一足，没有我办不到的",
    "time": "10:21"
  },
  {
    "portrait": "yl.png",
    "nickName": "颜路",
    "chatInfo": "想回到过去，试着让故事继续",
    "time": "10:20"
  },
  {
    "portrait": "zg.png",
    "nickName": "赵高",
    "chatInfo": "剑是凶器，罗网是凶器，你也是凶器",
    "time": "10:19"
  }
]

export function getContactInfo(): Array<UserInfo> {
  let contactList: Array<UserInfo> = []
  ContactInfo.forEach(item => {
    contactList.push(new UserInfo(item.nickName, item.portrait, item.chatInfo, item.time))
  })
  return contactList
}

export const WeChatColor:string = "#ededed"