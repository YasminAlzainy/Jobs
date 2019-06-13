

import UIKit
import Alamofire

private let url = "https://jobs.github.com/positions.json?description=java&location=uk"

class JobsDao: NSObject {
    
    //var jobPresenter : JobPresenter?
//    init(presenter: JobPresenter){
//        self.JobPresenter = JobPresenter
//    }
    
    func getJobs() -> [Job] {
        var jobsArray :  [Dictionary<String,Any>]?
        Alamofire.request(url)
                    .responseData { (resData) in
                        let jsonStr = String(data: resData.result.value!, encoding: String.Encoding.utf8)!;
                        let jsonData = jsonStr.data(using: String.Encoding.utf8)
        
                        do{
                            jobsArray = try JSONSerialization.jsonObject(with: jsonData!, options: .allowFragments) as? [Dictionary<String,Any>]
        
                        }
                        catch {print("Error in AF ")}
        
                        //get results array
                        //print(self.resultsArr!)
        
                        //fill a job struct with data from dict inside the json array
   
                        }
                
        var testJobs = [Job]()
        return testJobs
                }

    
    }
    
//    func sendJOBListToPresenter(movieList: [Movie]) {
//        jobPresenter?.
//    }
    


