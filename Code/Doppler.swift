import Foundation

public class Doppler {
	private static let urlTemplate = "https://openradar.appspot.com/api/radar?number=%ld"

	static func radar(number: Int, completion: (radar: Radar?, error: ErrorType?) -> ()) -> NSURLSessionDataTask? {
		if let url = NSURL(string: String(format: urlTemplate, number)) {
		  request(url) { (data, _, error) in 
		  	do {
		  	  if let data = data {
		  	    let json = try NSJSONSerialization.JSONObjectWithData(data, options: [])
		  	    let radar = try Radar.decode(json)
		  	    completion(radar: radar, error: nil)
		  	  }
		  	} catch let error as NSError {
		  		completion(radar: nil, error: error)
		  	} catch _ { /*  ¯\_(ツ)_/¯ */ }

		  	if let error = error {
		  	  completion(radar: nil, error: error)
		  	}
		  }
		}

		return nil
	}

	static func request(url: NSURL, completion: (data: NSData?, response: NSURLResponse?, error: NSError?) -> ()) -> NSURLSessionDataTask {
		let sessionConfiguration = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session = NSURLSession(configuration: sessionConfiguration)

        let task = session.dataTaskWithURL(url, completionHandler: completion)
        task.resume()
        return task
	}
}
