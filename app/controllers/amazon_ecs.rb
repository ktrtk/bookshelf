require 'amazon/ecs'

Amazon::Ecs.options = {
  :associate_tag=>'',
  :AWS_access_key_id=>'',
  :AWS_secret_key=>'',
  :country=>'jp'
}

class EcsWrapper
  attr_reader :title, :author

  def lookup(asin)
    res = Amazon.Ecs.item_lookup(asin)
    item = res.first_item
    @title = item.get('ItemAttributes/Title')
    @author = item.get('ItemAttributes/Author')
  end
end
