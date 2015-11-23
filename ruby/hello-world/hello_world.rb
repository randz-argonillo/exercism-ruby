class HelloWorld
  def self.hello(name=nil)
    return "Hello, #{name}!" unless name.nil?
    return "Hello, World!" if name.nil?
  end
end