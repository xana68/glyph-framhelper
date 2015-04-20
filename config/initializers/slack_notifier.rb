module ExceptionNotifier
  class SlackNotifier
    def call(exception, options={})
      message = "An exception occurred on *#{Rails.application.class.parent_name} (#{Rails.env})*: ```#{exception.message}```"
      @notifier.ping message if valid?
    end
  end
end
