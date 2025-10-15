Yabeda.configure do
  group :on_school do
    counter :index_page_opened_total, comment: 'Сколько визитов на главную страницу'
    counter :courses_purchased_total, comment: 'Сколько курсов приобретено'
    counter :money_earned_total, comment: 'Всего денег'
    
    gauge :user_online, comment: 'Пользователей онлайн'
  end
end