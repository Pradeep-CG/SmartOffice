//
//  LoginResource.swift
//  SmartOffice
//
//  Created by Pradeep on 26/04/22.
//

import Foundation

struct LoginResource {
    
    func loginUser(loginRequest: LoginRequest, complition: @escaping  (_ result: LoginResponse?) -> Void) {
        
        let loginUrl = URL(string: ApiEndPoint.login)!
        let httpUtility = HttpUtility()
        
        do {
            let loginPostBody = try JSONEncoder().encode(loginRequest)
            
            httpUtility.postApiData(requestUrl: loginUrl, requestBody: loginPostBody, resultType: LoginResponse.self) { (loginApiResponse) in
                
                _ = complition(loginApiResponse)
            }
            
        } catch let error {
            debugPrint(error)
        }
        
    }
}
