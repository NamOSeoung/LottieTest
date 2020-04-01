//
//  ViewController.swift
//  LottieTest
//
//  Created by 남오승 on 2020/04/01.
//  Copyright © 2020 남오승. All rights reserved.
//

import UIKit
import Lottie

/*
 
 pod 에서 install 한 module 이 제대로 import 되지 않을 시 대처방법
 
 Lottie를 가져 오기 전에 Simulator에서 프로젝트를 실행하거나 빌드 한 후 Lottie를 프로젝트로 가져올 수 있습니다. 나는 같은 문제가 있었고 나를 도왔다.
 
 참고 url : https://github.com/airbnb/lottie-ios/issues/634
 
 */

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let animationView = AnimationView(name: "showcase") // AnimationView(name: "파일이름")으로 설정
        
        animationView.frame = CGRect(x: 0, y: 0, width: 300, height: 300) //애니메이션뷰의 크기설정
        animationView.center = self.view.center //애니메이션뷰의 위치설정
        animationView.contentMode = .scaleAspectFill //애니메이션 뷰의 콘텐츠 모드 설정 (꽉차게 할 것이냐 등등...)
        
        view.addSubview(animationView) //애니메이션ㅂ뉴를 메인뷰에 추가시킨다.
        
        animationView.play() //애니메이션 뷰의 실행
        
        // Do any additional setup after loading the view.
    }


}

