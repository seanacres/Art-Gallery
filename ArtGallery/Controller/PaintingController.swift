//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Sean Acres on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    var paintings: [Painting] = []
    
    func loadPaintingsFromAssets() {
        for x in 1...12 {
            let paintingName = "Image\(x)"
            guard let image = UIImage(named: paintingName) else { continue }

            paintings.append(Painting(image: image))
        }
    }
    
    init() {
        loadPaintingsFromAssets()
    }
    
    func toggleIsLiked(for painting: Painting) {
        painting.isLiked = !painting.isLiked
    }
}
