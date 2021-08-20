//
//  MainCollectionCellLayout.swift
//  OpenMarket
//
//  Created by Do Yi Lee on 2021/08/18.
//

import UIKit
struct Layout {
    static func setupCollectionViewLayOut(_ view: UIView, _ collectionView: UICollectionView, _ changeScrollDirection: Bool) -> UICollectionViewFlowLayout{
        let flowLayout = UICollectionViewFlowLayout()
        
        flowLayout.minimumLineSpacing = 8
        flowLayout.minimumInteritemSpacing = 8
        flowLayout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        
        let halfWidth = view.bounds.width / 2.2
        let halfHeight = view.bounds.height / 2.4
        flowLayout.itemSize = CGSize(width: halfWidth , height: halfHeight - 50)
        collectionView.collectionViewLayout = flowLayout
        
        if changeScrollDirection == true {
            flowLayout.scrollDirection = .horizontal
        }
    
        return flowLayout
    }
    
    static func createBasicListLayout() -> UICollectionViewLayout {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                              heightDimension: .absolute(200))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
      
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                              heightDimension: .absolute(44))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                         subitems: [item])
      
        let section = NSCollectionLayoutSection(group: group)
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
    }

    
//    static func compoLayout() -> UICollectionViewCompositionalLayout {
//
//        let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(1)))
//        item.contentInsets = .init(top: 0, leading: 5, bottom: 16, trailing: 5)
//
//        let group = NSCollectionLayoutGroup(layoutSize: .init(widthDimension: .fractionalWidth(0.9), heightDimension: .estimated(200)))
//
//        let section = NSCollectionLayoutSection(group: group)
//
//        section.orthogonalScrollingBehavior = .groupPaging
//        section.contentInsets = .init(top: 0, leading: 16, bottom: 0, trailing: 16)
//        return
//
//    }
}


