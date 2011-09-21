require 'rails/generators/resource_helpers'

module Rails
  class ScaffoldControllerGenerator < NamedBase
    include ResourceHelpers

    source_root File.expand_path('../templates', __FILE__)

    check_class_collision :suffix => "Controller"

    class_option :respond_to,
                 :type => :boolean,
                 :default => false,
                 :desc => "Use #respond_to in controller actions"

    class_option :orm,
                 :banner => "NAME",
                 :type => :string,
                 :required => true,
                 :desc => "ORM to generate the controller for"

     def create_controller_files
       controller_template = options['respond_to'] ? 'controller.rb' : 'basic_controller.rb'
       template controller_template, File.join('app/controllers', class_path, "#{controller_file_name}_controller.rb")
     end

     hook_for :template_engine, :in => :rails, :as => :controller
     hook_for :test_framework, :in => :rails, :as => :controller
  end  
end
