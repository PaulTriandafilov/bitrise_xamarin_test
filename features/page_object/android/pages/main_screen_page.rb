require 'byebug'

class MainScreenPage < ApplicationPage
  STEP_PAUSE = 0.2

  trait(:trait) { "* title: 'Xamarin_bitrise'" }

  element(:first_arg) { "android.widget.EditText id:'etNum1'" }
  element(:second_arg) { "android.widget.EditText id:'etNum2'" }

  element(:add_button) { "android.widget.Button id:'btnAdd'" }
  element(:sub_button) { "android.widget.Button id:'btnSub'" }
  element(:mult_button) { "android.widget.Button id:'btnMult'" }
  element(:div_button) { "android.widget.Button id:'btnDiv'" }

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

  def fill_in_field_with(field, value)
    touch(send field.to_sym)
    wait_for_keyboard()
    keyboard_enter_text(value)
    sleep(STEP_PAUSE)
  end

  def click_button(btn)
    touch(send btn.to_sym)
  end

  def check_text(expected_text)
    if !element_exists("android.widget.TextView text:'#{expected_text}'")
      raise "No element found with mark or text: #{expected_text}"
    end
  end

end