require_relative '../application_page'
require_relative 'pages/main_screen_page'

class CalcApp < ApplicationPage

  def main_screen
    @main_screen ||= page(MainScreenPage)
  end

end