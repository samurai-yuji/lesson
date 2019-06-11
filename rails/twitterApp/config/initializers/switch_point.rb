SwitchPoint.configure do |config|
  config.define_switch_point :user,
    readonly: :"#{Rails.env}_replica",
    writable: :"#{Rails.env}"
end
SwitchPoint.writable!(:user)
