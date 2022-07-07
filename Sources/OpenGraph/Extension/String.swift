//
//  String.swift
//  OpenGraph
//
//  Created by p-x9 on 2021/12/04.
//  Copyright © 2021 Satoshi Takano. All rights reserved.
//

import Foundation

extension String {
    init?(data: Data, `default`: String.Encoding = .utf8, textEncodingName: String) {
        var encoding = `default`
        let estr = textEncodingName
        let cfe = CFStringConvertIANACharSetNameToEncoding(estr as CFString)
        if cfe != kCFStringEncodingInvalidId {
            let se = CFStringConvertEncodingToNSStringEncoding(cfe)
            encoding = String.Encoding(rawValue: se)
        }
        self.init(data: data, encoding: encoding)
    }
}
