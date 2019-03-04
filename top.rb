require 'mechanize'

agent = Mechanize.new
agent.get('https://www.tennisoff.net/login?done=%2F') do |page|

  mypage = page.form_with do |form|
    # ログインに必要な入力項目を設定していく
    # formオブジェクトが持っている変数名は入力項目(inputタグ)のname属性
    form.loginid = 'red-cow'
    form.passwd = 'kumanichi'
  end.submit
  
  page = agent.get("https://www.tennisoff.net/user/hostOffList")
#elements = page.search('span#off_date')

titles = page.search('.offLink')
#elements = page.search('.offLink')

#elements.each do |ele|
  #num = ele.get_attribute('href')
  #adr = 'https://www.tennisoff.net' + num
  #puts adr
  
#end
titles.each do |title|
 off = title.inner_text[-1..-10]
 puts off
end

end