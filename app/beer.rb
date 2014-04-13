class Beer
  attr_accessor :name, :image_url, :description

  def self.from_json(json)
    Beer.new.tap do |b|
      b.name = json["name"]
      b.description = json["description"]
      b.image_url = json["labels"]["medium"] if json["labels"]
    end
  end
end
