//
//  AddJournalEntryViewController.swift
//  JRNL
//
//  Created by Jungjin Park on 2024-05-10.
//

import UIKit

class AddJournalEntryViewController: UIViewController {

    // IBOutlet 은 optional value, 내가 입력해주니까 !를 붙여서 사용
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var bodyTextView: UITextView!
    @IBOutlet var photoImageView: UIImageView!
    
    var newJournalEntry: JournalEntry?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    // segue 가 동작하기 전에 기능이 동작함을 인지하고 동작시키기 위한 함수로 view controller 에 모두 있음
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let title = titleTextField.text ?? ""
        let body = bodyTextView.text ?? ""
        let photo = photoImageView.image
        let rating = 3
        newJournalEntry = JournalEntry(rating: rating, title: title, body: body, photo: photo)
    }

}
