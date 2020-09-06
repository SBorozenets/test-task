module ApplicationHelper
  def safe_content_for(block_name, &block)
    if request && (request.format.symbol == :js || request.xhr?)
      yield
    else
      content_for block_name, &block
    end
  end
end
