module Slug
  module InstanceMethods
    def slug
      self.name.downcase.gsub(" ","-")
    end
  end

  module ClassMethods
    def find_by_slug(slug)
      slug.gsub!("-"," ")
      self.all.find{ |object| object.name.downcase == slug}
    end
  end
end
