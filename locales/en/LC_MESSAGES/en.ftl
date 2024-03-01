-male = чоловіча
-female = жіноча

gender-names = { $item ->
        [male] { -male }
        [female] { -female }
        *[other] Не знайдено
    }

-yes = Так
-no = Ні

confirm = { $confirm ->
        [yes] { -yes }
        [no] { -no }
        *[other] Невідомо
    }

group-start =
    Всім привіт! 👋
    Я Собірала ДН і ось, що я вмію:
    ▪ вести календар днів народження та повідомляти про наближення ДН (у особистих повідомленнях);
    ▪ автоматично створювати чати для обговорення кожного майбутнього ДН, таємно від іменинників;
    ▪ оригінально вітати винуватців урочистостей у групі.

    Ну що почнемо? Просто шепніть мені в особистому повідомленні дату народження. Ваш вік залишиться у секреті 🤐

    <b>Для цього натисніть кнопку 👇, а потім «Старт».</b>

group-collect =
    Збір грошей на ДР <b>{ $collect ->
        [1] активовано
        *[0] деактивовано
    }</b>.

group-commands =
    Цю та інші команди потрібно надсилати мені <a href="{ $url }">особистим повідомленням</a> 🙂

group-migrate =
    Так-так... Хтось змінив налаштування групи та стара кнопка для додавання ДН до календаря групи працювати не буде 🕵️‍♂️
    Ось вам нова! 👇

    Тим, хто додав свою дату в календар, нічого робити не потрібно.

group-new-member =
    Ласкаво просимо, { $mention } 👋
    Я відстежую дні народження у цій групі, допомагаю готувати для іменинників сюрпризи та вітаю їх.

    Шепніть мені вашу дату народження в особистому повідомленні - натисніть кнопку 👇, а потім "Старт". Ваш вік залишиться у секреті.


private-start =
    <b>Hello { $fullname }! 👋</b>
    I track birthdays in group chats and help prepare birthday surprises.

    Add me to any group using the button below 👇

    Don't worry, I don't need to be an admin in the group and I can't read mail 🙈

private-help =
    Про Собіралу
    Я допомагаю учасникам колективів не забувати про дні народження один одного.

    Як я працюю
    1. Додайте мене до групового чату, де потрібно відстежувати дні народження. Ось зручне посилання для цього: t.me/sobiralaDNBot?startgroup=1
    Не турбуйтеся, мені не потрібно бути адміністратором у групі, і я не вмію читати листування 🙈

    2. Після додавання до групи я запропоную учасникам повідомити дати народження. Вони зможуть це зробити в особистому листуванні зі мною. Вік учасників залишиться у секреті.

    3. Дізнавшись дати народження, я почну:
    - нагадувати про майбутні ДН потай від іменинників (приватно, в особистих повідомленнях);
    - Вітати іменинників у групі.

    Переглядати календар днів народження групи та отримувати повідомлення про майбутні ДН можуть лише ті, хто вніс свою дату народження до календаря групи.

    Команди у цьому чаті
    /calendar — переглянути всі дні народження
    /reset - змінити дані про себе
    /removeme - видалити дані про себе

    Команди у груповому чаті
    /start — Вивести повідомлення з пропозицією додати ДН до календаря групи
    /collect — увімкнути чи вимкнути збори грошей (тільки для адміністраторів групи)

    Корисні посилання
    Допомога та FAQ - url/help
    Технічна підтримка - support_bot
    Новини проекту - @KulunchickDev

private-form-start =
    Вітання! Давайте додамо вашу дату народження до календаря групи <b>«{ $title }»</b>.

private-already-added =
    Вашу дату народження вже внесено до календаря групи «{ $title }». Жодних дій не потрібно.

private-form-birthday =
    Почнемо з дати народження. Рік народження тільки для мене, і я нікому не повідомлю ваш вік 🤐

private-form-gender =
    Вкажіть вашу стать, щоб я міг грамотно звертатися до вас.

private-form-confirm-birthday =
    Ви народилися { DATETIME($birthday, dateStyle: "long") } . Ваша стать — { gender-names }. Все вірно?

private-form-disallow-birthday =
    Почнемо спочатку. Коли ви народились? Оберіть дату

private-form-address =
    Чудово! Останнє питання. Для коректної роботи мені важливо розуміти, в якій тимчасовій зоні ви знаходитесь. Надішліть мені назву вашого міста.

private-form-disallow-address =
    Нічого спробуємо ще раз. Надішліть мені назву вашого міста та країну. Приклад: Крим, Україна.

private-form-confirm-address =
    Ви знаходитесь в «{ $address }». У вас зараз { $now }. Все вірно?

private-form-confirm =
    ✔️ Ваш день народження внесено до календаря групи «{ $title }»!
    За командою /calendar ви можете побачити усі дні народження групи.

    Тепер я буду:
    — приватно нагадувати вам про найближчі дні народження 🔔
    — запрошувати вас до секретних чатів для обговорення найближчих ДН 🤫
    { $is_admin ->
        [1] — вітати іменинників у групі о 9 ранку за їхньою тимчасовою зоною 🥳
            — повідомляти про деякі інші події, оскільки ви адмін у групі 😎
        *[other] — вітати іменинників у групі о 9 ранку за їхньою тимчасовою зоною 🥳
    }

    Підписуйтесь на канал @KulunchickDev, щоб стежити за оновленнями бота.

private-reset-user =
    ⚠️⚠️⚠️ Будьте уважні, у вас є лише одна спроба змінити дані.

    Наступного разу зможете змінити дані лише за кілька місяців.

    Ви впевнені, що хочете змінити дані про себе (дата народження, стать, годинна зона)? Якщо ні, просто проігноруйте це повідомлення.

private-remove-me =
    ⚠️ Увага: після видалення даних про себе ви перестанете отримувати нагадування про дні народження, що наближаються, і не зможете переглядати календар ДН.

    Виберіть, звідки потрібно видалити дані про ваше ДН:

private-remove-group =
    Вашу дату народження видалено з календаря групи «{ $title }». Тепер ви не отримуватимете повідомлення про майбутні дні народження в цій групі, а її учасники не дізнаються про ваше ДН 😿

private-remove-all =
    Вашу дату народження видалено з системи. Тепер ви не отримуватимете повідомлення про майбутні дні народження в жодній групі, а їх учасники не дізнаються про ваше ДН 😿

private-select-calendar =
    Оберіть групу:

private-calendar =
    🗓 Дні народження учасників групи «{ $title }» та їх годинникові зони:

buttons-invite-bot =
    Додати Собіралу до групи

buttons-reset-user =
    Змінити дані

buttons-remove-all =
    Видалити з усіх груп

error-group-notfound =
    ⛔️ Неможливо додати ДР до календаря. Схоже, ви та/або Собірап не перебуваєте у групі, в календар якої намагаєтесь додати свій ДР.
    Подивіться розділ допомоги, щоб зрозуміти, як усе працює — /help.

error-address-notfound =
    Не розумію, що то за місто. Спробуйте так: "Крим, Україна".

error-user-notin-group =
    Ви не перебуваєте в цьому чаті

error-bot-was-kicked =
    Собіралу було видалено із групи «{ $title }». На жаль, я більше не зможу інформувати про дні народження учасників цієї групи.

error-user-notfound =
    Даних про вас немає у системі. Видалення не потрібне.

error-access-denied =
    Цю команду може виконувати лише господар бота та адміни цієї групи.

warning-only-sender-ingroup =
    Ніхто, крім вас, поки не додав дату народження в календар цієї групи 🤷‍♂️
    Допоможіть решті це зробити. Адже ви вже знаєте, що це не складно 😉