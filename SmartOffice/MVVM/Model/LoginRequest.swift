//
//  LoginRequest.swift
//  SmartOffice
//
//  Created by Pradeep on 26/04/22.
//

import Foundation

struct LoginRequest : Encodable
{
    var userEmail, userPassword: String?
}
