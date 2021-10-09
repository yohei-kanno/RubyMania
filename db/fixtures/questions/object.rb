$o_question1 =
  'c = Class.new
p c.class'

$o_question2 =
  'class C1
end

p C1.new.class'

$o_question3 =
  'class C1
  def initialize(foo)
    @foo = foo
  end

  def m_1
    p @foo
  end
end

class C2 < C1
end

c2 = C2.new("foo")
c2.m_1'

$o_question4 =
  'class C1
  def initialize(foo, bar)
    @foo = foo
    @bar = bar
  end

  def m_1
    p @foo
  end

  private
    def m_2
      p @foo + @bar
    end
end

class C2 < C1
end

c2 = C2.new("foo", "bar")
c2.m_2'

$o_question5 =
  'class C1
  def initialize(foo, bar)
    @foo = foo
    @bar = bar
  end

  def m_1
    p  m_2
  end

  protected
    def m_2
      @foo + @bar
    end
end

class C2 < C1
end

c2 = C2.new("foo", "bar")
c2.m_1'

$o_question6 =
  'class C1
  def initialize(foo, bar)
    @foo = foo
    @bar = bar
  end

  def m_1
    p  m_2
  end

  def m_2
    @foo + @bar
  end

  private :m_2
end

class C2 < C1
end

c2 = C2.new("foo", "bar")
c2.m_2'

$o_question7 =
  'class C1
end

class C2 < C1
end

c2 = C2.new

p c2.class'

$o_question8 =
  'class C1
end

class C2 < C1
end

c2 = C2.new

p c2.superclass'

$o_question9 =
  'class C1
end

class C2 < C1
end

c2 = C2.new

p c2.class.ancestors.last'

$o_question10 =
  'class C1
end

class C2 < C1
end

class C3 < C1
end

c3 = C3.new

p c3.class.ancestors'

$o_question11 =
  'class C1
  def m_1; end
end

class C2 < C1
end

class C3 < C1
end

p C3.instance_methods.include?(:m_1)'

$o_question12 =
  'class C1
  def m_1
    p "m_1"
  end
end

c1 = C1.new
p c1.methods(false)'

$o_question13 =
  'class C1
  def initialize(foo, bar)
    @foo = foo
    @bar = bar
  end

  def m_1
    p @foo + @bar
  end
end

class C2 < C1
  alias :m_2 :m_1
end

C2.new("foo", "bar")
p C2.instance_methods(false)'

$o_question14 =
  'class C1
  def initialize(foo, bar)
    @foo = foo
    @bar = bar
  end

  def m_1
    p @foo + @bar
  end
end

class C2 < C1
end

c2 = C2.new("foo", "bar")
p c2.instance_variables'

$o_question15 =
  'class C1
  def m_1; end
  def m_3; end
end

class C2 < C1
  alias :m_2 :m_1
  undef :m_3
end

p C1.instance_methods(false)'

$o_question16 =
  'class C1
  def m_1; end
  def m_3
    "m_3"
  end
end

class C2 < C1
  alias :m_2 :m_1
  undef :m_3
end

c2 = C2.new
p c2.m_3'

$o_question17 =
  'module M1
  def m_1
    p "m_1"
  end
end

m1 = M1.new
m1.m_1'

$o_question18 =
  'module M1
  def m_1; end
  def m_2; end
end

p M1.ancestors'

$o_question19 =
  'module M1
end

class C1
  include M1
end

p C1.ancestors'

$o_question20 =
  'module M1
end

class C1
  prepend M1
end

p C1.ancestors'

$o_question21 =
  'module M1
  def m_1
    p "M1 m_1"
  end
end

module M2
  def m_1
    p "M2 m_1"
  end
end

class C1
  include M1
  include M2

  def m_1
    p "C1 m_1"
  end
end

c1 = C1.new
c1.m_1'

$o_question22 =
  'module M1
  def m_1
    p "M1 m_1"
  end
end

module M2
  def m_1
    p "M2 m_1"
  end
end

class C1
  prepend M1
  prepend M2

  def m_1
    p "C1 m_1"
  end
end

c1 = C1.new
c1.m_1'

$o_question23 =
  'class C1
  def m_1
    p "m_1"
  end
end

c1 = C1.new
c2 = C1.new

def c1.m_2
  p "m_2"
end

c1.m_2'

$o_question24 =
  'class C1
  def m_1
    p "m_1"
  end
end

c1 = C1.new
c2 = C1.new

def c1.m_2
  p "m_2"
end

c2.m_2'

$o_question25 =
  'module M1
end

class C1
  include M1
  def m_1
    p "m_1"
  end
end

c1 = C1.new

def c1.m_2
  p "m_2"
end

p c1.singleton_class.superclass'

$o_question26 =
  'class C1
  @@count = 0
  def initialize
    @@count += 1
  end
end

class C2 < C1
end

class C3 < C2
end

C1.new
C2.new
C3.new

p C3.class_variable_get(:@@count)'

$o_question27 =
  'class C1
  @@count = 0
  def initialize
    @@count += 1
  end
end

class C2 < C1
end

class C3 < C2
  def initialize
  end
end

C1.new
C2.new
C3.new

p C3.class_variable_get(:@@count)'

$o_question28 =
  'class C1
  @@count = 0
  def initialize
    @@count += 1
  end
end

class C2 < C1
  def initialize
  end
end

class C3 < C2
  def initialize
  end
end

C1.new
C2.new
C3.new

p C3.class_variable_get(:@@count)'

$o_question29 =
  'class C1
  @@count = 0
  def initialize
    @@count += 1
  end
end

class C2 < C1
  def initialize
    super
  end
