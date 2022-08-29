# done_yandex_app
 Домашнее задание для Яндекс ШМР 2022 
 
### Для начала
В первую очередь хочу поблагодарить всех менторов, которые были на ША. Большое спасибо Александру Юрковскому, Дмитрию Золотову, Сергею Кольцову и Софье Тимохиной, которые направляли и помогали мне с данным репозиторием.
Понятное дело, он не идеален, но я постарался сделать его максимально согласно кретериям.
Разумеется большинство работы было в последний день, но зато приложение сделано с душой.

### Пример и пара скриншотов:
<div>
 <img src="https://user-images.githubusercontent.com/66907532/183284560-74da5086-376e-4fc5-9ef8-f8388b1f1f9e.gif" height=700>
</div>
<div>
 <img src="https://user-images.githubusercontent.com/66907532/183284612-3da13d3d-5e85-4eda-a99f-363f2fd6a885.png" height=700>
 <img src="https://user-images.githubusercontent.com/66907532/183284620-93d3afd5-5f0c-4e79-935b-de9b34cbad64.png" height=700>
 <img src="https://user-images.githubusercontent.com/66907532/183284625-e55db3c7-c6fb-4feb-a367-f6b637adb4b1.png" height=700>
 <img src="https://user-images.githubusercontent.com/66907532/187094230-e9e6352a-2727-4e46-a790-aa5208af054b.jpg" height=700>
 <img src="https://user-images.githubusercontent.com/66907532/187094233-dd75120c-7dd4-4ff6-abd3-7d642680dc0a.jpg" height=700>
</div>
 
### Особенности реализации данного приложения:
- Для state management используется BLoC 
- Для DI используется injectable + getIt
- Навигация через Navigator 2.0
- Для взаимодействия с моделями данных используется freezed (в том числе и у States/Events блока).
- Взаимодействие с сервером и локальным хранилищем вынесено в отдельные слои, есть наследование от интерфейса, описывающие методы для взаимодействия. 
- Взаимодействие между BLoC и DataSources происходит в Repository
- Для сетевых запросов используется dio.
- Для локального хранилища используется hive.
- Для интернализации используется intl.
- Релизована поддержка светлой и тёмной темы
- Есть переключение цвета через remote config
- Deeplinking
- Шильдик dev и profile на главной странице при разных сборках приложения.
- А так же много исправлений после первой части

- * Вибрация устройства, при нажатии на "глазик" в главном экране или выполнении таска.

### Что можно улучшить?
Замечать свои ошибки и зоны роста - хорошее качество.
- Добавить unit и widget тесты.
- Добавить аналитику.
- Использовать Shimmer и SliverAnimatedList для анимации загрузки.
- Публикация приложения через CD.

### Для установки:
https://github.com/meg4cyberc4t/done_yandex_app/releases/tag/f2


### Для теста диплинков:
```
adb shell am start -a android.intent.action.VIEW -c android.intent.category.BROWSABLE -d done_yandex_app://example/
```

