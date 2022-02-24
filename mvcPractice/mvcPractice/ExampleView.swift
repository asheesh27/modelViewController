//
//  ExampleView.swift
//  mvcPractice
//
//  Created by macbook on 24/02/22.
//

import UIKit

class ExampleView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .black
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = .red
        addSubview(label)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) nas not been implemented")
    }
    
    public func configure(with name: String){
        label.text = name
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        label.frame = CGRect(
            x: 10,
            y: 10,
            width: frame.size.width - 20,
            height: frame.size.height - 20)
    }

}
