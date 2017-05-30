
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    var currentQuestionsIndex: Int = 0
    let questions: [String] = [
        "What is yourname?", "What is your age?", "What is your hobby?"
    ]
    
    let answers:[String] = ["Ayako", "29", "Manga"]
    
    
    //Viewがロードされたら実行
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionsIndex]
    }
    
    @IBAction func showNextQuestion(_ sender:UIButton)
    {
        currentQuestionsIndex = (currentQuestionsIndex + 1) % questions.count
        
        let question: String = questions[currentQuestionsIndex]
        
        //初期値を見せる
        questionLabel.text = question
        answerLabel.text = "???"
        
    }
    
    @IBAction func showAnswer(_ sender:UIButton){
        let answer: String = answers[currentQuestionsIndex]
        answerLabel.text = answer
    }
    

}

