class Programa < ActiveRecord::Base

	has_many :curso
	has_many :calendario


	validates :titulo, :descripcion, :duracion, :inicio, :contenido,  presence: true

	validates :precio, numericality: {greater_than_or_equal_to: 0.01}

	validates :titulo, uniqueness: true
	
	has_attached_file :imagen, styles: { medium: "730x730>", thumb: "100x100>" }
	#do_not_validate_attachment_file_type :image
  	validates_attachment_content_type :imagen, content_type: /\Aimage\/.*\z/
  

 def self.search(search)

    if search
      where('titulo like ? or descripcion like ?', "%#{search}%", "%#{search}%") 
    
    else
    Programa.all
    end
  end
end
