//
//  MovieSetCollectionViewCell.swift
//  test
//
//  Created by Vu Huy Hoang on 26/12/2022.
//

import UIKit
import SDWebImage

class MovieSetCollectionViewCell: UICollectionViewCell {
    static let identifier = "TitleCollectionViewCell"
    
    private let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = HomeViewController().itemColor
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterImageView)
        contentView.addSubview(nameLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = CGRect(x: 0, y: 0, width: contentView.bounds.width, height: contentView.bounds.height - 20)
        nameLabel.frame = CGRect(x: 0, y: contentView.bounds.height - 10, width: contentView.bounds.width, height: 15)
    }
    
    public func configure(with model: MovieSet) {
        if (model.title != nil) {
            nameLabel.text = model.title
        } else {
            nameLabel.text = model.name
        }
        
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500\(model.posterPath!)") else {
            return
        }
        posterImageView.sd_setImage(with: url)
    }
}
