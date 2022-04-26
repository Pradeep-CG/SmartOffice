//
//  LoginResponse.swift
//  SmartOffice
//
//  Created by Pradeep on 26/04/22.
//

import Foundation

struct LoginResponse : Decodable {

    let errorMessage: String?
    let data: LoginResponseData?
}

struct LoginResponseData : Decodable
{
    let userName: String
    let userID: Int
    let email: String

    enum CodingKeys: String, CodingKey {
        case userName
        case userID = "userId"
        case email
    }
}
