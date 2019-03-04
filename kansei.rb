require 'mechanize'

  def detail(link)
    agent = Mechanize.new
    page = agent.get(link)
    elements = page.search('td')
    places = page.search('h2#h2_off_place')
    
    titles = page.search('h1')
    
    zikan = elements[19].inner_text
    basho = places.inner_text
    off = titles.inner_text
    tobu = link
    
    
    
    puts zikan
    puts basho
    puts off[0..22]
    puts tobu
    
  end


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
    elements = page.search('.offLink')
    
          links = []
        elements.each do |ele|
          num = ele.get_attribute('href')
          adr = 'https://www.tennisoff.net' + num
          links << adr
          end
    
        links.each do |link|
          puts detail(link)
        end
  
  end