end

class C3 < C2
  def initialize
  end
end

C1.new
C2.new
C3.new

p C3.class_variable_get(:@@count)'

$o_question30 =
  'module M1
  def m_1
    super
    p "M1"
  end
end

class C1
  def m_1
    p "C1"
  end
end

class C2 < C1
  def m_1
    p "C2"
  end
  prepend M1
end

c2 = C2.new
c2.m_1'

$o_question31 =
  'module M1
  def m_1
    super
    p "M1"
  end
end

class C1
  def m_1
    p "C1"
  end
end

class C2 < C1
  def m_1
    super
    p "C2"
  end
include M1
end

c2 = C2.new
c2.m_1'

$o_question32 =
  'module M1
  def m_1
    super
    p "M1"
  end
end

class C1
  def m_1
    p "C1"
  end
end

class C2 < C1
  def m_1
    super
    p "C2"
  end
  include M1
end

p C2.methods.include? :m_1'

$o_question33 =
  'module M1
  def m_1
    super
    p "M1"
  end
end

class C1
  def m_1
    p "C1"
  end
end

class C2 < C1
  def m_1
    super
    p "C2"
  end
  include M1
end

p C2.instance_methods.include? :m_1'

$o_question34 =
  'class C1
  def m_1
    p "C1"
  end
end

class C2 < C1
  def m_1
    p "C2"
  end
end

module M1
  refine C2 do
    def m_2
      p "M1"
    end
  end
end

C2.new.m_2'

$o_question35 =
  'class C1
  def m_1
    p "C1"
  end
end

class C2 < C1
  def m_1
    p "C2"
  end
end

module M1
  refine C1 do
    def m_2
      p "M1"
    end
  end
end

using M1

C2.new.m_2'

$o_question36 =
  'class C1

def m_1
end

private :m_1
end

p C1.new.private_methods.include?(:m_1)'

$o_question37 =
  'class C1
end

p C1.new.private_methods.include?(:initialize)'

$o_question38 =
  'class C1
  def method_missing(id, *arg)
    p "#{id}"
  end
end

class C2 < C1
end

C2.new.test_method'

$o_question39 =
  'class C1
  def m_1
    p "C1"
  end

  alias_method :m_2, :m_1
end

class C1
  def m_1
    p "Another C1"
  end
end


C1.new.m_2'

$o_question40 =
  'class C1
  def m_1
    p "C1"
  end

  alias_method :m_2, :m_1
end

class C1
  def m_1
    p "Another C1"
  end

  alias :m_3 :m_2
end


C1.new.m_2'

$o_question41 =
  'class C1
  def m_1
    p "C1"
  end

  alias_method :m_2, :m_1
end

class C1
  def m_1
    p "Another C1"
  end

  alias "m_3" "m_2"
end


C1.new.m_2'

$o_question42 =
  'class C1
  def m_1
    p "C1"
  end

  alias_method "m_2", "m_1"
end

class C1
  def m_1
    p "Another C1"
  end

  alias :m_3 :m_2
end


C1.new.m_2'

$o_question43 =
  'class C1
  def initialize(obj)
    @obj = obj
  end

  def m_1
    p @obj
  end
end

C1.new("foo").m_1'

$o_question44 =
  'class C1
  def m_1
    p "m_1"
  end
end

class C2 < C1
  def m_1(arg)
    super
    p "m_2"
  end
end

C2.new.m_1("")'

$o_question45 =
  'class C1
  def m_1
    p "m_1"
  end
end

class C2 < C1
  def m_1(arg)
    super()
    p "m_2"
  end
end

C2.new.m_1("")'

$o_question46 =
  'class C1
  def m_1(arg)
    p "m_1"
  end
end

class C2 < C1
  def m_1(arg)
    super
    p "m_2"
  end
end

C2.new.m_1("")'

$o_question47 =
  'module M1
  module M2
    module M3
    end
  end
end


module M1
  module M3
    p Module.nesting
  end
end'

$o_question48 =
  'module M1
  module M2
    module M3
    end
  end
end


module M1
  p Module.nesting
  module M3
  end
end'

$o_question49 =
  'module M1
  module M2
    module M3
      p Module.nesting
    end
  end
end


module M1
  module M3
  end
end'

$o_question50 =
  'module M1
  module M2
    p Module.nesting
    module M3
    end
  end
end


module M1
  module M3
  end
end'

$o_question51 =
  'module M1
  def m_1
    p "m_1"
  end
end

M1.new.m_1'

$o_question52 =
  'module M1
  def m_1
    p "m_1"
  end

  module_function :m_1
end

M1.m_1'

$o_question53 =
  'CONST = [1,2,3,4,5].freeze
CONST = CONST[1] = 3
p CONST'

$o_question54 =
  'CONST = [1,2,3,4,5].freeze
CONST = [1,3,3,4,5]
p CONST'

$o_question55 =
  'obj1 = [1,2].freeze
obj2 = obj1.dup
obj2[0] = 5
p obj2'

$o_question56 =
  'obj1 = [1,2].freeze
obj2 = obj1.clone
obj2[0] = 5
p obj2'

$o_question57 =
  'obj1 = 1

class C1
  def m_1
    p obj1
  end
end

p C1.new.m_1'

$o_question58 =
  'module M1
  D = 1
  class C1
    A = 2
  end

  class C2
  end
end

p M1::C1.constants'

$o_question59 =
  'module M1
  D = 1
  class C1
    A = 2
  end

  class C2
  end
end

p M1.constants'

$o_question60 =
  'module M1
  D = 1
  class C1
    A = 2
  end

  class C2
  end
end

p C2.constants'
