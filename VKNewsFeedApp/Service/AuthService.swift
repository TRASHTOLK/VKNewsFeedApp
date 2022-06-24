//
//  AuthService.swift
//  VKNewsFeedApp
//
//  Created by Ya on 24.06.22.
//

import Foundation
import VKSdkFramework

class AuthService: NSObject, VKSdkDelegate, VKSdkUIDelegate {
    
    private let appId = "8199862"
    private let vkSdk: VKSdk
    
    override init() {
        vkSdk = VKSdk.initialize(withAppId: appId)
        super.init()
        print(" VKSdk.initialize")
        vkSdk.register(self)
        vkSdk.uiDelegate = self
    }
    
    func vkSdkAccessAuthorizationFinished(with result: VKAuthorizationResult!) {
        print(#function)
    }
    
    func vkSdkUserAuthorizationFailed() {
        print(#function)
    }
    
    func vkSdkShouldPresent(_ controller: UIViewController!) {
        print(#function)
    }
    
    func vkSdkNeedCaptchaEnter(_ captchaError: VKError!) {
        print(#function)
    }
    
    
    
}
