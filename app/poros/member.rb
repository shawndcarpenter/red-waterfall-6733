class Member 
  attr_reader :id, :allies, :enemies, :photo_url, :affiliation, :name

  def initialize(member_data)
    @id = member_data[:_id]
    @allies = get_allies(member_data)
    @enemies = get_enemies(member_data)
    @photo_url = member_data[:photoUrl]
    @name = member_data[:name]
    @affiliation = member_data[:affiliation]
  end

  def get_enemies(member_data)
    if member_data[:enemies] == []
      "none"
    else
      member_data[:enemies].to_sentence
    end
  end

  def get_allies(member_data)
    if member_data[:allies] == []
      "none"
    else
      member_data[:allies].to_sentence
    end
  end
end