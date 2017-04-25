require('rspec')
require('tom')

describe(Tom) do
  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      tom = Tom.new("Pete's dragon")
      expect(tom.name()).to(eq("Pete's dragon"))
      expect(tom.food_level()).to(eq(10))
      expect(tom.sleep_level()).to(eq(10))
      expect(tom.activity_level()).to(eq(10))
    end
  end
  describe("#is_alive") do
   it("is alive if the all levels are above 0") do
     tom = Tom.new("Pete's dragon")
     expect(tom.is_alive()).to(eq(true))
    end
  end
  describe("#feed") do
      it("increases amount of food by 2 decreases sleep and activity by 1") do
        tom = Tom.new("Pete's dragon")
        tom.feed()
        expect(tom.food_level()).to(eq(13))
        # expect(tom.sleep_level()).to(eq(9))
        # expect(tom.activity_level()).to(eq(9))
    end
  end
end
