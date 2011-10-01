module ApplicationHelper

 # Returns a tile on per page basis.
 def title
  base_title = 'cout << "AppStar";'
  if @title.nil?
   base_title
  else
   "cout << \"AppStar | #{@title}\";"
  end
 end

end
