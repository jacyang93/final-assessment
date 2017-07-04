RSpec.describe Item, type: :model do
  it { should belong_to(:user) }
 end


 describe Item, "search" do
   it "can search item" do
     item = Item.new(title: "abc", category_id: 1, user_id: 1)
     item.save
     expect(Item.search("abc")) == (item)
   end
 end
