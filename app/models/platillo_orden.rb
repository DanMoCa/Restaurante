class PlatilloOrden < ActiveRecord::Base
    has_many :ordens, dependent: :destroy
    has_many :platillos
   
   
   
end
