ActiveAdmin.register Pedido do

	show do |pedido|

		panel 'Detalles del Participante' do	
			attributes_table_for pedido, :nombre, :email, :direccion, :ciudad, :pais, :created_at
		end
		
		panel 'Detalle de la inscripcion' do
			table_for(pedido.item_calendarios) do
				column 'Descripcion' do |item|
					if item.calendario.curso.nil?
						if item.calendario.programa.nil?
							item.calendario.seminario.titulo
						else
		  					item.calendario.programa.titulo
						end	
					else
		  				item.calendario.curso.titulo
					end	
				end

				column 'Tipo' do |item|
					if item.calendario.curso.nil?
						if item.calendario.programa.nil?
							Seminario
						else
		  					Programa
						end	
					else
		  				Curso
					end	
				end
				
				column 'Precio' do |item|
					number_to_currency item.total_precio
				end
			end
		end		
		panel 'Total de la orden' do
			number_to_currency pedido.total_precio
		end
	end					
end
