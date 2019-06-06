//
//  PaintingTestTableViewCell.swift
//  ArtGallery
//
//  Created by Sean Acres on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {

    @IBOutlet weak var paintingImageView: UIImageView!
    @IBOutlet weak var likeButtonLabel: UIButton!
    weak var delegate: PaintingTableViewCellDelegate?
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBAction func likeButtonTapped(_ sender: Any) {
        self.delegate?.likeButtonWasTapped(on: self)
    }
    
    private func updateViews() {
        guard let painting = painting else { return }
        paintingImageView.image = painting.image
        paintingImageView.sizeToFit()
        
        if painting.isLiked {
            likeButtonLabel.setTitle("Liked", for: .normal)
            likeButtonLabel.titleLabel?.font = .boldSystemFont(ofSize: 15.0)
        } else {
            likeButtonLabel.setTitle("Like", for: .normal)
        }
    }
    
    
}
