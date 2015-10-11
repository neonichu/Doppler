import Foundation

public struct Radar {
	public let radarNumber: Int

	public let title: String
	public let body: String

	public let product: String
	public let version: String

	public let classification: String
	public let reproducible: String

	public let status: String? = nil
	public let dateOriginated: NSDate? = nil

	public let configurationString: String? = nil
	public let attachmentURL: NSURL? = nil
}

/* TODO: unhandled OpenRadar data: originated, resolved, status, user */
extension Radar : Decodable {
	public static func decode(json: AnyObject) throws -> Radar {
		let result = try json => "result"
		let number = (try result => "number") as String

		return try Radar(
			radarNumber: Int(number) ?? 0,
			title: result => "title",
			body: result => "description",
			product: result => "product",
			version: result => "product_version",
			classification: result => "classification",
			reproducible: result => "reproducible")
	}
}
