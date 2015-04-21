Para.components.draw do
  # Create a components section in the menu with a :menu identifier
  # You can translate the section title at: components.section.menu
  #

  section :menu do
    component :form_text,        :crud, model_type: FormTest
  end
  
  section :ressources do
  
   # Create a component of type :crud in the the section :menu, with the
   # identifier :pages, with the model 'Page' as the target type and
   # namespacing it's managed to resources to the component
   #
   # component :pages, :crud, model_type: 'Page', namespaced: true

   component :categories,        :crud, model_type: Category
   component :ressources,        :crud, model_type: Ressource
  end
end
