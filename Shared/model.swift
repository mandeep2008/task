//
//  model.swift
//  FirstTask
//
//  Created by MAC on 7/22/22.
//

import SwiftUI

struct item: Identifiable{
    let id = UUID()
    let title: String
    var childRows: [item]?
}

