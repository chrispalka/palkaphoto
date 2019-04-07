module ApplicationHelper
  def copyright_generator
     PalkaphotoViewTool::Renderer.copyright 'Chris Palka', 'All rights reserved'
  end
end
