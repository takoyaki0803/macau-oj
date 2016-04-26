//
//  ThirdViewController.swift
//  1031macauojisan
//
//  Created by 20150301 on 2015/11/02.
//  Copyright © 2015年 ******. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ThirdViewController: UIViewController, GADBannerViewDelegate {
    
    // AdMob ID を入れてください
    let AdMobID = "ca-app-pub-****************************"
    let TEST_DEVICE_ID = "********************************"
    let AdMobTest:Bool = true
    let SimulatorTest:Bool = false
    
    //◯秒後に画面遷移する//
    //var timer:NSTimer = NSTimer()
    // ↓以下に訂正
    var timer: NSTimer?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var admobView: GADBannerView = GADBannerView()
        admobView = GADBannerView(adSize:kGADAdSizeBanner)
        admobView.frame.origin = CGPointMake(0, self.view.frame.size.height - admobView.frame.height)
        
        admobView.frame.size = CGSizeMake(self.view.frame.width, admobView.frame.height)
        admobView.adUnitID = AdMobID
        admobView.delegate = self
        admobView.rootViewController = self
        
        let admobRequest:GADRequest = GADRequest()
        
        if AdMobTest {
            if SimulatorTest {
                admobRequest.testDevices = [kGADSimulatorID]
            }
            else {
                admobRequest.testDevices = [TEST_DEVICE_ID]
            }
            
        }
        
        admobView.loadRequest(admobRequest)
        
        self.view.addSubview(admobView)
    }
    
    
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(false)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var EImageView: UIImageView!
    
    @IBOutlet weak var MojiTextView: UITextView!
    
    
    @IBAction func didTouchAddButton(sender: AnyObject) {
      //乱数の発生
      let randNum = Int(arc4random_uniform(51))
    
      //分岐
      if randNum == 0 {
         EImageView.image = UIImage(named:"ArrozDoce.png")
         MojiTextView.text = "少し疲れてるようだな。そんな時はアロース・ドーゼを食え。つぶつぶした食感が癖になる米のプリンだ。マカオ半島のGALOなどで食べることができるから行ってみろ！"
        
        //タイマー　3秒後にMapViewCtrに画面遷移
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 0], repeats: false)
        
        
        //NSTimer画面遷移時にViewController間でのデータ転送
        valueToSend = 0
        
        
      }else if(randNum == 1){
        EImageView.image = UIImage(named:"Airplane.png")
        MojiTextView.text = "帰りの飛行機まで余裕があるか？ないなら終わりだ。終了間際に負けた分を取り戻そうとすると大抵大失敗する。香港国際空港またはマカオ国際空港へ行け！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 1], repeats: false)
        
        valueToSend = 1
        
        
      }else if(randNum == 2){
        EImageView.image = UIImage(named:"b.png")
        MojiTextView.text = "かなり疲れてるようだな。無理するな。ホテルに帰って寝るか、宋玉生公園近くにある皇朝マッサージセンターで全身・足裏マッサージでリフレッシュだ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 2], repeats: false)
        
        valueToSend = 2

        
      }else if(randNum == 3){
        EImageView.image = UIImage(named:"beer.png")
        MojiTextView.text = "景気付けにマカオビールでも飲んでみないか？サグレス、スーパーボック、青島、海珠、珠江・・・などもおすすめだ！"
        
        //ViewCtrに戻る
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.startView), userInfo: ["value": 3], repeats: false)
        
        
      }else if(randNum == 4){
        EImageView.image = UIImage(named:"building.png")
        MojiTextView.text = "うまくいかないときもある。そんな時は聖ポール天主堂跡へ行き、壮大で美しいファサードを眺めろ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 4], repeats: false)
        
        valueToSend = 4
        
        
      }else if(randNum == 5){
        EImageView.image = UIImage(named:"card.png")
        MojiTextView.text = "負けてる時のキャッシングほど危険なものはない。ここは取り戻そうとせず損切りだ！"
        
        //ViewCtrに戻る
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.startView), userInfo: ["value": 5], repeats: false)
        
        
      }else if(randNum == 6){
        EImageView.image = UIImage(named:"coffee.png")
        MojiTextView.text = "やや疲れてるようだな。そんな時はマーガレット　カフェ・エ・ナタのエッグタルトとコーヒーで休憩だ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 6], repeats: false)
        
        valueToSend = 6
        
        
      }else if(randNum == 7){
        EImageView.image = UIImage(named:"curry.png")
        MojiTextView.text = "負けてしかも空腹でイライラしてるようだな。ストレスを感じた時は、カレー、カレーおでん、カレー麺が良い。さあ食いに行け！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 7], repeats: false)
        
        valueToSend = 7
        
        
      }else if(randNum == 8){
        EImageView.image = UIImage(named:"daruma.png")
        MojiTextView.text = "鏡を見てみろ。今こんな表情しているぞ。気分転換に、ヴェネチアンやギャラクシー内など散策してみろ。面白いものが沢山あるぞ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 8], repeats: false)
        
        valueToSend = 8
        
        
      }else if(randNum == 9){
        EImageView.image = UIImage(named:"dog.png")
        MojiTextView.text = "一旦カジノから離れてドッグレースへ行け！雰囲気も良いが、なにより一生懸命場内を走り抜ける犬たちに癒やされ気分転換だ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 9], repeats: false)
        
       valueToSend = 9
        
        
      }else if(randNum == 10){
        EImageView.image = UIImage(named:"fune.png")
        MojiTextView.text = "カジノに夢中になりすぎて、香港行きのフェリーチケットを買い忘れてないか念のため確認だ。フェリーは、よく事故るから注意しろよ！"
        
        //ViewCtrに戻る
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.startView), userInfo: ["value": 10], repeats: false)
        
        
      }else if(randNum == 11){
        EImageView.image = UIImage(named:"furui.png")
        MojiTextView.text = "気分転換にセナド広場に行け！民政総署、仁慈堂大楼、近くの教会などを見て回れ。夜はライトアップして綺麗だから写真撮りまくれ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 11], repeats: false)
        
        valueToSend = 11
        
        
      }else if(randNum == 12){
        EImageView.image = UIImage(named:"game.png")
        MojiTextView.text = "まずはゲームの種類変えてみろ！それがダメなら環境を変えるなど他にも状況を好転させる手段があるはずだ。勝つために考えるんだ！"
        
        //ViewCtrに戻る
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.startView), userInfo: ["value": 12], repeats: false)
        
        
      }else if(randNum == 13){
        EImageView.image = UIImage(named:"Hamburger.png")
        MojiTextView.text = "小腹が空いて集中できてないようだな。休憩も兼ねてポークチョップバーガー食いに行け！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 13], repeats: false)
        
        valueToSend = 13
        
        
      }else if(randNum == 14){
        EImageView.image = UIImage(named:"hana.png")
        MojiTextView.text = "今の君には気分転換が必要なようだ。盧廉若公園で蓮の花を見てこい。咲いてなければグランドリスボアの外観を眺めてみるがよい！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 14], repeats: false)
        
        valueToSend = 14
        
        
      }else if(randNum == 15){
        EImageView.image = UIImage(named:"IceCream.png")
        MojiTextView.text = "疲れた時は甘いものが良い。そんな時は、禮記雪糕へ行け。アイス食べて頭も身体も冷やせ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 15], repeats: false)
        
        valueToSend = 15
        
        
      }else if(randNum == 16){
        EImageView.image = UIImage(named:"ie.png")
        MojiTextView.text = "鄭家屋敷の東洋と西洋文化が混じった美しい建築物は見応えがある。入場料は無料だ。気分転換に見てこい！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 16], repeats: false)
        
        valueToSend = 16
        
        
      }else if(randNum == 17){
        EImageView.image = UIImage(named:"iine.png")
        MojiTextView.text = "まぁそんな日もあるから気にするな！落ち込んでても仕方ない。マカオの世界遺産の写真をFacebookにアップして友人からいいねを貰え！"
        
        //ViewCtrに戻る
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.startView), userInfo: ["value": 17], repeats: false)
        
        
      }else if(randNum == 18){
        EImageView.image = UIImage(named:"iphone.png")
        MojiTextView.text = "さっさと今夜のレストランでも予約しな！高雅扒房、天巢法國餐廳、麗軒中餐廳・・・うまいもの食ってやり直せ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 18], repeats: false)
        
        valueToSend = 18
        
        
      }else if(randNum == 19){
        EImageView.image = UIImage(named:"keisan.png")
        MojiTextView.text = "まずは現状把握だ！あまりに興奮しすぎて平常心を失っている。そんな時だからこそ一旦立ち止まって考えろ！"
        
        //ViewCtrに戻る
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.startView), userInfo: ["value": 19], repeats: false)
        
        
      }else if(randNum == 20){
        EImageView.image = UIImage(named:"kokuban.png")
        MojiTextView.text = "ひとつひとつの勝負、勝つ確率を高めることに重点を置け！そのためには、今までのやり方が正しかったか考えなおせ！"
        
        //ViewCtrに戻る
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.startView), userInfo: ["value": 20], repeats: false)
        
        
      }else if(randNum == 21){
        EImageView.image = UIImage(named:"map.png")
        MojiTextView.text = "良い状況でない時は場所を変えることも選択肢のひとつだ。さあ、次のカジノへ移動だ！"
        
        //ViewCtrに戻る
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.startView), userInfo: ["value": 21], repeats: false)
        
        
      }else if(randNum == 22){
        EImageView.image = UIImage(named:"mesi.png")
        MojiTextView.text = "マカオといったらポルトガル料理だ！ESCADA、Solmar、FERNANDOなど美味い店が沢山ある。気分転換に食いに行くぞ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 22], repeats: false)
        
        valueToSend = 22
        
        
      }else if(randNum == 23){
        EImageView.image = UIImage(named:"mizu.png")
        MojiTextView.text = "顔色が悪いぞ。とりあえず、水分補給しろ。カジノ内でミネラルウォーター貰え！"
        
        //ViewCtrに戻る
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.startView), userInfo: ["value": 23], repeats: false)
        
        
      }else if(randNum == 24){
        EImageView.image = UIImage(named:"money.png")
        MojiTextView.text = "あまりに欲を出し過ぎだ。ひとつひとつ着実に勝ち続ければならないことを忘れたのか！"
        
        //ViewCtrに戻る
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.startView), userInfo: ["value": 24], repeats: false)
        
        
      }else if(randNum == 25){
        EImageView.image = UIImage(named:"movie.png")
        MojiTextView.text = "気分転換にハリウッド映画をテーマにしたStudio Cityに行け！すごいカジノだ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 25], repeats: false)
        
        valueToSend = 25
        
        
      }else if(randNum == 26){
        EImageView.image = UIImage(named:"musimegane.png")
        MojiTextView.text = "些細な事も注意深く観察せよ。なにか新たな発見があるはずだ！"
        
        //ViewCtrに戻る
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.startView), userInfo: ["value": 26], repeats: false)
        
        
      }else if(randNum == 27){
        EImageView.image = UIImage(named:"niku.png")
        MojiTextView.text = "Solmarでアフリカンチキンを食べて力つけろ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 27], repeats: false)
        
        valueToSend = 27
        
        
      }else if(randNum == 28){
        EImageView.image = UIImage(named:"panda.png")
        MojiTextView.text = "時間があれば石排灣郊野公園までパンダでも見に行け！きっと癒やされるぞ。"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 28], repeats: false)
        
        valueToSend = 28

        
      }else if(randNum == 29){
        EImageView.image = UIImage(named:"photo.png")
        MojiTextView.text = "今の君には気分転換が必要だ。さぁ、外に出てマカオの町並みを撮ってSNSにアップしろ！"
        
        //ViewCtrに戻る
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.startView), userInfo: ["value": 29], repeats: false)
        
        
      }else if(randNum == 30){
        EImageView.image = UIImage(named:"sakana.png")
        MojiTextView.text = "元気が無い時はシーフードだ！Bar Celona Tapas & Riceは本格的なスペイン料理のお店でおすすめだ。"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 30], repeats: false)
        
        valueToSend = 30

        
      }else if(randNum == 31){
        EImageView.image = UIImage(named:"sekai.png")
        MojiTextView.text = "うまくいかないときこそ世界遺産巡りだ！三街会館（関帝廟）で気持ちを落ち着かせろ。"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 31], repeats: false)
        
        valueToSend = 31
    
        
      }else if(randNum == 32){
        EImageView.image = UIImage(named:"shima.png")
        MojiTextView.text = "ダメなときはダメなんだ。気分を変えるために、遠出してコロアネ島のハクサビーチでビールでも飲め！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 32], repeats: false)
        
        valueToSend = 32
        
        
      }else if(randNum == 33){
        EImageView.image = UIImage(named:"siro.png")
        MojiTextView.text = "ギャラクシーへ行き、バカラやブラックジャックなどしてみたらどうだ？"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 33], repeats: false)
        
        valueToSend = 33

        
      }else if(randNum == 34){
        EImageView.image = UIImage(named:"siro3.png")
        MojiTextView.text = "ギア要塞へ行き、マカオ市街地を一望して歴史を感じろ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 34], repeats: false)
        
        valueToSend = 34

        
      }else if(randNum == 35){
        EImageView.image = UIImage(named:"stop.png")
        MojiTextView.text = "おっと今日はここまでだ。フェルナンドでポルトガル料理を腹いっぱい食ってリフレッシュしな！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 35], repeats: false)
        
        valueToSend = 35
        
        
      }else if(randNum == 36){
        EImageView.image = UIImage(named:"suika.png")
        MojiTextView.text = "少し疲れてるな、休憩しろ。適度な休息も重要だ。スイカジュースとエッグタルトを飲んで食べて休憩だ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 36], repeats: false)
        
        valueToSend = 36
        
        
      }else if(randNum == 37){
        EImageView.image = UIImage(named:"suna.png")
        MojiTextView.text = "いつまでも未練たらしくやるな。もうそろそろ終了の時間だ。飯、マッサージなど気分転換しろ！"
        
        //ViewCtrに戻る
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.startView), userInfo: ["value": 37], repeats: false)
        
        
      }else if(randNum == 38){
        EImageView.image = UIImage(named:"toride.png")
        MojiTextView.text = "ナーチャ廟へ行きマカオ文化の多様性を知り、視野を広く持つようにしろ！"
    
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 38], repeats: false)
        
        valueToSend = 38
    
        
      }else if(randNum == 39){
        EImageView.image = UIImage(named:"tower.png")
        MojiTextView.text = "マカオタワーに行け！バンジー、スカイウォーク、タワークライム、スカイジャンプどれかひとつやって気合を入れろ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 39], repeats: false)
        
        valueToSend = 39
        
        
      }else if(randNum == 40){
        EImageView.image = UIImage(named:"uma.png")
        MojiTextView.text = "カジノがうまくいかないのなら、競馬だ。タイパ競馬場へ行け！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 40], repeats: false)
        
        valueToSend = 40

        
      }else if(randNum == 41){
        EImageView.image = UIImage(named:"unko.png")
        MojiTextView.text = "トイレに行き、リフレッシュだ！カジノ内は冷房が効きすぎてるから常に腹を冷やさないようにしておけ！"
        
        //ViewCtrに戻る
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.startView), userInfo: ["value": 41], repeats: false)
        
        
      }else if(randNum == 42){
        EImageView.image = UIImage(named:"garo.png")
        MojiTextView.text = "「バルセロスの雄鶏伝説」で有名な鶏の置物、ガロをお土産に買ってみろ！良いことが起きるかもしれない！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 42], repeats: false)
        
        valueToSend = 42

        
      }else if(randNum == 43){
        EImageView.image = UIImage(named:"hito.png")
        MojiTextView.text = "ディーラーとの相性が良くないこともある。テーブルを変えてみろ！"
        
        //ViewCtrに戻る
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.startView), userInfo: ["value": 43], repeats: false)
        
        
      }else if(randNum == 44){
        EImageView.image = UIImage(named:"hakubutukan.png")
        MojiTextView.text = "マカオ博物館に行け！ポルトガルと中国文化が融合したマカオ独特の歴史と文化を吸収しろ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 44], repeats: false)
        
        valueToSend = 44

        
      }else if(randNum == 45){
        EImageView.image = UIImage(named:"me.png")
        MojiTextView.text = "気分転換に水舞間のショーを観てこい。きっと感動するはずだ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 45], repeats: false)
        
        valueToSend = 45

        
      }else if(randNum == 46){
        EImageView.image = UIImage(named:"okayu.png")
        MojiTextView.text = "どうやら空腹で集中できてないようだな。黄枝記粥麺店でお粥食べろ！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 46], repeats: false)
        
        valueToSend = 46
        
        
      }else if(randNum == 47){
        EImageView.image = UIImage(named:"okayu.png")
        MojiTextView.text = "グランドリスボア内にある粥麺荘でお粥か刀削麺を食べろ！トッピングに悩め！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 47], repeats: false)
        
        valueToSend = 47
        
        
      }else if(randNum == 48){
        EImageView.image = UIImage(named:"buta.png")
        MojiTextView.text = "FERNANDOに行け！いわしの炭焼き、蟹なべ、子豚の丸焼きなどを食い英気を養え！"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo: ["value": 48], repeats: false)
        
        valueToSend = 48

        
      }else{
        EImageView.image = UIImage(named:"usi.png")
        MojiTextView.text = "小腹が空いたら義順牛奶の牛乳プリンでも食え！甘いものは疲れてる時によい。"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ThirdViewController.changeView), userInfo:  ["value": 100], repeats: false)
        
        valueToSend = 100
        
        }
    }
    //ViewCtrに戻る
    func startView() {
        self.performSegueWithIdentifier("toStart", sender: nil)
    }
    //Mapに進む,画面遷移
    func changeView() {
        self.performSegueWithIdentifier("toMap", sender: nil)
    }
    
    //`SecondViewController`に渡す値を一時的に保持するためのプロパティ
    private var valueToSend = 0
    
    // 以下が一番肝心な`prepareForSegue(_:sender:)`
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toMap" {
            let destinationViewController = segue.destinationViewController as! MapViewController
            destinationViewController.valueToReceive = valueToSend
        }
    }
    
}

