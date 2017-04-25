class Tom
  @@namearray=[]
  define_method(:initialize)do |name|

    @last_feed=Time.now()
    @last_sleep=Time.now()
    @last_activity=Time.now()

    @name=name
    @food_level= 10
    @sleep_level= 10
    @activity_level= 10
  end
  define_method(:time_passing)do
  @food_level-= 1
  @sleep_level-= 1
  @activity_level-= 1
  end
  define_method(:calculation)do
    seconds= Time.now-@last_feed
    seconds.round().times()do |second|
    second.time_passing()
    puts (second.time_passing())
  end
end
  define_method(:name)do
    @name
  end

  define_method(:food_level)do
    @food_level
  end

  define_method(:sleep_level)do
    @sleep_level
  end

  define_method(:activity_level)do
    @activity_level
  end

  define_singleton_method(:all)do
    @@namearray
  end

  define_method(:feed) do
    self.calculation()
    if self.is_alive===true
    @currenttime=Time.now
    @food_level +=3
  else
    "you're dead"
    end
  end
  define_method(:rest) do
    self.calculation
    if self.is_alive===true
    @currentrest=Time.now
    @sleep_level +=3
  else
    "you're dead"
    end
end
  define_method(:activity)do
  self.calculation
  if self.is_alive===true
  @currentactivity=Time.now
  @activity_level +=3
else
  "you're dead"
    end
end
  define_method(:is_alive)do
    if @food_level ==0 || @sleep_level==0 || @activity_level==0
      false
    else
      true
  end
end
define_method(:is_dead)do
@food_level-=10
@sleep_level-=10
@activity_level-=10
end
end
