class DatepickerInput < SimpleForm::Inputs::Base
  def input
   @builder.text_field(attribute_name, input_html_option) + \
   @builder.hidden_field(attribute_name, {:class => attribute_name.to_s + "-alt"})
  end
end