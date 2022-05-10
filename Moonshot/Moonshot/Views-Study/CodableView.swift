//
//  CodableView.swift
//  Moonshot
//
//  Created by NGUYEN MINH DUC on 03/05/2022.
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct CodableView: View {
    var body: some View {
        Button("Decode Json") {
            let input = """
    {
        "name": "Taylor Swift",
        "address": {
            "street": "555, Taylor Swift Avenue",
            "city": "Nashville"
        }
    }
    """
            
            let data = Data(input.utf8)
            if let user = try? JSONDecoder().decode(User.self, from: data) {
                print(user.address.street)
            } else {
                print("Null")
            }
        }
    }
}

struct CodableView_Previews: PreviewProvider {
    static var previews: some View {
        CodableView()
    }
}
