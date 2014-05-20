
require 'ostruct'

#
#
#
#
module HashLibs
  def deep_merge(other_hash)
    self.merge(other_hash) do |key, oldval, newval|
      oldval = oldval.to_hash if oldval.respond_to?(:to_hash)
      newval = newval.to_hash if newval.respond_to?(:to_hash)
      oldval.class.to_s == 'Hash' && newval.class.to_s == 'Hash' ? oldval.merge(newval) : newval
    end
  end
  
  def to_ostruct
    o = OpenStruct.new(self)
    each.with_object(o) do |(k,v), o|
      o.send(:"#{k}=", v.to_ostruct) if v.respond_to? :to_ostruct
    end
    o
  end
end

Hash.send(:include, HashLibs)
