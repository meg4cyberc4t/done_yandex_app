# done_yandex_app
 Домашнее задание для Яндекс ШМР 2022 
 
### Пример и пара скриншотов:
<div>
 <img src="https://user-images.githubusercontent.com/66907532/183284560-74da5086-376e-4fc5-9ef8-f8388b1f1f9e.gif" height=700>
</div>
<div>
 <img src="https://user-images.githubusercontent.com/66907532/183284612-3da13d3d-5e85-4eda-a99f-363f2fd6a885.png" height=700>
 <img src="https://user-images.githubusercontent.com/66907532/183284620-93d3afd5-5f0c-4e79-935b-de9b34cbad64.png" height=700>
 <img src="https://user-images.githubusercontent.com/66907532/183284625-e55db3c7-c6fb-4feb-a367-f6b637adb4b1.png" height=700>
</div>
 
### Особенности реализации данного приложения:
- Для state management и консистентности данных между страницами используется BLoC. 
- Для взаимодействия с моделями данных используется freezed (в том числе и у States/Events блока).
- Взаимодействие с сервером и локальным хранилищем вынесено в отдельные слои, есть наследование от интерфейса, описывающие методы для взаимодействия.
- Для сетевых запросов используется dio.
- Для локального хранилища используется hive.
- Для DI используется самописный контейнер зависимостей (GlobalDependency), который передаётся через Provider. При инициализации показывается SplashScreen.
- Навигация вынесена в отдельный слой, используется singleton, что позволяет использовать её по всему приложению.
- Для интернализации используется intl.
- Подключены FirebaseCrashlytics и Firebase Remote Config.
- Логирование через Logging

- <b>Бонус от разработчика:</b> Добавлена вибрация устройства, при нажатии на "глазик" в главном экране или выполнении таска.


### Для установки:
https://github.com/meg4cyberc4t/done_yandex_app/releases/tag/f1
