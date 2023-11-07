let userId: number = 1

export class UserInfo {
  userId: string
  nickName: string
  portrait: string
  chatInfo: string
  time: string

  constructor(nickName: string, portrait: string, chatInfo: string, time: string) {
    this.userId = `${userId++}`
    this.nickName = nickName
    this.portrait = portrait
    this.chatInfo = chatInfo
    this.time = time
  }
}