class Seminario < ActiveRecord::Base
  belongs_to :calendario

  validates :titulo, :descripcion, :duracion, :modalidad, presence: true

  validates :titulo, uniqueness: true

  has_attached_file :imagen, styles: { medium: "730x730>", thumb: "100x100>" }
	#do_not_validate_attachment_file_type :image
  	validates_attachment_content_type :imagen, content_type: /\Aimage\/.*\z/

  	

def self.search(search)

    if search
      where('titulo like ? or descripccion like ?', "%#{search}%", "%#{search}%") 
    
    else
    Seminario.all
    end

  end

end
