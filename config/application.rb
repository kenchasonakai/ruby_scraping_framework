# gemの読み込み
require 'mechanize'
require 'pry-byebug'

# 読み込みパスの追加
$: << File.expand_path("../../", __FILE__)

# active_recordの設定読み込み
require 'config/active_record_setting.rb'

# modelの読み込み
Dir[File.expand_path("../../app/models", __FILE__) << '/*.rb'].each do | file |
  begin
    require file
  rescue NameError => e
    require file.gsub(/\/[^\/]+$/, "/#{e.name.to_s.underscore}.rb")
    redo
  end
end
