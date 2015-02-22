require "translates_to_french/version"

module TranslatesTo

  module TranslatesToFrench
    
    extend ActiveSupport::Concern
    
    included do
    end

    module ClassMethods

      def translates_to_french(*columns)
        include TranslatesTo::TranslatesToFrench::InstanceMethods
        columns.each do |column|
          define_method column do
            column_value column
          end
        end
      end
      
    end

    module InstanceMethods

      def column_value column
          if self[column_name_translated(column)]
           translated_value_if_available column
          else
             regular_value column
          end
      end    

      def translated_value_if_available column        
         if self[column_name_translated(column)].length > 0
            translated_value column
          else
            regular_value column
          end
      end

      def translated_value column
         self[column_name_translated(column)]
      end

      def regular_value column
         self[column]
      end

      def column_name_translated(name)
        if I18n.locale == 'fr' || I18n.locale == :fr
          column_name = "#{name}_fr"
        end
        self.class.column_names.include?(column_name) ? column_name.to_sym : "#{name}".to_sym
      end
       
    end

  end

end

ActiveRecord::Base.send :include, TranslatesTo::TranslatesToFrench