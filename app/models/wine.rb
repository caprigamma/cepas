class Wine < ApplicationRecord
    has_many :wine_strains, dependent: :destroy
    has_many :strains, through: :wine_strains
   
    accepts_nested_attributes_for :wine_strains, reject_if: :all_blank, allow_destroy: true #comando que indica que si esta en blanco no me deje pasar la informacion y que me permita destruir 

    def addStrainPercentage(percentages) #anadir porcentajes, sin tocar la tabla wine_strain
        percentages.each do |strain_id, percentage|
            if percentage != ""
                temp_strain = self.wine_strains.where(strain_id: strain_id.to_i).first
                temp_strain.percentage = percentage.to_i
                temp_strain.save
                #Estos controladores permitiran mostrar y asignar los ensamblajes cuando estemos guardando y slicitando la informacion de vuelta
            end
        end
end

def getPercentageByStrainId(strain_id)
    if self.wine_strains.where(strain_id: strain_id.to_i).first
        self.wine_strains.where(strain_id: strain_id.to_i).first.percentage
        #Busca los ensamblajes y los porcentajes que corresponden a cada vino a traves de cada tabla que se vera reflejada en el formulario _form.html.erb
        end
    end
end     