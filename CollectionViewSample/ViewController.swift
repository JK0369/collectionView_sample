//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by 김종권 on 2021/06/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var dataSource: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegate()
        loadData()
    }

    private func setupDelegate() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    private func loadData() {
        let sampleData = ["One", "Two", "Three", "four", "Five", "Six", "Seven"]
        dataSource = sampleData
    }
}

extension ViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
        cell.data = dataSource[indexPath.item]
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
        print(indexPath.count)
        print(indexPath.item)
    }
}
