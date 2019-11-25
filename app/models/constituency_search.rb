class ConstituencySearch
  attr_reader :postcode

  def initialize(postcode:)
    @postcode = postcode
  end

  def find
    client.constituency(postcode: postcode)
  rescue Twfy::Client::APIError
    nil
  end

  def client
    @client ||= Twfy::Client.new(ENV["TWFY_API_KEY"])
  end
end
