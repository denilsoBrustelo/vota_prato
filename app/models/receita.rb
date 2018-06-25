class Receita < ApplicationRecord
	# Relacionamentos
	belongs_to :prato

	# Validacoes	
	validates_presence_of :prato_id
	validates_associated :prato

	validates_presence_of :conteudo, message: " - deve ser preenchido"
end
