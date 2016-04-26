
//
//  MapViewController.swift
//  1031macauojisan
//
//  Created by 20150301 on 4/2/16.
//  Copyright © 2016 YasuhiroSugisawa. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController,MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    //`ViewController`から値を受け取るためのプロパティ
    var valueToReceive: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ピンにアニメーション（ピンが上から降ってくる）
        func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
            if annotation is MKUserLocation {
                return nil
            }
            
            let reuseId = "pin"
            var pinView = mapView.dequeueReusableAnnotationViewWithIdentifier(reuseId) as? MKPinAnnotationView
            if pinView == nil {
                pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
                pinView?.animatesDrop = true
                //ピンの色を変更
                pinView?.pinTintColor = UIColor.greenColor()
            }
            else {
                pinView?.annotation = annotation
            }
            return pinView
        }
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(false)
        
        ///通知を受け取る側///
        //initなどでNSNotification登録
        //NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(MapViewController.start) ,name: "dummy", object: nil)
        
        
        
        //インスタンスプロパティの`valueToReceive`に値が入っているので、それをそのまま使うだけ
        chizu(valueToReceive)
    }
    
        //関数で受け取った時のリアクションを定義
        //func start(notification: NSNotification) {
            //if let userInfo = notification.userInfo {
                //let result = userInfo["value"]! as! Int
                //print("受信した数値：\(result)")
    
        //let result = 47　←47番が表示される。47番以外は警告表示となる。（▲黄色）
    
    func chizu(result: Int) {
        
        switch result {
        
        case 0: //GALO　アロース・ドーゼ　ポルトガル料理//
            //特定の位置を表示（緯度,経度）
            let coordinate = CLLocationCoordinate2DMake(22.153250, 113.557130)
            //表示する範囲を指定（数値が小さくなるほど表示される領域は狭くなります。（つまり、ズームレベルが高くなる））
            let span = MKCoordinateSpanMake(0.01, 0.01)
            //位置と表示範囲からRegionオブジェクトを生成、MapViewにセット
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            //ピンを表示する
            let annotation = MKPointAnnotation()
            //重複のため削除　annotation.coordinate = CLLocationCoordinate2DMake(22.153250, 113.557130)
            //重複のため削除　self.mapView.addAnnotation(annotation)
            //ピンのタイトルを指定する
            //重複のため削除　let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.153250, 113.557130)
            annotation.title = "GALO (ポルトガル料理)"
            annotation.subtitle = "澳門氹仔官也街45号地下"
            self.mapView.addAnnotation(annotation)
            
         
        case 1: //香港国際空港//
            let coordinate = CLLocationCoordinate2DMake(22.308045, 113.918490)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.308045, 113.918490)
            annotation.title = "HongKong International Airport"
            annotation.subtitle = "香港大嶼山香港國際機場"
            self.mapView.addAnnotation(annotation)
            
            
        case 2: //皇朝マッサージセンター//
            let coordinate = CLLocationCoordinate2DMake(22.189220, 113.551163)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.189220, 113.551163)
            annotation.title = "皇朝按摩中心 WongChio Massage Centre"
            annotation.subtitle = "澳門新口岸宋玉生廣場(建興隆廣場)264號地下L舖"
            self.mapView.addAnnotation(annotation)

            
        case 4: //聖ポール天主堂跡//
            let coordinate = CLLocationCoordinate2DMake(22.197675, 113.540861)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.197675, 113.540861)
            annotation.title = "Ruínas de S. Paulo"
            annotation.subtitle = "澳門大三巴街"
            self.mapView.addAnnotation(annotation)

            
        case 6: //マーガレット　カフェ・エ・ナタ//
            let coordinate = CLLocationCoordinate2DMake(22.191810, 113.541846)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.191810, 113.541846)
            annotation.title = "瑪嘉烈蛋撻店 Margaret's cafe e Nata"
            annotation.subtitle = "馬統領街17B南湾金来大厦"
            self.mapView.addAnnotation(annotation)

            
        case 7: //恆友　カレーおでん//
            let coordinate = CLLocationCoordinate2DMake(22.194415, 113.540991)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.194415, 113.540991)
            annotation.title = "恆友"
            annotation.subtitle = "新馬路大堂巷12C號地下"
            self.mapView.addAnnotation(annotation)

            
        case 8: //ベネチアン//
            let coordinate = CLLocationCoordinate2DMake(22.148353, 113.560203)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.148353, 113.560203)
            annotation.title = "The Venetian Macao"
            annotation.subtitle = "Estrada da Baia de Nossa Senhora da Esperanca,Macau"
            self.mapView.addAnnotation(annotation)

            
        case 9: //ドッグレース//
            let coordinate = CLLocationCoordinate2DMake(22.210069, 113.545391)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.210069, 113.545391)
            annotation.title = "Macau (Yat Yuen) Canidrome"
            annotation.subtitle = "白朗古將軍大馬路"
            self.mapView.addAnnotation(annotation)

            
        case 11: //セナド広場//
            let coordinate = CLLocationCoordinate2DMake(22.193530, 113.539760)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.193530, 113.539760)
            annotation.title = "Senado Square"
            annotation.subtitle = "議事亭前地"
            self.mapView.addAnnotation(annotation)

            
        case 13: //大利來記咖啡室　ポークチョップバーガー//
            let coordinate = CLLocationCoordinate2DMake(22.152320, 113.555622)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.152320, 113.555622)
            annotation.title = "大利來記咖啡室"
            annotation.subtitle = "巴波沙總督街18號地下"
            self.mapView.addAnnotation(annotation)

            
        case 14: //盧廉若公園//
            let coordinate = CLLocationCoordinate2DMake(22.200440, 113.548015)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.200440, 113.548015)
            annotation.title = "盧廉若公園"
            annotation.subtitle = "羅利老馬路10号"
            self.mapView.addAnnotation(annotation)

            
        case 15: //禮記雪糕　アイスクリーム//
            let coordinate = CLLocationCoordinate2DMake(22.196290, 113.545329)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.196290, 113.545329)
            annotation.title = "禮記雪糕"
            annotation.subtitle = "荷蘭園大馬路12號地下"
            self.mapView.addAnnotation(annotation)

            
        case 16: //鄭家屋敷//
            let coordinate = CLLocationCoordinate2DMake(22.188500, 113.534435)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.188500, 113.534435)
            annotation.title = "鄭家屋敷 Mandarin's House"
            annotation.subtitle = "澳門龍頭左巷"
            self.mapView.addAnnotation(annotation)

            
        case 18: //高雅扒房//
            let coordinate = CLLocationCoordinate2DMake(22.191560, 113.554872)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.191560, 113.554872)
            annotation.title = "高雅扒房"
            annotation.subtitle = "友誼大馬路澳門金沙酒店 SandsMacaoHotel,3F"
            self.mapView.addAnnotation(annotation)

            
        case 22: //Restaurante Escada//
            let coordinate = CLLocationCoordinate2DMake(22.193125, 113.540620)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.193125, 113.540620)
            annotation.title = "Restaurante Escada"
            annotation.subtitle = "新馬路大堂街8號"
            self.mapView.addAnnotation(annotation)

            
        case 25: //Studio City Macau//
            let coordinate = CLLocationCoordinate2DMake(22.140955, 113.562642)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.140955, 113.562642)
            annotation.title = "Studio City Macau"
            annotation.subtitle = "莲花路"
            self.mapView.addAnnotation(annotation)

            
        case 27: //Restaurante Solmar　アフリカンチキン//
            let coordinate = CLLocationCoordinate2DMake(22.191955, 113.540550)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.191955, 113.540550)
            annotation.title = "沙利文餐廳 Restaurante Solmar"
            annotation.subtitle = "南灣大馬路512號"
            self.mapView.addAnnotation(annotation)

            
        case 28: //石排灣郊野公園//
            let coordinate = CLLocationCoordinate2DMake(22.126260, 113.557843)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.126260, 113.557843)
            annotation.title = "石排灣郊野公園"
            annotation.subtitle = "路環石排灣大馬路"
            self.mapView.addAnnotation(annotation)

            
        case 30: //Bar Celona Tapas & Rice スペイン料理//
            let coordinate = CLLocationCoordinate2DMake(22.205310, 113.555220)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.205310, 113.555220)
            annotation.title = "Bar Celona Tapas & Rice"
            annotation.subtitle = "慕拉士大馬路16號"
            self.mapView.addAnnotation(annotation)

            
        case 31: //三街会館（関帝廟）//
            let coordinate = CLLocationCoordinate2DMake(22.193990, 113.539370)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.193990, 113.539370)
            annotation.title = "三街会館（関帝廟）"
            annotation.subtitle = "澳門公局新市南街"
            self.mapView.addAnnotation(annotation)

            
        case 32: //コロアネ島のハクサビーチ//
            let coordinate = CLLocationCoordinate2DMake(22.120270, 113.570620)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.120270, 113.570620)
            annotation.title = "黑沙海灘 Hac Sa Beach"
            annotation.subtitle = "路環黑沙海灘"
            self.mapView.addAnnotation(annotation)

            
        case 33: //ギャラクシー//
            let coordinate = CLLocationCoordinate2DMake(22.149225, 113.553395)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.149225, 113.553395)
            annotation.title = "澳門銀河 Galaxy Macau"
            annotation.subtitle = "澳門路氹城望德聖母灣大馬路"
            self.mapView.addAnnotation(annotation)

            
        case 34: //ギア要塞//
            let coordinate = CLLocationCoordinate2DMake(22.196530, 113.549615)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.196530, 113.549615)
            annotation.title = "Guia Fortress"
            annotation.subtitle = "澳門東望洋山頂"
            self.mapView.addAnnotation(annotation)

            
        case 35: //法蘭度餐廳 Restaurante Fernando//
            let coordinate = CLLocationCoordinate2DMake(22.119620, 113.569550)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.119620, 113.569550)
            annotation.title = "法蘭度餐廳 Restaurante Fernando"
            annotation.subtitle = "黑沙海灘9號"
            self.mapView.addAnnotation(annotation)

            
        case 36: //スイカジュース//
            let coordinate = CLLocationCoordinate2DMake(22.191810, 113.541846)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.191810, 113.541846)
            annotation.title = "瑪嘉烈蛋撻店 Margaret's cafe e Nata"
            annotation.subtitle = "馬統領街金利來大廈17B地舖"
            self.mapView.addAnnotation(annotation)

            
        case 38: //ナーチャ廟//
            let coordinate = CLLocationCoordinate2DMake(22.197590, 113.540565)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.197590, 113.540565)
            annotation.title = "哪吒廟 Na Tcha Temple"
            annotation.subtitle = "大三巴右街"
            self.mapView.addAnnotation(annotation)

            
        case 39: //マカオタワー//
            let coordinate = CLLocationCoordinate2DMake(22.179770, 113.536865)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.179770, 113.536865)
            annotation.title = "Macau Tower"
            annotation.subtitle = "南灣新填海區"
            self.mapView.addAnnotation(annotation)

            
        case 40: //タイパ競馬場//
            let coordinate = CLLocationCoordinate2DMake(22.156680, 113.548130)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.156680, 113.548130)
            annotation.title = "氹仔馬場 Taipa Racecourse"
            annotation.subtitle = "柯維納総督大馬路"
            self.mapView.addAnnotation(annotation)

            
        case 42: //ガロ（お土産）//
            let coordinate = CLLocationCoordinate2DMake(22.193530, 113.539760)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.193530, 113.539760)
            annotation.title = "Senado Square"
            annotation.subtitle = "議事亭前地"
            self.mapView.addAnnotation(annotation)

            
        case 44: //マカオ博物館//
            let coordinate = CLLocationCoordinate2DMake(22.197245, 113.542205)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.197245, 113.542205)
            annotation.title = "澳門博物館 Macau Museum"
            annotation.subtitle = "博物館前地112号"
            self.mapView.addAnnotation(annotation)

            
        case 45: //水舞間//
            let coordinate = CLLocationCoordinate2DMake(22.148690, 113.565735)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.148690, 113.565735)
            annotation.title = "水舞間 The House of Dancing Water"
            annotation.subtitle = "新濠天地水舞間劇院"
            self.mapView.addAnnotation(annotation)

            
        case 46: //黄枝記粥麺店//
            let coordinate = CLLocationCoordinate2DMake(22.194145, 113.540095)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.194145, 113.540095)
            annotation.title = "黄枝記粥麺店"
            annotation.subtitle = "中国澳門議事亭前地17號"
            self.mapView.addAnnotation(annotation)

            
        case 47: //粥麺荘//
            let coordinate = CLLocationCoordinate2DMake(22.190970, 113.543570)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.190970, 113.543570)
            annotation.title = "粥麺荘 Noodle & Congee Center"
            annotation.subtitle = "澳門葡京路　新葡京紅金上層"
            self.mapView.addAnnotation(annotation)

            
        case 48: //法蘭度餐廳 Restaurante Fernando//
            let coordinate = CLLocationCoordinate2DMake(22.119620, 113.569550)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.119620, 113.569550)
            annotation.title = "法蘭度餐廳 Restaurante Fernando"
            annotation.subtitle = "黑沙海灘9號"
            self.mapView.addAnnotation(annotation)

            
        default: //義順牛奶//
            let coordinate = CLLocationCoordinate2DMake(22.192850, 113.540340)
            
            let span = MKCoordinateSpanMake(0.01, 0.01)
            
            let region = MKCoordinateRegionMake(coordinate, span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(22.192850, 113.540340)
            annotation.title = "義順牛奶 Yee Shun Milk Company"
            annotation.subtitle = "新馬路381号"
            mapView.addAnnotation(annotation)
            
        //default:
            //式の値が上記の値以外の場合はここの処理が実行される
    
                }
            }
}

