require_relative './../../gilded_rose'

describe Normal do 
  let(:item){instance_double("Item", name: "Fruit", sell_in: int, quality: 3)}
  subject{ Normal.new(item) }
  
  describe "Takes in an item object" do 
    let(:int){6}
    it "inherits from the item class" do 
      expect(subject.item).to eq item
    end 
  end 

  describe "#update_sell_in" do 
    let(:int){6}
    it "reduces sell_in date by 1" do
      allow(subject.item).to receive(:sell_in=).with(5) 
      subject.update_sell_in()
      expect(subject.item).to have_received(:sell_in=).with(5)
    end   
  end

  describe "#update_quality" do 

    context "within sell in" do 
      let(:int){6}
      it "reduces the quality by 1 on a normal day" do 
        allow(subject.item).to receive(:quality=).with(2)
        subject.update_quality()
        expect(subject.item).to have_received(:quality=).with(2)
      end
    end 
    
    context "out of sellin" do
      let(:int){-1}
      it "reduces the quality by 2 when passed by sellin" do
        allow(subject.item).to receive(:quality=).with(1)
        subject.update_quality()
        expect(subject.item).to have_received(:quality=).with(1)
      end 
    end 
  end 
end 