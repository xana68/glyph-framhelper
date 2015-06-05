Para.components.draw do
  # Create a components section in the menu with a :menu identifier
  # You can translate the section title at: components.section.menu
  #
    section :menu do
      component :form_text,        :crud, model_type: FormTest
    end
    
    section :ressources do
     component :categories,        :crud, model_type: Category
     component :ressources,        :crud, model_type: Ressource
    end
end
