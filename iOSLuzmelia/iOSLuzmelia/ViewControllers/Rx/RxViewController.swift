//
//  RxViewController.swift
//  iOSLuzmelia
//
//  Created by Andrés Bonilla Gómez on 27/09/21.
//

import UIKit
import RxCocoa
import RxSwift

class RxViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var btnGoToDashboard: UIButton!
    
    private let disposeBag = DisposeBag()
    private let getBalanceUseCase = GetBalanceUseCase()
    private let viewModel = RxViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setListeners()
        
        showLoader(true)
        getPersonalDataFromAPI()
    }
    
    @IBAction func goToDashboard(_ sender: UIButton) {
        print("go to dashboard")
    }
    
    @IBAction func editingChanged(_ sender: UITextField) {
        //print(sender.text)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func setListeners() {
        
        txtUserName.rx.controlEvent(.editingDidEnd)
            .withLatestFrom(txtUserName.rx.text.orEmpty)
            .subscribe(onNext: { [weak self] (text) in
                //self?.lblText.text = text
                self?.viewModel.textField.onNext(text)
                self?.lblTitle.text = text
            })
            .disposed(by: disposeBag)
        
        btnGoToDashboard.rx.controlEvent(.touchUpInside)
            .subscribe { _ in
                print("goToDashboard")
            }.disposed(by: disposeBag)

        
        getBalanceUseCase.excute()
            .subscribe { balance in
                print(balance)
            } onError: { error in
                print(error)
            } onCompleted: {
                print("Completed")
            } onDisposed: {
                print("diposed")
            }.disposed(by: disposeBag)
    }
    
    func getPersonalDataFromAPI() {
        
        NetworkRequest.shared.request(model: PersonalDataAPI()) { [weak self] (result: Result<PersonalDataModel,Error>) in
            switch result {
            case .success(let model):
                self?.showLoader(false)
                self?.lblTitle.text = model.title
                print(model)
            case .failure(let error):
                self?.showLoader(false)
                print(error)
            }
        }
    }
}
