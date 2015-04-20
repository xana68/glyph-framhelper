class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  if %w(staging production).include?(Rails.env)
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from CanCan::AccessDenied, with: :render_not_found
  end

  meta_tags_defaults(
    title: 'GlyphApplicationHelper',
    description: '',
    image: '',
    keywords: '',
    site_name: '',
    type: 'website',
    site: '',
    card: ''
  )

  protected

  def render_not_found(exception = nil)
    Rails.logger.info(exception.message) if exception
    render status: 404, file: Rails.root.join(*%w(public 404.html)), layout: false
  end
end
