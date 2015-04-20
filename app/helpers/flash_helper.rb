module FlashHelper
  # Converts flash types to :success or :error to conform to what
  # twitter bootstrap can handle
  #
  def homogenize_flash_type type
    case type.to_sym
    when :notice then :success
    when :alert then :warning
    when :error then :danger
    else type
    end
  end

  def icon_class_for type
    case type
    when :success then "fa-check"
    when :error then "fa-warning"
    else "fa-exclamation-triangle"
    end
  end

  def display_flash
    # Get devise errors if present
    if respond_to?(:devise_error_messages!)
      flash[:alert] = devise_error_messages! if defined?(resource) && devise_error_messages! != ""
    end

    # Render empty string if no flash
    return "" if flash.empty?

    # Make a div.alert for each message and join the whole
    messages = flash.map do |type, message|
      flash.delete(type)
      content_tag :div, class: "alert alert-#{ homogenize_flash_type(type) } alert-dismissable" do
        buffer  = content_tag(:button, type: "button", class: "close", "data-dismiss" => "alert") do
          content_tag(:span, '&times;'.html_safe)
        end
        buffer +=  content_tag(:i, "", class: "fa #{ icon_class_for(type) } pull-left")
        buffer += content_tag(:p, message.html_safe)
      end
    end

    # Join the messages and make sure markup is correctly displayed
    messages.join.html_safe
  end

  # Allows adding a new message to the Flash hash in controllers by providing
  # a single type argument which will use translations to build the message.
  #
  # There are 2 ways of storing flash messages in translations :
  #
  #   - The first is to place translations under :
  #     flash.<controller>.<action>.<type>
  #     Ex: flash.tasks.create.success
  #
  #   - The second is to use a shared controller key :
  #     flash.<controller>.<action>.<type>
  #     Ex: flash.shared.create.success
  #
  # If no controller specific key exists, then the shared one will be picked up
  #
  # Translation options :
  #
  #   All options passed to the `#flash_message` helper will be forwarded to the
  #   `I18n::translate` call, except for the `:model` option that will be first
  #   converted to a string with .class.model_name.human, which will use
  #   default activerecord translations
  #
  # Example :
  #     # In TasksController#create :
  #     if @task.save
  #       flash_message(:success, model: @task)
  #       redirect_to tasks_path
  #     else
  #       flash_message(:error, model: @task)
  #       render 'new'
  #     end
  #
  def flash_message(type, options = {})
    controller_path = "flash.#{ params[:controller] }.#{ params[:action] }.#{ type }"
    shared_path = "flash.shared.#{ params[:action] }.#{ type }"

    options[:model] = options[:model].class.model_name.human if options[:model]
    options[:default] = I18n.t(shared_path, options)

    flash[type] = I18n.t(controller_path, options)
  end
end
