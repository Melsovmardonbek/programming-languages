import 'package:learning_programming_languages/data/models/category_model.dart';
import 'package:learning_programming_languages/data/models/entry_model.dart';
import 'package:learning_programming_languages/data/models/flutter_entity.dart';
import 'package:learning_programming_languages/data/models/languages_entity.dart';
import 'package:learning_programming_languages/data/services/localization/app_localization.dart';

List<LanguagesEntity> getLanguagesList() {
  return [
    FlutterEntity(
      title: AppLocalization.strings.flutter_title,
      description: AppLocalization.strings.flutter_description,
      image: "assets/images/flutter_image.svg",
      entries: [
        EntryModel(
            name: 'Developer Environment (Среда разработки)',
            categories: [
              CategoryModel(
                  name: 'IDE (интегрированная среда разработки)',
                  items: ['Android Studio', 'VS Code'],
                  description: AppLocalization.strings.ide),
              CategoryModel(
                  name: 'Flutter SDK (набор инструментов Flutter)',
                  items: ['Flutter CLI (командная строка Flutter)'],
                  description: AppLocalization.strings.flutter_sdk),
            ]),
        EntryModel(name: 'Dart Basics (Основы Dart)', categories: [
          CategoryModel(
              name: 'Variables (Переменные)',
              items: [
                'int (целое число)',
                'double (число с плавающей запятой)',
                'String (строка)',
                'Bool (логическое значение)',
                'List (Список/Лист)',
                'Map (словарь)',
                'Set (множество уникальных значений)',
                'Var (переменная)',
                'Dynamic (динамический тип)',
                'Const (константа)',
                'Final (неизменяемая переменная)',
                'Runes (руны)',
                'Symbol (символ)'
              ],
              description: AppLocalization.strings.variables),
          CategoryModel(
              name: 'Functions (Функции)',
              items: [
                'Regular (Регулярный)',
                'Void (пустой тип)',
                'Anonymous Functions (Анонимные функции)',
                'Arrow Functions (Стрелочные функции)',
                'Higher-Order Functions (Функции высшего порядка)',
                'Async Functions (Асинхронные функции)',
                'Generator Functions (Функции-генераторы)',
              ],
              description: AppLocalization.strings.functions),
          CategoryModel(
              name: 'Operators (Операторы)',
              items: [
                'Arithmetic Operators (Арифметические операторы)',
                'Equality and Relational Operators (Операторы равенства и отношения)',
                'Type Test Operators (Операторы проверки типа)',
                'Assignment Operators (Операторы присваивания)',
                'Logical Operators (Логические операторы)',
                'Bitwise Operators (Побитовые операторы)',
                'Conditional (Ternary) Operator (Условный (тернарный) оператор)',
                'Cascade Operator (Оператор каскадирования)',
                'Null-aware Operators (Операторы, учитывающие null)',
              ],
              description: AppLocalization.strings.operators),
          CategoryModel(
              name: 'Control flow Statements (Операторы управления)',
              items: [
                'if (Если)',
                'else (Иначе)',
                'else if (Иначе если)',
                'switch (оператор выбора)',
                'case (случай)',
                'default (значение по умолчанию)',
                'for (цикл для итерации)',
                'while (пока)',
                'do-while (выполнять пока)',
                'break (выход из цикла)',
                'continue (продолжить)',
                'return (возврат значения)',
                'try (попытка обработки)',
                'catch (перехват исключения)',
                'finally (блок завершения)',
                'throw (генерация исключения)',
                'rethrow (повторная генерация исключения)',
              ],
              description: AppLocalization.strings.control_flow_statements),
        ]),
        EntryModel(name: 'Widgets (Виджеты)', categories: [
          CategoryModel(
              name: 'Stateless Widgets (Статические виджеты без состояния)',
              items: [
                'Text (Текст)',
                'Icon (Иконка)',
                'Image (Изображение)',
                'Container (Контейнер)',
                'Column (Столбец)',
                'Row (Строка)',
                'Stack (Стек)',
                'Center (Центр)',
                'Padding (Отступ)',
                'Align (Выравнивание)',
                'Sized Box (Размеренный контейнер)',
                'Spacer (Пробел между)',
                'Divider (Разделитель)',
                'Placeholder (Заполнитель)',
                'Card (Карточка)'
              ],
              description: AppLocalization.strings.stateless_widgets),
          CategoryModel(
              name:
                  'Stateful Widgets(Динамические виджеты с сохранением состояния)',
              items: [
                'TextField (Текстовое поле)',
                'Checkbox (Флажок)',
                'Radio (Переключатель(радиокнопка))',
                'Switch(Переключатель(тумблер))',
                'Slider (Слайдер (ползунок))',
                'Form (Форма)',
                'AnimatedContainer (Анимированный контейнер)',
                'ListView (Прокручиваемый список)',
                'FutureBuilder',
                'StreamBuilder',
                'GestureDetector (Обнаружение жестов)',
                'Draggable (Перетаскиваемый элемент)',
                'BottomNavigationBar (Нижняя панель навигации)',
                'TabBar (Панель вкладок)'
              ],
              description: AppLocalization.strings.stateful_widgets),
          CategoryModel(
              name: 'Inherited Widgets (Унаследованные виджеты)',
              items: [
                'InheritedWidget (унаследованный виджет)',
                'InheritedModel (унаследованная модель)',
                'MediaQuery ( Информация о медиа-характеристиках устройства)',
                'Theme (тема)',
                'Navigator (навигатор)',
                'MaterialApp (Приложение на основе Material Design)',
                'CupertinoApp (Приложение на основе iOS-стиля (Cupertino))',
                'Provider (from the Provider package) (Провайдер из пакета Provider)',
                'InheritedNotifier (унаследованный уведомитель)',
                'StreamProvider (from the Provider package) (Stream-провайдер из пакета Provider)',
                'FutureProvider (from the Provider package) (Future-провайдер из пакета Provider)',
              ],
              description: AppLocalization.strings.inherited_widgets),
          CategoryModel(
              name: 'Responsive Widgets (Адаптивные виджеты)',
              items: [
                'MediaQuery ( Информация о медиа-характеристиках устройства)',
                'LayoutBuilder (строитель макета)',
                'Flexible (гибкий)',
                'Expanded (расширенный)',
                'AspectRatio (соотношение сторон)',
                'FittedBox (вписанный виджет)',
                'ResponsiveBuilder (from the responsive_builder package) (ResponsiveBuilder из пакета responsive_builder)',
                'ScreenUtil (from the flutter_screenutil package) (ScreenUtil из пакета flutter_screenutil)',
                'SizedBox (размеренный виджет)',
                'OrientationBuilder (строитель ориентации)',
                'GridView (сетчатый виджет)',
                'ListView (виджет списка)',
                'Wrap (обертка)',
                'Column (столбец)',
                'Row (строка)'
              ],
              description: AppLocalization.strings.responsive_widgets),
          CategoryModel(
              name: 'Styled Material Widgets (Стилизованные Material виджеты)',
              items: [
                'MaterialApp (Приложение на основе Material Design)',
                'Scaffold (каркас)',
                'AppBar (панель приложения)',
                'Drawer (выдвижное меню)',
                'BottomNavigationBar (нижняя навигационная панель)',
                'FloatingActionButton (плавающая кнопка действия)',
                'Card (карточка)',
                'Chip (чип)',
                'Dialog (диалог)',
                'SnackBar (снэк-бар)',
                'IconButton (кнопка с иконкой)',
                'Tooltip (подсказка)',
                'TextButton (кнопка с текстом)',
                'ElevatedButton (высокая кнопка)',
                'OutlinedButton (кнопка с обводкой)'
              ],
              description: AppLocalization.strings.styled_material_widgets),
          CategoryModel(
              name:
                  'Styled Cupertino widgets (Стилизованные Cupertino виджеты)',
              items: [
                'CupertinoApp (Приложение на основе iOS-стиля (Cupertino))',
                'CupertinoNavigationBar (Cupertino-навигационная панель)',
                'CupertinoTabBar (Cupertino-вкладки)',
                'CupertinoButton (Cupertino-кнопка)',
                'CupertinoSlider (Cupertino-слайдер)',
                'CupertinoSwitch (Cupertino-переключатель)',
                'CupertinoScrollbar (Cupertino-скроллбар)'
              ],
              description: AppLocalization.strings.styled_cupertino_widgets),
        ]),
        // Assets
        EntryModel(name: 'Assets (Ассеты)', categories: [
          CategoryModel(
            name: 'Fonts (шрифты)',
            items: [],
            description: AppLocalization.strings.fonts,
          ),
          CategoryModel(
            name: 'Images (Изображения)',
            items: [],
            description: AppLocalization.strings.images,
          ),
          CategoryModel(
            name: 'Other files (Другие файлы)',
            items: [],
            description: AppLocalization.strings.other_files,
          ),
        ]),

        EntryModel(name: 'Git (Гит)', categories: [
          CategoryModel(
            name: 'GitHub',
            items: [],
            description: AppLocalization.strings.github,
          ),
          CategoryModel(
            name: 'GitLab',
            items: [],
            description: AppLocalization.strings.gitlab,
          ),
          CategoryModel(
            name: 'BitBucket',
            items: [],
            description: AppLocalization.strings.bitBucket,
          ),
        ]),

        EntryModel(name: 'Packet Manager (Менеджер пакетов)', categories: [
          CategoryModel(
            name:
                'Pub Dev (Центральный репозиторий пакетов для Flutter и Dart)',
            items: [],
            description: AppLocalization.strings.pub_dev,
          ),
          CategoryModel(
            name:
                'Package stored on Git repo (пакет, хранящийся в репозитории Git)',
            items: [],
            description: AppLocalization.strings.package,
          ),
          CategoryModel(
            name: 'Local package (локальный пакет)',
            items: [],
            description: AppLocalization.strings.local_package,
          ),
        ]),

        EntryModel(
            name: 'Design Principle (Принцип проектирования)',
            categories: [
              CategoryModel(
                name: 'OOP (ООП)',
                items: [
                  'Classes and Objects (классы и объекты)',
                  'Constructors (конструкторы)',
                  'Instance Variables (переменные экземпляра)',
                  'Methods (методы)',
                  'Inheritance (наследование)',
                  'Polymorphism (полиморфизм)',
                  'Encapsulation (инкапсуляция)',
                  'Abstraction (абстракция)',
                  'Interfaces (интерфейсы)',
                  'Mixins (миксины)',
                  'Static Members (статические члены)',
                  'Getters and Setters (геттеры и сеттеры)',
                ],
                description: AppLocalization.strings.oop,
              ),
              CategoryModel(
                name: 'SOLID principles (Принципы SOLID)',
                items: [
                  'Single Responsibility Principle (SRP) (Принцип единственной ответственности)',
                  'Open/Closed Principle (OCP) (Принцип открытости/закрытости)',
                  'Liskov Substitution Principle (LSP) (Принцип подстановки Барбары Лисков)',
                  'Interface Segregation Principle (ISP) (Принцип разделения интерфейса)',
                  'Dependency Inversion Principle (DIP) (Принцип инверсии зависимостей)',
                ],
                description: AppLocalization.strings.solid,
              ),
              CategoryModel(
                name: 'Design pattern (Шаблон проектирования)',
                items: [
                  'Singleton (Одиночное использование)',
                  'Factory (фабричный конструктор)',
                  'Builder (Строитель)',
                  'Adapter (Адаптер)',
                  'Observer (Наблюдатель)',
                  'Repository (Репозиторий)',
                  'Model-View-ViewModel (MVVM) (Модель-Представление)',
                  'Provider (State Management)',
                  'Bloc (Business Logic Component)',
                  'Decorator (Декоратор)',
                  'Command (Команда)',
                  'Dependency Injection (DI) (Внедрение зависимостей)',
                  'Facade (Фасад)',
                  'Strategy (Стратегия)',
                ],
                description: AppLocalization.strings.design_pattern,
              ),
            ]),

        EntryModel(name: 'Storage (Хранилище)', categories: [
          CategoryModel(
            name: 'Shared Preferences',
            items: [],
            description: AppLocalization.strings.shared_preferences,
          ),
          CategoryModel(
            name: 'SQLite',
            items: [],
            description: AppLocalization.strings.sqlite,
          ),
          CategoryModel(
            name: 'Firebase',
            items: [],
            description: AppLocalization.strings.firebase,
          ),
        ]),

        EntryModel(name: 'API (Программный интерфейс приложения)', categories: [
          CategoryModel(
            name: 'REST',
            items: [],
            description: AppLocalization.strings.restApi,
          ),
          CategoryModel(
            name: 'GraphQL',
            items: [],
            description: AppLocalization.strings.graphQl,
          ),
          CategoryModel(
            name: 'Web Sockets',
            items: [],
            description: AppLocalization.strings.webSocket,
          ),
        ]),

        EntryModel(name: 'Advanced Dart (Продвинутый Dart)', categories: [
          CategoryModel(
            name: 'Core Package (Основной пакет)',
            items: [],
            description: AppLocalization.strings.core_packages,
          ),
          CategoryModel(
            name: 'Collections (Коллекции)',
            items: [],
            description: AppLocalization.strings.collections,
          ),
          CategoryModel(
            name: 'Lambdas (Лямбды)',
            items: [],
            description: AppLocalization.strings.lambdas,
          ),
          CategoryModel(
            name: 'Async/Await (Асинхронность/ожидание)',
            items: [],
            description: AppLocalization.strings.async,
          ),
          CategoryModel(
            name: 'Isolate (Изоляты)',
            items: [],
            description: AppLocalization.strings.isolate,
          ),
        ]),

        EntryModel(
            name: 'State Management (Управление состоянием)',
            categories: [
              CategoryModel(
                name: 'Provider',
                items: [],
                description: AppLocalization.strings.provider,
              ),
              CategoryModel(
                name: 'Bloc',
                items: [],
                description: AppLocalization.strings.bloc,
              ),
              CategoryModel(
                name: 'Redux',
                items: [],
                description: AppLocalization.strings.redux,
              ),
              CategoryModel(
                name: 'GetX',
                items: [],
                description: AppLocalization.strings.getX,
              ),
              CategoryModel(
                name: 'Riverpod',
                items: [],
                description: AppLocalization.strings.riverpod,
              ),
            ]),

        EntryModel(name: 'Authentication (Аутентификация)', categories: [
          CategoryModel(
            name: 'Firebase',
            items: [],
            description: AppLocalization.strings.authentication_firebase,
          ),
          CategoryModel(
            name: 'Custom',
            items: [],
            description: AppLocalization.strings.authentication_custom,
          ),
        ]),

        EntryModel(name: 'Push Notification (Push-уведомление)', categories: [
          CategoryModel(
            name: 'Firebase',
            items: [],
            description: AppLocalization.strings.push_notification_firebase,
          ),
          CategoryModel(
            name: 'Custom',
            items: [],
            description: AppLocalization.strings.push_notification_custom,
          ),
        ]),

        EntryModel(name: 'Testing (Тестирование)', categories: [
          CategoryModel(
            name: 'Unit Testing (Юнит тестирование)',
            items: [],
            description: AppLocalization.strings.unit_testing,
          ),
          CategoryModel(
            name: 'Widget Testing (Виджет-тест)',
            items: [],
            description: AppLocalization.strings.widget_testing,
          ),
          CategoryModel(
            name: 'Integration Testing (Интеграционное тестирование)',
            items: [],
            description: AppLocalization.strings.integration_testing,
          ),
        ]),

        EntryModel(name: 'Dev Tools (Инструменты разработчика)', categories: [
          CategoryModel(
            name: 'Flutter Inspector (Инструмент отладки)',
            items: [],
            description: AppLocalization.strings.flutter_inspector,
          ),
          CategoryModel(
            name: 'Flutter outline (Структурный обзор)',
            items: [],
            description: AppLocalization.strings.flutter_outline,
          ),
          CategoryModel(
            name: 'Memory Allocation (Распределение памяти)',
            items: [],
            description: AppLocalization.strings.memory_allocation,
          ),
        ]),

        EntryModel(
            name: 'Internationalization (Интернационализация)',
            categories: [
              CategoryModel(
                name: 'Localization Package',
                items: [
                  'intl',
                  'Easy_localization',
                ],
                description: AppLocalization.strings.localization_package,
              ),
              CategoryModel(
                name: 'Transition',
                items: [
                  'Google Sheet (Google таблицы)',
                  'Localizely',
                  'POEditor',
                ],
                description: AppLocalization.strings.transition,
              ),
            ]),

        EntryModel(name: 'Analytics (Аналитика)', categories: [
          CategoryModel(
            name: 'Google Analytics (Google аналитика)',
            items: [],
            description: AppLocalization.strings.google_analyics,
          ),
          CategoryModel(
            name: 'FireBase Analytics (Аналитика Firebase)',
            items: [],
            description: AppLocalization.strings.firebase_analytics,
          ),
        ]),

        EntryModel(
          name: 'Deployment (Развертывание)',
          categories: [
            CategoryModel(
              name: 'Play Store',
              items: [],
              description: AppLocalization.strings.play_store,
            ),
            CategoryModel(
              name: 'App Store',
              items: [],
              description: AppLocalization.strings.app_store,
            ),
            CategoryModel(
                name: 'Other',
                items: [],
                description: AppLocalization.strings.other)
          ],
        ),
      ],
    ),
    LanguagesEntity(
      title: AppLocalization.strings.React_title,
      description: AppLocalization.strings.React_desctiption,
      image: "assets/images/react_image.svg",
    ),
    LanguagesEntity(
      title: AppLocalization.strings.java_title,
      description: AppLocalization.strings.java_description,
      image: "assets/images/java_image.svg",
    ),
  ];
}
